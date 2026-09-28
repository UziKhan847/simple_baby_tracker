import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_baby_tracker/pages/day.dart';
import 'package:simple_baby_tracker/extensions.dart';
import 'package:simple_baby_tracker/forms/feeding.dart';
import 'package:simple_baby_tracker/forms/sleep.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/models/medication_course.dart';
import 'package:simple_baby_tracker/pages/medications.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/services/medication_stats.dart';
import 'package:simple_baby_tracker/services/timer_service.dart';
import 'package:simple_baby_tracker/stat_card.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/gradient_pill_button.dart';
import 'package:simple_baby_tracker/widgets/section_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.babyId,
    required this.data,
    required this.onDataChanged,
  });

  final String babyId;
  final Map<String, List<TrackerEvent>> data;
  final void Function(Map<String, List<TrackerEvent>>) onDataChanged;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DateTime> _visibleDates = [];
  List<MedicationCourse> _activeCourses = [];

  @override
  void initState() {
    super.initState();
    _syncDates();
    _ensureTodayExists();
    TimerService.instance.load(widget.babyId);
    TimerService.instance.addListener(_onTimerChanged);
    _loadMedicationCourses();
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.data != widget.data || oldWidget.babyId != widget.babyId) {
      _syncDates();
    }
    if (oldWidget.babyId != widget.babyId) {
      TimerService.instance.load(widget.babyId);
      _loadMedicationCourses();
    }
  }

  @override
  void dispose() {
    TimerService.instance.removeListener(_onTimerChanged);
    super.dispose();
  }

  // The timer ticks once a second via TimerService's own internal Timer;
  // this just re-renders Home so the running-timer card's elapsed time
  // (and the "asleep for" strip entry, when a sleep timer is active) stay
  // live without Home managing a Timer of its own.
  void _onTimerChanged() {
    if (mounted) setState(() {});
  }

  Future<void> _loadMedicationCourses() async {
    final courses = await Storage.loadMedicationCourses(widget.babyId);
    if (mounted) {
      setState(() => _activeCourses = courses.where((c) => c.isActive).toList());
    }
  }

  void _syncDates() {
    _visibleDates = widget.data.keys.map(dateFromKey).toList()
      ..sort((a, b) => b.compareTo(a));
  }

  /// Makes sure today's key exists in memory so the "today" hero card has
  /// something to point at, without writing an empty day to disk on every
  /// launch — real persistence happens once the first event is actually
  /// saved for the day (an empty placeholder day carries no information
  /// worth a write, and would otherwise cost a full re-encode of every
  /// day's events on each app start).
  void _ensureTodayExists() {
    final key = dateKey(DateTime.now());
    if (widget.data.containsKey(key)) return;
    final updated = Map<String, List<TrackerEvent>>.from(widget.data)
      ..[key] = [];
    // Deferred to after this frame: this runs from initState, which runs
    // synchronously while AppShell's IndexedStack is still being built —
    // calling `widget.onDataChanged` (an AppShell setState) immediately
    // would be a setState-during-build, which the framework rejects.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) widget.onDataChanged(updated);
    });
  }

  Future<void> _addTileForDate({DateTime? initial}) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: initial ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (picked == null || !mounted) return;

    final dateOnly = DateTime(picked.year, picked.month, picked.day);
    final key = dateKey(dateOnly);

    // Create the (empty) day if it doesn't exist yet; if it does, this is
    // just picking a day to jump to. Either way land the parent straight in
    // it — previously, picking a date that already had entries silently did
    // nothing, which looked broken, and creating a new day left the parent
    // to go find it themselves in the list below instead of opening it.
    var data = widget.data;
    if (!data.containsKey(key)) {
      data = Map<String, List<TrackerEvent>>.from(data)..[key] = [];
      await Storage.saveAll(widget.babyId, data);
      widget.onDataChanged(data);
    }
    if (!mounted) return;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DayPage(
          date: dateOnly,
          babyId: widget.babyId,
          data: data,
          onDataChanged: widget.onDataChanged,
        ),
      ),
    );
  }

  Future<void> _removeTile(DateTime d) async {
    final key = dateKey(d);
    final updated = Map<String, List<TrackerEvent>>.from(widget.data)
      ..remove(key);
    await Storage.saveAll(widget.babyId, updated);
    widget.onDataChanged(updated);
  }

  int _count(String key) => widget.data[key]?.length ?? 0;

  int _totalFeedsToday() {
    final today = dateKey(DateTime.now());
    return widget.data[today]?.where((e) => e.type == 'feeding').length ?? 0;
  }

  int _totalDiapersToday() {
    final today = dateKey(DateTime.now());
    return widget.data[today]?.where((e) => e.type == 'diaper').length ?? 0;
  }

  int _totalSleepTodayMinutes() {
    final today = dateKey(DateTime.now());
    return widget.data[today]
            ?.where((e) => e.type == 'sleep')
            .fold<int>(
              0,
              (s, e) => s + ((e.data['durationMin'] as num?)?.toInt() ?? 0),
            ) ??
        0;
  }

  String _sleepLabel(int minutes) {
    if (minutes == 0) return '0';
    final h = minutes ~/ 60;
    final m = minutes % 60;
    if (h == 0) return '${m}m';
    if (m == 0) return '${h}h';
    return '${h}h ${m}m';
  }

  // ─── "Since last" strip ───────────────────────────────────────────────────

  TrackerEvent? _latestEventOfType(String type) {
    TrackerEvent? latest;
    for (final events in widget.data.values) {
      for (final e in events) {
        if (e.type != type) continue;
        if (latest == null || e.time.isAfter(latest.time)) latest = e;
      }
    }
    return latest;
  }

  /// The end time of the most recently logged sleep — "awake for" counts
  /// from here when no sleep timer is currently running.
  DateTime? _lastSleepEnd() {
    DateTime? latest;
    for (final events in widget.data.values) {
      for (final e in events) {
        if (e.type != 'sleep') continue;
        final end = DateTime.tryParse(e.data['endTime'] as String? ?? '');
        if (end == null) continue;
        if (latest == null || end.isAfter(latest)) latest = end;
      }
    }
    return latest;
  }

  /// The active course whose next dose is soonest (or most overdue) — the
  /// one worth a parent's attention on Home, rather than listing every
  /// course's countdown.
  ({MedicationCourse course, MedicationDoseStats stats})? _mostUrgentMedication() {
    ({MedicationCourse course, MedicationDoseStats stats})? best;
    for (final c in _activeCourses) {
      if (c.intervalHours == null) continue;
      final stats = computeDoseStats(c, widget.data);
      if (stats.nextDue == null) continue;
      if (best == null || stats.nextDue!.isBefore(best.stats.nextDue!)) {
        best = (course: c, stats: stats);
      }
    }
    return best;
  }

  // ─── Grouping ──────────────────────────────────────────────────────────────

  Map<int, Map<int, List<DateTime>>> _groupedDates() {
    final todayKey = dateKey(DateTime.now());
    final grouped = <int, Map<int, List<DateTime>>>{};
    for (final date in _visibleDates) {
      // Today already has its own hero row above; skip it here so it
      // doesn't also show up a second time under its month.
      if (dateKey(date) == todayKey) continue;
      grouped
          .putIfAbsent(date.year, () => {})
          .putIfAbsent(date.month, () => [])
          .add(date);
    }
    final result = <int, Map<int, List<DateTime>>>{};
    for (final year
        in (grouped.keys.toList()..sort((a, b) => b.compareTo(a)))) {
      result[year] = {};
      for (final month
          in (grouped[year]!.keys.toList()..sort((a, b) => b.compareTo(a)))) {
        result[year]![month] = grouped[year]![month]!
          ..sort((a, b) => b.compareTo(a));
      }
    }
    return result;
  }

  // ─── Day tile ──────────────────────────────────────────────────────────────

  Widget _buildDayTile(DateTime d, {bool isToday = false}) {
    final l = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.extension<AppColors>()!;
    final key = dateKey(d);
    final count = _count(key);
    final hasRash =
        widget.data[key]?.any(
          (e) => e.type == 'diaper' && e.data['rash'] == true,
        ) ??
        false;

    // The mockup gives each day tile a different badge tint. Derive it from
    // the date so a given day always keeps the same color.
    final tint = colors.cycle[(d.month * 31 + d.day) % colors.cycle.length];

    void open() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DayPage(
            date: d,
            babyId: widget.babyId,
            data: widget.data,
            onDataChanged: widget.onDataChanged,
          ),
        ),
      );
    }

    return Dismissible(
      key: ValueKey(key),
      direction: DismissDirection.endToStart,
      confirmDismiss: (_) async => showDialog<bool>(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(l.deleteDayTitle),
          content: Text(l.deleteDayContent(fullDate(d))),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text(l.actionCancel),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text(l.actionDelete),
            ),
          ],
        ),
      ),
      onDismissed: (_) => _removeTile(d),
      background: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: theme.colorScheme.error,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(Icons.delete, color: theme.colorScheme.onError),
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          // Today is the mockup's hero row: a pink→blue gradient card.
          gradient: isToday ? colors.todayGradient : null,
          color: isToday ? null : theme.cardTheme.color,
          borderRadius: BorderRadius.circular(isToday ? 22 : 20),
          boxShadow: [
            BoxShadow(
              color: (isToday ? colors.accentSolid : theme.colorScheme.shadow)
                  .withValues(alpha: isToday ? 0.28 : 0.12),
              blurRadius: isToday ? 18 : 10,
              offset: Offset(0, isToday ? 8 : 3),
              spreadRadius: isToday ? -10 : -6,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(isToday ? 22 : 20),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: open,
            child: Padding(
              padding: EdgeInsets.fromLTRB(
                16,
                isToday ? 16 : 14,
                16,
                isToday ? 16 : 14,
              ),
              child: Row(
                children: [
                  Container(
                    width: isToday ? 42 : 40,
                    height: isToday ? 42 : 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: isToday ? colors.accentSolid : tint.$2,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      d.day.toString(),
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontSize: isToday ? 16 : 15,
                        fontWeight: FontWeight.w700,
                        color: isToday ? Colors.white : tint.$1,
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: Text(
                                isToday
                                    ? l.todayLabel(fullDate(d))
                                    : fullDate(d),
                                style: isToday
                                    ? theme.textTheme.titleMedium?.copyWith(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700,
                                        color: theme.colorScheme.onSurface,
                                      )
                                    : theme.textTheme.bodyLarge?.copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                              ),
                            ),
                            if (hasRash) ...[
                              const SizedBox(width: 6),
                              Tooltip(
                                message: l.rashRecorded,
                                child: const Text(
                                  '🔴',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ],
                        ),
                        const SizedBox(height: 1),
                        Text(
                          d.shortName(),
                          style: theme.textTheme.bodySmall?.copyWith(
                            fontSize: 12.5,
                            color: isToday
                                ? theme.colorScheme.onSurface.withValues(
                                    alpha: 0.72,
                                  )
                                : theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  _CountPill(label: l.eventCount(count), filled: isToday),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ─── Build ─────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final today = DateTime.now();
    final todayKey = dateKey(today);
    final hasToday = widget.data.containsKey(todayKey);
    final grouped = _groupedDates();
    final rows = _flattenRows(hasToday, grouped);
    final sleepToday = _totalSleepTodayMinutes();
    final colors = Theme.of(context).extension<AppColors>()!;

    final runningTimer = TimerService.instance.active;
    final urgentMed = _mostUrgentMedication();

    return Scaffold(
      appBar: AppBar(
        title: Text(l.homeTitle),
        automaticallyImplyLeading: false,
        actions: [
          // General "add any day" entry point — the FAB below is a fast
          // path for *today* only, and "+ Add day" next to a month header
          // only exists once that month already has something logged, so
          // this is the only way to start a day in a month with nothing in
          // it yet (e.g. backfilling last month).
          IconButton(
            icon: const Icon(Icons.calendar_month_outlined),
            tooltip: l.actionAddDay,
            onPressed: () => _addTileForDate(),
          ),
          IconButton(
            icon: const Icon(Icons.medication_outlined),
            tooltip: l.medicationsTitle,
            onPressed: _openMedications,
          ),
          IconButton(
            icon: const Icon(Icons.share),
            tooltip: l.actionExport,
            onPressed: _export,
          ),
          const SizedBox(width: 8),
        ],
      ),
      // Fast-add: takes a parent straight to "pick a type" for today,
      // instead of the old date-picker-only FAB, which couldn't actually
      // log anything from Home.
      floatingActionButton: GradientFab(
        onPressed: _quickAdd,
        tooltip: l.addEntry,
      ),
      body: Column(
        children: [
          if (runningTimer != null) _TimerCard(timer: runningTimer, onSwitch: () => TimerService.instance.switchSide(), onStop: () => _stopTimer(runningTimer), onDiscard: _confirmDiscardTimer),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
            child: Column(
              children: [
                // IntrinsicHeight so the two cards match heights even when
                // one label wraps to a second line; a bare `stretch` would
                // demand infinite height inside this unbounded Column.
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: StatCard(
                          title: l.feedsToday,
                          value: '${_totalFeedsToday()}',
                          icon: Icons.local_drink,
                          color: colors.feedingStrong,
                          softColor: colors.feedingSoft,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: StatCard(
                          title: l.diapersToday,
                          value: '${_totalDiapersToday()}',
                          icon: Icons.baby_changing_station,
                          color: colors.diaperStrong,
                          softColor: colors.diaperSoft,
                        ),
                      ),
                    ],
                  ),
                ),
                if (sleepToday > 0) ...[
                  const SizedBox(height: 12),
                  StatCard(
                    title: l.sleepToday,
                    value: _sleepLabel(sleepToday),
                    icon: Icons.bedtime,
                    color: colors.sleepStrong,
                    softColor: colors.sleepSoft,
                  ),
                ],
                const SizedBox(height: 12),
                _SinceLastStrip(
                  lastFeed: _latestEventOfType('feeding'),
                  lastDiaper: _latestEventOfType('diaper'),
                  lastSleepEnd: _lastSleepEnd(),
                  sleeping: runningTimer?.kind == TimerKind.sleep,
                  urgentMedication: urgentMed,
                  onTapFeed: runningTimer == null
                      ? () => TimerService.instance.startFeeding(widget.babyId)
                      : null,
                  onTapDiaper: _quickAdd,
                  onTapSleep: runningTimer == null
                      ? () => TimerService.instance.startSleep(widget.babyId)
                      : null,
                  onTapMedication: _openMedications,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 96),
              itemCount: rows.length,
              itemBuilder: (context, i) => _buildRow(rows[i], today),
            ),
          ),
        ],
      ),
    );
  }

  /// Flattens the grouped date map into a single list of row descriptors,
  /// computed once per build rather than re-walked from the start of the
  /// (year → month → days) map for every visible list item.
  List<_HomeRow> _flattenRows(
    bool hasToday,
    Map<int, Map<int, List<DateTime>>> grouped,
  ) {
    final rows = <_HomeRow>[];
    if (hasToday) {
      rows.add(const _HomeRow.today());
      rows.add(const _HomeRow.divider());
    }
    for (final yearEntry in grouped.entries) {
      rows.add(_HomeRow.year(yearEntry.key));
      for (final monthEntry in yearEntry.value.entries) {
        rows.add(_HomeRow.month(yearEntry.key, monthEntry.key));
        for (final d in monthEntry.value) {
          rows.add(_HomeRow.day(d));
        }
      }
    }
    return rows;
  }

  Widget _buildRow(_HomeRow row, DateTime today) {
    final l = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    switch (row.kind) {
      case _RowKind.today:
        return _buildDayTile(today, isToday: true);
      case _RowKind.divider:
        return Divider(
          height: 33,
          thickness: 1,
          color: theme.colorScheme.outlineVariant,
        );
      case _RowKind.year:
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
          child: Text(
            row.year.toString(),
            style: theme.textTheme.titleLarge?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      case _RowKind.month:
        return AppSubsectionHeader(
          // Use intl-formatted month name so it respects locale automatically
          _localizedMonthName(row.month!, l),
          trailing: InkWell(
            borderRadius: BorderRadius.circular(999),
            onTap: () =>
                _addTileForDate(initial: DateTime(row.year!, row.month!)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
              child: Text(
                '+ ${l.actionAddDay}',
                style: theme.textTheme.labelMedium?.copyWith(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: theme.colorScheme.primary,
                ),
              ),
            ),
          ),
        );
      case _RowKind.day:
        return _buildDayTile(row.date!);
    }
  }

  /// Returns a locale-aware month name by formatting a representative date.
  String _localizedMonthName(int month, AppLocalizations l) {
    // Use intl's DateFormat so the month name follows the active locale.
    // We construct a date in that month and format just the month portion.
    final date = DateTime(2000, month);
    // DateFormat is already imported via helpers.dart (intl package).
    return fullMonthName(date);
  }

  /// Opens today straight to the add-entry sheet — the Home FAB's fast path
  /// (2 taps to a form: FAB, then the entry type) rather than the old
  /// behaviour of opening a date picker with no way to actually log
  /// anything from Home itself.
  void _quickAdd() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DayPage(
          date: DateTime.now(),
          babyId: widget.babyId,
          data: widget.data,
          onDataChanged: widget.onDataChanged,
          autoOpenAddSheet: true,
        ),
      ),
    );
  }

  Future<void> _openMedications() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) =>
            MedicationsPage(babyId: widget.babyId, data: widget.data),
      ),
    );
    _loadMedicationCourses();
  }

  Future<void> _saveEvent(TrackerEvent event) async {
    final key = dateKey(event.time);
    final updated = Map<String, List<TrackerEvent>>.from(widget.data);
    updated.putIfAbsent(key, () => []).add(event);
    await Storage.saveAll(widget.babyId, updated);
    widget.onDataChanged(updated);
  }

  Future<void> _confirmDiscardTimer() async {
    final l = AppLocalizations.of(context)!;
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(l.timerDiscardTitle),
        content: Text(l.cannotUndo),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l.actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l.timerDiscard),
          ),
        ],
      ),
    );
    if (ok == true) await TimerService.instance.discard();
  }

  Future<void> _stopTimer(ActiveTimer timer) async {
    final result = await TimerService.instance.stop();
    if (result == null || !mounted) return;

    if (result.kind == TimerKind.feeding) {
      final saved = await Navigator.push<TrackerEvent>(
        context,
        MaterialPageRoute(
          builder: (_) => FeedingForm(
            initialDate: DateTime.now(),
            initialTimerResult: result,
          ),
        ),
      );
      if (saved != null) await _saveEvent(saved);
    } else {
      final saved = await Navigator.push<TrackerEvent>(
        context,
        MaterialPageRoute(
          builder: (_) => SleepForm(
            initialDate: DateTime.now(),
            initialTimerStart: result.startedAt,
          ),
        ),
      );
      if (saved != null) await _saveEvent(saved);
    }
  }

  Future<void> _export() async {
    final l = AppLocalizations.of(context)!;
    final file = await Storage.exportToFile(widget.babyId, widget.data);

    // share_plus does not support file sharing on Linux.
    // Show the file path in a dialog instead so the user can open it manually.
    if (!mounted) return;
    if (Theme.of(context).platform == TargetPlatform.linux) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text(l.actionExport),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('File saved to:'),
              const SizedBox(height: 8),
              SelectableText(
                file.path,
                style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l.actionClose),
            ),
          ],
        ),
      );
      return;
    }

    await SharePlus.instance.share(
      ShareParams(files: [XFile(file.path)], subject: l.actionExport),
    );
  }
}

