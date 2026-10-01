import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_baby_tracker/pages/day.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

/// Talks to QuickAddActivity.kt — the see-through Android activity behind
/// the home-screen widget's "+" button.
class QuickAddChannel {
  static const _channel = MethodChannel('babytracker/quick_add');

  /// Closes the popup, back to the home screen.
  static Future<void> close() => SystemNavigator.pop();

  /// Swaps the popup for the full app.
  static Future<void> openApp() => _channel.invokeMethod('openApp');
}

/// Root screen of the quick-add popup (started by `quickAddMain()` in
/// main.dart, in its own Flutter engine).
///
/// Shows today's [DayPage] in its quick-add mode: no page of its own, just
/// the add-entry menu over the home screen, then the chosen form. Saving goes
/// through the same code as the app, so reminders and the widget update too.
class QuickAddScreen extends StatefulWidget {
  const QuickAddScreen({super.key});

  @override
  State<QuickAddScreen> createState() => _QuickAddScreenState();
}

class _QuickAddScreenState extends State<QuickAddScreen> {
  String? _babyId;
  String? _babyName;
  Map<String, List<TrackerEvent>>? _data;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final profiles = await Storage.loadProfiles();
    // Widget added before the app was ever opened — nothing to add to yet.
    if (profiles.isEmpty) return QuickAddChannel.openApp();
    final activeId = await Storage.getActiveProfileId();
    final profile = profiles.firstWhere(
      (p) => p.id == activeId,
      orElse: () => profiles.first,
    );
    final data = await Storage.loadAll(profile.id);
    if (!mounted) return;
    setState(() {
      _babyId = profile.id;
      _babyName = profile.name;
      _data = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_data == null) {
      return const Scaffold(backgroundColor: Colors.transparent);
    }
    return DayPage(
      date: DateTime.now(),
      babyId: _babyId!,
      data: _data!,
      onDataChanged: (_) {},
      autoOpenAddSheet: true,
      quickAdd: true,
      babyName: _babyName,
    );
  }
}
