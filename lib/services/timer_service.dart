import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_baby_tracker/services/notification.dart';

enum TimerKind { feeding, sleep }

/// A breastfeeding or sleep timer running "live" — started on Home, ticking
/// in the background, and surviving the app being closed and reopened
/// (persisted to SharedPreferences, not just in-memory state) because that's
/// exactly when a parent is most likely to background the app: mid-feed,
/// to answer a text or deal with a second kid.
class ActiveTimer {
  final TimerKind kind;
  final DateTime startedAt;

  /// Feeding only: which side is running right now.
  final String side;

  /// Feeding only: whole minutes already banked for each side from earlier
  /// switches in this same session — [startedAt] only covers the side
  /// currently running.
  final int leftMinutes;
  final int rightMinutes;

  const ActiveTimer({
    required this.kind,
    required this.startedAt,
    this.side = 'left',
    this.leftMinutes = 0,
    this.rightMinutes = 0,
  });

  Duration get currentSegmentElapsed => DateTime.now().difference(startedAt);

  /// Total elapsed since the timer was first started, across every side
  /// switch — what a running Home card shows.
  Duration get totalElapsed =>
      Duration(minutes: leftMinutes + rightMinutes) + currentSegmentElapsed;

  Map<String, dynamic> toJson() => {
    'kind': kind.name,
    'startedAt': startedAt.toIso8601String(),
    'side': side,
    'leftMinutes': leftMinutes,
    'rightMinutes': rightMinutes,
  };

  static ActiveTimer fromJson(Map<String, dynamic> j) => ActiveTimer(
    kind: TimerKind.values.byName(j['kind'] as String),
    startedAt: DateTime.parse(j['startedAt'] as String),
    side: j['side'] as String? ?? 'left',
    leftMinutes: j['leftMinutes'] as int? ?? 0,
    rightMinutes: j['rightMinutes'] as int? ?? 0,
  );

  ActiveTimer copyWith({
    DateTime? startedAt,
    String? side,
    int? leftMinutes,
    int? rightMinutes,
  }) => ActiveTimer(
    kind: kind,
    startedAt: startedAt ?? this.startedAt,
    side: side ?? this.side,
    leftMinutes: leftMinutes ?? this.leftMinutes,
    rightMinutes: rightMinutes ?? this.rightMinutes,
  );
}

/// A [ChangeNotifier] singleton so the Home page (wherever it's mounted)
/// re-renders on every tick, without threading timer state through
/// AppShell's props alongside the day-to-day event data.
class TimerService extends ChangeNotifier {
  TimerService._();
  static final instance = TimerService._();

  ActiveTimer? _active;
  String? _babyId;
  Timer? _ticker;

  ActiveTimer? get active => _active;

  String _prefsKey(String babyId) => 'active_timer_$babyId';

  /// Loads any timer left running for [babyId] (e.g. from before the app was
  /// killed) and starts the 1s UI tick if one is found.
  Future<void> load(String babyId) async {
    _babyId = babyId;
    final sp = await SharedPreferences.getInstance();
    final raw = sp.getString(_prefsKey(babyId));
    _active = raw == null
        ? null
        : ActiveTimer.fromJson(json.decode(raw) as Map<String, dynamic>);
    _restartTicker();
    if (_active case final a?) {
      unawaited(
        _showNotification(
          a.kind == TimerKind.feeding
              ? 'Feeding timer running 🍼'
              : 'Sleep timer running 😴',
          a.startedAt,
        ),
      );
    }
    notifyListeners();
  }

  void _restartTicker() {
    _ticker?.cancel();
    _ticker = _active == null
        ? null
        : Timer.periodic(const Duration(seconds: 1), (_) => notifyListeners());
  }

  Future<void> _persist() async {
    if (_babyId == null) return;
    final sp = await SharedPreferences.getInstance();
    if (_active == null) {
      await sp.remove(_prefsKey(_babyId!));
    } else {
      await sp.setString(_prefsKey(_babyId!), json.encode(_active!.toJson()));
    }
  }

  Future<void> _showNotification(String title, DateTime startedAt) async {
    if (await NotificationService.instance.init()) {
      await NotificationService.instance.showTimerNotification(
        title: title,
        startedAt: startedAt,
      );
    }
  }

  Future<void> startFeeding(String babyId, {String side = 'left'}) async {
    _babyId = babyId;
    final startedAt = DateTime.now();
    _active = ActiveTimer(kind: TimerKind.feeding, startedAt: startedAt, side: side);
    _restartTicker();
    await _persist();
    unawaited(_showNotification('Feeding timer running 🍼', startedAt));
    notifyListeners();
  }

  Future<void> startSleep(String babyId) async {
    _babyId = babyId;
    final startedAt = DateTime.now();
    _active = ActiveTimer(kind: TimerKind.sleep, startedAt: startedAt);
    _restartTicker();
    await _persist();
    unawaited(_showNotification('Sleep timer running 😴', startedAt));
    notifyListeners();
  }

  /// Banks the current segment's minutes and starts the other side running.
  Future<void> switchSide() async {
    final a = _active;
    if (a == null || a.kind != TimerKind.feeding) return;
    final elapsedMin = a.currentSegmentElapsed.inMinutes;
    final nextSide = a.side == 'left' ? 'right' : 'left';
    _active = a.copyWith(
      startedAt: DateTime.now(),
      side: nextSide,
      leftMinutes: a.side == 'left' ? a.leftMinutes + elapsedMin : a.leftMinutes,
      rightMinutes: a.side == 'right' ? a.rightMinutes + elapsedMin : a.rightMinutes,
    );
    await _persist();
    notifyListeners();
  }

  /// Ends the timer and returns its final tally, so the caller can open the
  /// matching form pre-filled. Does not itself save a [TrackerEvent] — the
  /// form still owns the actual save (and lets the parent adjust the time
  /// before it's logged).
  Future<ActiveTimer?> stop() async {
    final a = _active;
    if (a == null) return null;
    _active = null;
    _ticker?.cancel();
    _ticker = null;
    await _persist();
    unawaited(NotificationService.instance.cancelTimerNotification());
    notifyListeners();
    if (a.kind != TimerKind.feeding) return a;
    final elapsedMin = a.currentSegmentElapsed.inMinutes;
    return a.copyWith(
      leftMinutes: a.side == 'left' ? a.leftMinutes + elapsedMin : a.leftMinutes,
      rightMinutes: a.side == 'right' ? a.rightMinutes + elapsedMin : a.rightMinutes,
    );
  }

  /// Cancels the timer without logging anything.
  Future<void> discard() async {
    _active = null;
    _ticker?.cancel();
    _ticker = null;
    await _persist();
    unawaited(NotificationService.instance.cancelTimerNotification());
    notifyListeners();
  }

  @override
  void dispose() {
    _ticker?.cancel();
    super.dispose();
  }
}