enum _RowKind { today, divider, year, month, day }

/// A single flattened row in the home list. Precomputing these once per
/// build (see [_HomePageState._flattenRows]) means each visible list item
/// is an O(1) index lookup instead of re-walking the grouped date map from
/// its start for every item [ListView.builder] asks for.
class _HomeRow {
  final _RowKind kind;
  final int? year;
  final int? month;
  final DateTime? date;

  const _HomeRow.today() : kind = _RowKind.today, year = null, month = null, date = null;
  const _HomeRow.divider() : kind = _RowKind.divider, year = null, month = null, date = null;
  const _HomeRow.year(this.year) : kind = _RowKind.year, month = null, date = null;
  const _HomeRow.month(this.year, this.month) : kind = _RowKind.month, date = null;
  const _HomeRow.day(this.date) : kind = _RowKind.day, year = null, month = null;
}

/// The event-count chip on a day tile. Outlined on ordinary rows; a solid
/// white pill with accent text on the gradient "today" row, per the mockup.
class _CountPill extends StatelessWidget {
  const _CountPill({required this.label, required this.filled});

  final String label;
  final bool filled;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: filled ? 14 : 12, vertical: 7),
      decoration: BoxDecoration(
        // A translucent overlay reads correctly against the "today" gradient
        // in every theme; the card's own background (used before) is dark in
        // dark/OLED mode and reads as a hole punched in the gradient.
        color: filled
            ? theme.colorScheme.onSurface.withValues(alpha: 0.10)
            : null,
        border: filled
            ? null
            : Border.all(color: theme.colorScheme.outlineVariant),
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: theme.textTheme.labelMedium?.copyWith(
          fontSize: 12.5,
          fontWeight: filled ? FontWeight.w700 : FontWeight.w500,
          color: filled
              ? theme.colorScheme.onSurface
              : theme.colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}

/// The prominent card shown above the stat cards while a breastfeeding or
/// sleep timer is running — the single most requested feature in reviews of
/// competing baby trackers: a live "how long has it been" that survives the
/// app being backgrounded mid-feed.
class _TimerCard extends StatelessWidget {
  const _TimerCard({
    required this.timer,
    required this.onSwitch,
    required this.onStop,
    required this.onDiscard,
  });

  final ActiveTimer timer;
  final VoidCallback onSwitch;
  final VoidCallback onStop;
  final VoidCallback onDiscard;

  String _sideLabel(String side, AppLocalizations l) => switch (side) {
    'right' => l.feedSideRight,
    'both' => l.feedSideBoth,
    _ => l.feedSideLeft,
  };

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final colors = Theme.of(context).extension<AppColors>()!;
    final isFeeding = timer.kind == TimerKind.feeding;

    return Container(
      margin: const EdgeInsets.fromLTRB(20, 4, 20, 0),
      padding: const EdgeInsets.fromLTRB(16, 12, 6, 12),
      decoration: BoxDecoration(
        gradient: colors.accentGradient,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: colors.accentSolid.withValues(alpha: 0.4),
            blurRadius: 18,
            offset: const Offset(0, 8),
            spreadRadius: -8,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            isFeeding ? Icons.child_care : Icons.bedtime,
            color: Colors.white,
            size: 26,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  isFeeding
                      ? l.timerFeedingRunning(_sideLabel(timer.side, l))
                      : l.timerSleepRunning,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.5,
                  ),
                ),
                Text(
                  formatDuration(timer.totalElapsed),
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          if (isFeeding)
            IconButton(
              icon: const Icon(Icons.swap_horiz, color: Colors.white),
              tooltip: l.timerSwitchSide,
              onPressed: onSwitch,
            ),
          Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(999),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: onStop,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Text(
                  l.timerStop,
                  style: TextStyle(
                    color: colors.accentSolid,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white70, size: 18),
            tooltip: l.timerDiscard,
            onPressed: onDiscard,
            visualDensity: VisualDensity.compact,
          ),
        ],
      ),
    );
  }
}

