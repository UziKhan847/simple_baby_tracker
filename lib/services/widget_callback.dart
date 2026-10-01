import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/services/notification.dart';
import 'package:simple_baby_tracker/services/timer_service.dart';
import 'package:simple_baby_tracker/services/widget_service.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:timezone/data/latest_all.dart' as tz;

/// Runs when a home-screen widget button is tapped.
///
/// This is called by home_widget's own `callbackDispatcher` in a headless
/// background engine — the app's `main()` never runs here. So everything
/// this path depends on that `main()` normally sets up (timezone data,
/// NotificationService) has to be initialised again right here, every time.
/// Without the notification init, stopping a timer from the widget would
/// leave its "timer running" notification stuck forever.
///
/// `@pragma('vm:entry-point')` stops Dart's AOT compiler from tree-shaking
/// this function out of release builds (nothing in the app calls it).
@pragma('vm:entry-point')
Future<void> widgetBackgroundCallback(Uri? uri) async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  await NotificationService.instance.init();

  final profiles = await Storage.loadProfiles();
  if (profiles.isEmpty) return; // widget tapped before the app was ever opened
  final babyId = await Storage.getActiveProfileId() ?? profiles.first.id;
  final settings = await Storage.loadSettings();
  final l = lookupAppLocalizations(Locale(settings.languageCode));

  await TimerService.instance.load(babyId);

  switch (uri?.host) {
    case 'diaper':
      await _save(
        babyId,
        TrackerEvent(type: 'diaper', time: DateTime.now(), data: {}),
      );
    case 'feed_toggle':
      await _toggleFeeding(babyId, l);
    case 'sleep_toggle':
      await _toggleSleep(babyId, l);
  }

  final data = await Storage.loadAll(babyId);
  await maybeRescheduleReminders(data);
  await WidgetService.refresh(babyId: babyId, data: data);
  TimerService.instance.stopTicking();
}

Future<void> _save(String babyId, TrackerEvent event) async {
  final data = await Storage.loadAll(babyId);
  data.putIfAbsent(dateKey(event.time), () => []).add(event);
  await Storage.saveAll(babyId, data);
}

/// Shown when the other kind of timer is already running — the tap does
/// nothing (so a misclick can't end a nap or a feed early), and says why.
Future<void> _toast(String message) async {
  try {
    await Fluttertoast.showToast(msg: message);
  } catch (e) {
    debugPrint('widget toast failed: $e');
  }
}

Future<void> _toggleFeeding(String babyId, AppLocalizations l) async {
  final active = TimerService.instance.active;
  if (active == null) {
    await TimerService.instance.startFeeding(babyId);
    return;
  }
  if (active.kind != TimerKind.feeding) {
    await _toast(l.widgetStopSleepFirst);
    return;
  }
  final result = await TimerService.instance.stop();
  if (result == null) return;
  final left = result.leftMinutes;
  final right = result.rightMinutes;
  // Same data shape FeedingForm saves for a breastfeed.
  await _save(
    babyId,
    TrackerEvent(
      type: 'feeding',
      time: result.startedAt,
      data: {
        'isBottle': false,
        'amountMl': 0,
        'durationMin': left + right,
        'side': left > 0 && right > 0 ? 'both' : (right > 0 ? 'right' : 'left'),
        'leftMin': left,
        'rightMin': right,
      },
    ),
  );
}

Future<void> _toggleSleep(String babyId, AppLocalizations l) async {
  final active = TimerService.instance.active;
  if (active == null) {
    await TimerService.instance.startSleep(babyId);
    return;
  }
  if (active.kind != TimerKind.sleep) {
    await _toast(l.widgetStopFeedFirst);
    return;
  }
  final result = await TimerService.instance.stop();
  if (result == null) return;
  final end = DateTime.now();
  // Same data shape SleepForm saves.
  await _save(
    babyId,
    TrackerEvent(
      type: 'sleep',
      time: result.startedAt,
      data: {
        'endTime': end.toIso8601String(),
        'durationMin': end.difference(result.startedAt).inMinutes,
        'notes': null,
      },
    ),
  );
}
