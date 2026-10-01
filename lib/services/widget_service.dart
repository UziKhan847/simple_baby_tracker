import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:home_widget/home_widget.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/services/notification.dart';
import 'package:simple_baby_tracker/services/timer_service.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

/// Keeps the Android home-screen widget's text in sync with the same data
/// Home's "since last" strip and timer card show.
///
/// Called from the foreground app after anything that changes what the
/// widget shows (saving/deleting entries, starting/stopping timers,
/// switching baby) and from the widget's own background callback after a
/// button tap — both go through here so they never disagree.
///
/// The keys written here are read by
/// android/.../BabyTrackerWidgetProvider.kt — keep the two in sync.
class WidgetService {
  WidgetService._();

  static const _androidName = 'BabyTrackerWidgetProvider';

  static Future<void> refresh({
    required String babyId,
    required Map<String, List<TrackerEvent>> data,
  }) async {
    // The widget only exists on Android; this also keeps tests and Linux
    // desktop runs from hitting a missing platform channel.
    if (kIsWeb || defaultTargetPlatform != TargetPlatform.android) return;
    try {
      final profiles = await Storage.loadProfiles();
      final profile = profiles.where((p) => p.id == babyId).firstOrNull;
      final settings = await Storage.loadSettings();
      final l = lookupAppLocalizations(Locale(settings.languageCode));

      final timer = TimerService.instance.active;
      final feeding = timer?.kind == TimerKind.feeding;
      final sleeping = timer?.kind == TimerKind.sleep;

      final lastFeed = latestEventTime(data, 'feeding');
      final lastDiaper = latestEventTime(data, 'diaper');
      final lastSleepEnd = _lastSleepEnd(data);

      final values = <String, String>{
        'baby_name': profile?.name ?? 'Baby',
        'baby_initials': profile?.initials ?? 'B',
        'feed_status': feeding
            ? l.widgetFeedingFor(formatDuration(timer!.totalElapsed))
            : lastFeed == null
            ? l.widgetNoFeedsYet
            : l.widgetFedAgo(timeAgo(lastFeed, l)),
        'diaper_status': lastDiaper == null
            ? l.widgetNoDiapersYet
            : l.widgetChangedAgo(timeAgo(lastDiaper, l)),
        'sleep_status': sleeping
            ? l.widgetAsleepFor(formatDuration(timer!.totalElapsed))
            : lastSleepEnd == null
            ? '—'
            : l.widgetAwakeFor(timeAgo(lastSleepEnd, l)),
        'feed_button': feeding ? l.widgetStopFeed : l.widgetFeed,
        'diaper_button': l.widgetDiaper,
        'sleep_button': sleeping ? l.widgetWakeUp : l.widgetSleep,
      };
      for (final e in values.entries) {
        await HomeWidget.saveWidgetData<String>(e.key, e.value);
      }
      await HomeWidget.updateWidget(androidName: _androidName);
    } catch (e) {
      debugPrint('WidgetService.refresh failed: $e');
    }
  }

  /// Same as [refresh], loading the data for the active baby itself.
  static Future<void> refreshActive() async {
    if (kIsWeb || defaultTargetPlatform != TargetPlatform.android) return;
    final profiles = await Storage.loadProfiles();
    if (profiles.isEmpty) return;
    final babyId = await Storage.getActiveProfileId() ?? profiles.first.id;
    await refresh(babyId: babyId, data: await Storage.loadAll(babyId));
  }

  /// Mirrors `_HomePageState._lastSleepEnd` in homepage.dart.
  static DateTime? _lastSleepEnd(Map<String, List<TrackerEvent>> data) {
    DateTime? latest;
    for (final events in data.values) {
      for (final e in events) {
        if (e.type != 'sleep') continue;
        final end = DateTime.tryParse(e.data['endTime'] as String? ?? '');
        if (end == null) continue;
        if (latest == null || end.isAfter(latest)) latest = end;
      }
    }
    return latest;
  }
}
