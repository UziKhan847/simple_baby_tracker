import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:timezone/timezone.dart' as tz;

const _kFeedingNotifId = 1001;
const _kDiaperNotifId = 1002;
const _kTimerNotifId = 1003;

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

/// A course's "next dose due" reminder is scheduled with an id derived from
/// its own id, offset well past the fixed feeding/diaper ids above so the
/// two never collide.
int medicationNotifId(String courseId) => 2000 + (courseId.hashCode & 0xFFFF);

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
      const android = AndroidInitializationSettings(
        '@drawable/ic_launcher_monochrome',
      );
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

      // The channel must exist before anything is scheduled on it, but
      // creating it needs the plugin to already be initialized — so this
      // has to come after `initialize`, not before it (the previous order).
      await _plugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >()
          ?.createNotificationChannel(_kChannel);
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
        final granted = await android.requestNotificationsPermission() ?? false;
        // Exact-alarm scheduling needs its own, separate permission on
        // Android 12+ (denied by default from Android 14 on). It isn't
        // required for a reminder to work — `_scheduleAt` falls back to
        // `inexactAllowWhileIdle` when it isn't granted — but asking here,
        // while the user is already saying yes to reminders, gets the more
        // precise timing without a second interruption later.
        try {
          await android.requestExactAlarmsPermission();
        } catch (e) {
          debugPrint('requestExactAlarmsPermission failed: $e');
        }
        return granted;
      }
    } catch (e) {
      debugPrint('requestPermissions failed: $e');
    }
    return false;
  }

  // ─── Scheduling ───────────────────────────────────────────────────────────

  /// Schedules the feeding reminder for [hours] after [lastFeedingTime]
  /// (falling back to now if there's no prior feeding logged yet) — so the
  /// reminder tracks the actual last feed instead of just the moment the
  /// setting was last touched.
  Future<void> scheduleFeedingReminder(
    int hours, {
    DateTime? lastFeedingTime,
  }) async {
    if (!_initialized) return;
    try {
      await _plugin.cancel(id: _kFeedingNotifId);
      if (hours <= 0) return;
      final base = lastFeedingTime ?? DateTime.now();
      await _scheduleAt(
        id: _kFeedingNotifId,
        title: 'Time to feed! 🍼',
        body: 'No feeding logged in the last ${hours}h.',
        when: base.add(Duration(hours: hours)),
      );
    } catch (e) {
      debugPrint('scheduleFeedingReminder failed: $e');
    }
  }

  Future<void> scheduleDiaperReminder(
    int hours, {
    DateTime? lastDiaperTime,
  }) async {
    if (!_initialized) return;
    try {
      await _plugin.cancel(id: _kDiaperNotifId);
      if (hours <= 0) return;
      final base = lastDiaperTime ?? DateTime.now();
      await _scheduleAt(
        id: _kDiaperNotifId,
        title: 'Diaper check! 👶',
        body: 'No diaper change logged in the last ${hours}h.',
        when: base.add(Duration(hours: hours)),
      );
    } catch (e) {
      debugPrint('scheduleDiaperReminder failed: $e');
    }
  }

  /// Schedules (or cancels, if [when] is null) a course's "next dose due"
  /// reminder.
  Future<void> scheduleMedicationReminder({
    required String courseId,
    required String name,
    DateTime? when,
  }) async {
    if (!_initialized) return;
    final id = medicationNotifId(courseId);
    try {
      await _plugin.cancel(id: id);
      if (when == null) return;
      await _scheduleAt(
        id: id,
        title: 'Dose due: $name 💊',
        body: 'It\'s time for the next dose of $name.',
        when: when,
      );
    } catch (e) {
      debugPrint('scheduleMedicationReminder failed: $e');
    }
  }

  Future<void> cancelMedicationReminder(String courseId) async {
    if (!_initialized) return;
    try {
      await _plugin.cancel(id: medicationNotifId(courseId));
    } catch (e) {
      debugPrint('cancelMedicationReminder failed: $e');
    }
  }

  Future<void> cancelAll() async {
    if (!_initialized) return;
    try {
      await _plugin.cancelAll();
    } catch (e) {
      debugPrint('cancelAll failed: $e');
    }
  }

  Future<void> cancelFeeding() async {
    if (!_initialized) return;
    try {
      await _plugin.cancel(id: _kFeedingNotifId);
    } catch (e) {
      debugPrint('cancelFeeding failed: $e');
    }
  }

  Future<void> cancelDiaper() async {
    if (!_initialized) return;
    try {
      await _plugin.cancel(id: _kDiaperNotifId);
    } catch (e) {
      debugPrint('cancelDiaper failed: $e');
    }
  }

  /// Shows (or updates) a persistent, low-priority notification with a
  /// live chronometer while a feeding/sleep timer is running on Home — so a
  /// parent can see it's still going, and how long, without reopening the
  /// app. `ongoing: true` keeps it from being swiped away by accident.
  Future<void> showTimerNotification({
    required String title,
    required DateTime startedAt,
  }) async {
    if (!_initialized) return;
    try {
      await _plugin.show(
        id: _kTimerNotifId,
        title: title,
        notificationDetails: NotificationDetails(
          android: AndroidNotificationDetails(
            _kChannel.id,
            _kChannel.name,
            channelDescription: _kChannel.description,
            ongoing: true,
            autoCancel: false,
            usesChronometer: true,
            when: startedAt.millisecondsSinceEpoch,
            showWhen: true,
            importance: Importance.low,
            priority: Priority.low,
            icon: '@drawable/ic_launcher_monochrome',
          ),
          iOS: const DarwinNotificationDetails(
            presentAlert: false,
            presentSound: false,
          ),
        ),
      );
    } catch (e) {
      debugPrint('showTimerNotification failed: $e');
    }
  }

  Future<void> cancelTimerNotification() async {
    if (!_initialized) return;
    try {
      await _plugin.cancel(id: _kTimerNotifId);
    } catch (e) {
      debugPrint('cancelTimerNotification failed: $e');
    }
  }

  Future<void> _scheduleAt({
    required int id,
    required String title,
    required String body,
    required DateTime when,
  }) async {
    // `tz.local` needs `initializeTimeZones()` to have run first (done once,
    // in `main()`) — otherwise this throws a LateInitializationError that,
    // before this fix, was being caught and silently discarded by every
    // caller above.
    final tzWhen = tz.TZDateTime.from(when, tz.local);

    var mode = AndroidScheduleMode.exactAllowWhileIdle;
    final android = _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >();
    if (android != null) {
      try {
        final canExact = await android.canScheduleExactNotifications();
        // Android 14+ denies SCHEDULE_EXACT_ALARM by default; scheduling
        // exactly anyway throws `exact_alarms_not_permitted`, which (like
        // the timezone crash above) was previously swallowed, so the
        // reminder just never appeared. Falling back to an inexact alarm
        // still delivers the reminder — just within a short OS-batched
        // window instead of to the second.
        if (canExact == false) mode = AndroidScheduleMode.inexactAllowWhileIdle;
      } catch (e) {
        debugPrint('canScheduleExactNotifications failed: $e');
      }
    }

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
          icon: '@drawable/ic_launcher_monochrome',
        ),
        iOS: const DarwinNotificationDetails(),
      ),
      androidScheduleMode: mode,
    );
  }

  // ─── Reschedule on app start ────────────────────────────────────────────

  /// Re-arms the feeding/diaper reminders (if enabled) against the active
  /// baby's most recently logged events. Without this, a reminder only ever
  /// (re)scheduled when its Settings toggle or slider was touched — so it
  /// silently stopped firing the moment the app process was killed and
  /// relaunched, since `zonedSchedule` calls don't survive that on their
  /// own without something re-issuing them.
  Future<void> rescheduleFromLatestEvents() async {
    final settings = await loadSettings();
    if (!settings.feedingEnabled && !settings.diaperEnabled) return;
    if (!await init()) return;

    final profiles = await Storage.loadProfiles();
    if (profiles.isEmpty) return;
    final babyId = await Storage.getActiveProfileId() ?? profiles.first.id;
    final data = await Storage.loadAll(babyId);

    if (settings.feedingEnabled) {
      await scheduleFeedingReminder(
        settings.feedingHours,
        lastFeedingTime: latestEventTime(data, 'feeding'),
      );
    }
    if (settings.diaperEnabled) {
      await scheduleDiaperReminder(
        settings.diaperHours,
        lastDiaperTime: latestEventTime(data, 'diaper'),
      );
    }
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

  Future<void> saveSettings(
    NotifSettings s, {
    DateTime? lastFeedingTime,
    DateTime? lastDiaperTime,
  }) async {
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
      await scheduleFeedingReminder(
        s.feedingHours,
        lastFeedingTime: lastFeedingTime,
      );
    } else {
      await cancelFeeding();
    }

    if (s.diaperEnabled) {
      await scheduleDiaperReminder(
        s.diaperHours,
        lastDiaperTime: lastDiaperTime,
      );
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

/// Re-anchors any *enabled* feeding/diaper reminder to the latest event now
/// in [data]. Called after saving or deleting a feeding/diaper entry so a
/// reminder means "N hours since the last one you actually logged", not "N
/// hours since you last touched the Settings toggle". A no-op (and cheap —
/// one SharedPreferences read) when neither reminder is enabled.
Future<void> maybeRescheduleReminders(
  Map<String, List<TrackerEvent>> data,
) async {
  final settings = await NotificationService.instance.loadSettings();
  if (!settings.feedingEnabled && !settings.diaperEnabled) return;
  if (!await NotificationService.instance.init()) return;

  if (settings.feedingEnabled) {
    await NotificationService.instance.scheduleFeedingReminder(
      settings.feedingHours,
      lastFeedingTime: latestEventTime(data, 'feeding'),
    );
  }
  if (settings.diaperEnabled) {
    await NotificationService.instance.scheduleDiaperReminder(
      settings.diaperHours,
      lastDiaperTime: latestEventTime(data, 'diaper'),
    );
  }
}

/// Finds the most recent event of [type] across every day in [data] — shared
/// by the reminder-rescheduling logic above and by the Home "since last"
/// strip, so both agree on what "last fed"/"last changed" means.
DateTime? latestEventTime(Map<String, List<TrackerEvent>> data, String type) {
  DateTime? latest;
  for (final events in data.values) {
    for (final e in events) {
      if (e.type != type) continue;
      if (latest == null || e.time.isAfter(latest)) latest = e.time;
    }
  }
  return latest;
}