/// A horizontally-scrolling row of "time since" chips — the fast reference
/// a parent reaches for at 3am ("how long has it been since the last feed?
/// which side was it?") without opening the day list. Tapping a chip starts
/// that activity's timer (feed/sleep) or opens the relevant page.
class _SinceLastStrip extends StatelessWidget {
  const _SinceLastStrip({
    required this.lastFeed,
    required this.lastDiaper,
    required this.lastSleepEnd,
    required this.sleeping,
    required this.urgentMedication,
    this.onTapFeed,
    this.onTapDiaper,
    this.onTapSleep,
    this.onTapMedication,
  });

  final TrackerEvent? lastFeed;
  final TrackerEvent? lastDiaper;
  final DateTime? lastSleepEnd;
  final bool sleeping;
  final ({MedicationCourse course, MedicationDoseStats stats})? urgentMedication;
  final VoidCallback? onTapFeed;
  final VoidCallback? onTapDiaper;
  final VoidCallback? onTapSleep;
  final VoidCallback? onTapMedication;

  String _feedDetail(TrackerEvent e, AppLocalizations l, bool useMl) {
    final isBottle = (e.data['isBottle'] as bool?) ?? true;
    if (isBottle) {
      final ml = (e.data['amountMl'] as num?) ?? 0;
      return formatMilk(ml, useMl: useMl);
    }
    return switch (e.data['side'] as String?) {
      'right' => l.feedSideRight,
      'both' => l.feedSideBoth,
      _ => l.feedSideLeft,
    };
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final colors = Theme.of(context).extension<AppColors>()!;
    final useMl = SettingsProvider.of(context).settings.useMl;
    final med = urgentMedication;

    final chips = <Widget>[
      _StripChip(
        icon: Icons.local_drink,
        color: colors.feedingStrong,
        label: l.sinceLastFeed,
        value: lastFeed == null ? '—' : timeAgo(lastFeed!.time, l),
        detail: lastFeed == null ? null : _feedDetail(lastFeed!, l, useMl),
        onTap: onTapFeed,
      ),
      _StripChip(
        icon: Icons.baby_changing_station,
        color: colors.diaperStrong,
        label: l.sinceLastDiaper,
        value: lastDiaper == null ? '—' : timeAgo(lastDiaper!.time, l),
        onTap: onTapDiaper,
      ),
      _StripChip(
        icon: Icons.bedtime,
        color: colors.sleepStrong,
        label: sleeping ? l.sinceAsleep : l.sinceAwake,
        value: sleeping || lastSleepEnd == null
            ? '—'
            : timeAgo(lastSleepEnd!, l),
        onTap: onTapSleep,
      ),
      if (med != null)
        _StripChip(
          icon: Icons.medication,
          color: colors.medicationStrong,
          label: l.nextDoseDue(med.course.name),
          value: timeUntil(med.stats.nextDue!, l),
          warn: med.stats.isOverdue,
          onTap: onTapMedication,
        ),
    ];

    return SizedBox(
      height: 76,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        clipBehavior: Clip.none,
        itemCount: chips.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (_, i) => chips[i],
      ),
    );
  }
}

class _StripChip extends StatelessWidget {
  const _StripChip({
    required this.icon,
    required this.color,
    required this.label,
    required this.value,
    this.detail,
    this.warn = false,
    this.onTap,
  });

  final IconData icon;
  final Color color;
  final String label;
  final String value;
  final String? detail;
  final bool warn;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 136,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.shadow.withValues(alpha: 0.08),
            blurRadius: 8,
            offset: const Offset(0, 3),
            spreadRadius: -6,
          ),
        ],
      ),
      child: Material(
        color: theme.cardTheme.color ?? theme.colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: warn
                ? BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 1.2),
                    borderRadius: BorderRadius.circular(16),
                  )
                : null,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(icon, size: 14, color: color),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Text(
                        label,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: theme.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 3),
                Text(
                  value,
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w700,
                    color: warn ? Colors.orange : null,
                  ),
                ),
                if (detail != null)
                  Text(
                    detail!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontSize: 10.5,
                      color: theme.colorScheme.onSurfaceVariant,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
