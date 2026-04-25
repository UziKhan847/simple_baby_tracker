import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/timezone.dart' as tz;

const _kFeedingNotifId = 1001;
const _kDiaperNotifId = 1002;

const _kFeedingEnabled = 'notif_feeding_enabled';
const _kFeedingHours = 'notif_feeding_hours';
const _kDiaperEnabled = 'notif_diaper_enabled';
const _kDiaperHours = 'notif_diaper_hours';

const _kChannel = AndroidNotificationChannel(
  'baby_tracker_reminders',
  'Baby Tracker Reminders',
  description: 'Feeding and diaper change reminders',
  importance: Importance.high,
);

class NotificationService {
  NotificationService._();
  static final instance = NotificationService._();

  final _plugin = FlutterLocalNotificationsPlugin();
  bool _initialized = false;

  // ─── Init ─────────────────────────────────────────────────────────────────

  Future<bool> init() async {
    if (_initialized) return true;
    // flutter_local_notifications is not supported on Linux desktop.
    // Guard silently so the rest of the app is unaffected.
    if (defaultTargetPlatform == TargetPlatform.linux) return false;

    try {
      await _plugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >()
          ?.createNotificationChannel(_kChannel);

      const android = AndroidInitializationSettings('@mipmap/ic_launcher');
      const ios = DarwinInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestSoundPermission: false,
      );
      const linux = LinuxInitializationSettings(defaultActionName: 'Open');

      _initialized =
          await _plugin.initialize(
            settings: const InitializationSettings(
              android: android,
              iOS: ios,
              linux: linux,
            ),
          ) ??
          false;
    } catch (e) {
      debugPrint('NotificationService.init failed: $e');
      _initialized = false;
    }

    return _initialized;
  }

  Future<bool> requestPermissions() async {
    if (!_initialized) return false;
    try {
      final ios = _plugin
          .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin
          >();
      final android = _plugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >();
      if (ios != null) {
        return await ios.requestPermissions(
              alert: true,
              badge: true,
              sound: true,
            ) ??
            false;
      }
      if (android != null) {
        return await android.requestNotificationsPermission() ?? false;
      }
    } catch (e) {
      debugPrint('requestPermissions failed: $e');
    }
    return false;
  }

  // ─── Scheduling ───────────────────────────────────────────────────────────

  Future<void> scheduleFeedingReminder(int hoursFromNow) async {
    if (!_initialized) return;
    try {
      await _plugin.cancel(id: _kFeedingNotifId);
      if (hoursFromNow <= 0) return;
      await _scheduleAt(
        id: _kFeedingNotifId,
        title: 'Time to feed! 🍼',
        body: 'No feeding logged in the last ${hoursFromNow}h.',
        when: DateTime.now().add(Duration(hours: hoursFromNow)),
      );
    } catch (e) {
      debugPrint('scheduleFeedingReminder failed: $e');
    }
  }

  Future<void> scheduleDiaperReminder(int hoursFromNow) async {
    if (!_initialized) return;
    try {
      await _plugin.cancel(id: _kDiaperNotifId);
      if (hoursFromNow <= 0) return;
      await _scheduleAt(
        id: _kDiaperNotifId,
        title: 'Diaper check! 👶',
        body: 'No diaper change logged in the last ${hoursFromNow}h.',
        when: DateTime.now().add(Duration(hours: hoursFromNow)),
      );
    } catch (e) {
      debugPrint('scheduleDiaperReminder failed: $e');
    }
  }

  Future<void> cancelAll() async {
    if (!_initialized) return;
    try {
      await _plugin.cancelAll();
    } catch (_) {}
  }

  Future<void> cancelFeeding() async {
    if (!_initialized) return;
    try {
      await _plugin.cancel(id: _kFeedingNotifId);
    } catch (_) {}
  }

  Future<void> cancelDiaper() async {
    if (!_initialized) return;
    try {
      await _plugin.cancel(id: _kDiaperNotifId);
    } catch (_) {}
  }

  Future<void> _scheduleAt({
    required int id,
    required String title,
    required String body,
    required DateTime when,
  }) async {
    final tzWhen = tz.TZDateTime.from(when, tz.local);
    await _plugin.zonedSchedule(
      id: id,
      title: title,
      body: body,
      scheduledDate: tzWhen,
      notificationDetails: NotificationDetails(
        android: AndroidNotificationDetails(
          _kChannel.id,
          _kChannel.name,
          channelDescription: _kChannel.description,
          importance: Importance.high,
          priority: Priority.high,
          icon: '@mipmap/ic_launcher',
        ),
        iOS: const DarwinNotificationDetails(),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }

  // ─── Persisted settings ───────────────────────────────────────────────────

  Future<NotifSettings> loadSettings() async {
    try {
      final sp = await SharedPreferences.getInstance();
      return NotifSettings(
        feedingEnabled: sp.getBool(_kFeedingEnabled) ?? false,
        feedingHours: sp.getInt(_kFeedingHours) ?? 3,
        diaperEnabled: sp.getBool(_kDiaperEnabled) ?? false,
        diaperHours: sp.getInt(_kDiaperHours) ?? 4,
      );
    } catch (e) {
      return const NotifSettings();
    }
  }

  Future<void> saveSettings(NotifSettings s) async {
    try {
      final sp = await SharedPreferences.getInstance();
      await sp.setBool(_kFeedingEnabled, s.feedingEnabled);
      await sp.setInt(_kFeedingHours, s.feedingHours);
      await sp.setBool(_kDiaperEnabled, s.diaperEnabled);
      await sp.setInt(_kDiaperHours, s.diaperHours);
    } catch (e) {
      debugPrint('saveSettings failed: $e');
    }

    if (s.feedingEnabled) {
      await scheduleFeedingReminder(s.feedingHours);
    } else {
      await cancelFeeding();
    }

    if (s.diaperEnabled) {
      await scheduleDiaperReminder(s.diaperHours);
    } else {
      await cancelDiaper();
    }
  }
}

// ─── Settings model ───────────────────────────────────────────────────────

class NotifSettings {
  final bool feedingEnabled;
  final int feedingHours;
  final bool diaperEnabled;
  final int diaperHours;

  const NotifSettings({
    this.feedingEnabled = false,
    this.feedingHours = 3,
    this.diaperEnabled = false,
    this.diaperHours = 4,
  });

  NotifSettings copyWith({
    bool? feedingEnabled,
    int? feedingHours,
    bool? diaperEnabled,
    int? diaperHours,
  }) => NotifSettings(
    feedingEnabled: feedingEnabled ?? this.feedingEnabled,
    feedingHours: feedingHours ?? this.feedingHours,
    diaperEnabled: diaperEnabled ?? this.diaperEnabled,
    diaperHours: diaperHours ?? this.diaperHours,
  );
}
