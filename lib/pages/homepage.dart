import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_baby_tracker/pages/day.dart';
import 'package:simple_baby_tracker/extensions.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
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
    required this.onReload,
  });

  final String babyId;
  final Map<String, List<TrackerEvent>> data;
  final void Function(Map<String, List<TrackerEvent>>) onDataChanged;
  final Future<void> Function() onReload;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<DateTime> _visibleDates = [];

  @override
  void initState() {
    super.initState();
    _syncDates();
    _ensureTodayExists();
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.data != widget.data || oldWidget.babyId != widget.babyId) {
      _syncDates();
    }
  }

  void _syncDates() {
    _visibleDates = widget.data.keys.map(dateFromKey).toList()
      ..sort((a, b) => b.compareTo(a));
  }

  Future<void> _ensureTodayExists() async {
    final key = dateKey(DateTime.now());
    if (!widget.data.containsKey(key)) {
      final updated = Map<String, List<TrackerEvent>>.from(widget.data)
        ..[key] = [];
      await Storage.saveAll(widget.babyId, updated);
      widget.onDataChanged(updated);
    }
  }

  Future<void> _addTileForDate({DateTime? initial}) async {
    final picked = await showDatePicker(
      context: context,
      initialDate: initial ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(DateTime.now().year + 5),
    );
    if (picked == null) return;

    final dateOnly = DateTime(picked.year, picked.month, picked.day);
    final key = dateKey(dateOnly);
    if (widget.data.containsKey(key)) return;

    final updated = Map<String, List<TrackerEvent>>.from(widget.data)
      ..[key] = [];
    await Storage.saveAll(widget.babyId, updated);
    widget.onDataChanged(updated);
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

  // ─── Grouping ──────────────────────────────────────────────────────────────

  Map<int, Map<int, List<DateTime>>> _groupedDates() {
    final grouped = <int, Map<int, List<DateTime>>>{};
    for (final date in _visibleDates) {
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

    Future<void> open() async {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => DayPage(date: d, babyId: widget.babyId),
        ),
      );
      await widget.onReload();
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
                                        color: const Color(0xFF3A2E3C),
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
                                ? const Color(0xFF6E5C72)
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
    final sleepToday = _totalSleepTodayMinutes();
    final colors = Theme.of(context).extension<AppColors>()!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l.homeTitle),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            tooltip: l.actionExport,
            onPressed: _export,
          ),
          const SizedBox(width: 8),
        ],
      ),
      floatingActionButton: GradientFab(
        onPressed: () => _addTileForDate(),
        tooltip: l.actionAddDay,
      ),
      body: Column(
        children: [
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
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 96),
              itemCount: _itemCount(hasToday, grouped),
              itemBuilder: (context, i) =>
                  _buildItem(i, hasToday, today, grouped),
            ),
          ),
        ],
      ),
    );
  }

  int _itemCount(bool hasToday, Map<int, Map<int, List<DateTime>>> grouped) {
    int n = hasToday ? 2 : 0;
    for (final months in grouped.values) {
      n++;
      for (final days in months.values) {
        n++;
        n += days.length;
      }
    }
    return n;
  }

  Widget _buildItem(
    int index,
    bool hasToday,
    DateTime today,
    Map<int, Map<int, List<DateTime>>> grouped,
  ) {
    final l = AppLocalizations.of(context)!;

    final theme = Theme.of(context);

    if (hasToday) {
      if (index == 0) return _buildDayTile(today, isToday: true);
      if (index == 1) {
        return Divider(
          height: 33,
          thickness: 1,
          color: theme.colorScheme.outlineVariant,
        );
      }
      index -= 2;
    }

    for (final yearEntry in grouped.entries) {
      if (index == 0) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(0, 4, 0, 0),
          child: Text(
            yearEntry.key.toString(),
            style: theme.textTheme.titleLarge?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        );
      }
      index--;

      for (final monthEntry in yearEntry.value.entries) {
        if (index == 0) {
          return AppSubsectionHeader(
            // Use intl-formatted month name so it respects locale automatically
            _localizedMonthName(monthEntry.key, l),
            trailing: InkWell(
              borderRadius: BorderRadius.circular(999),
              onTap: () => _addTileForDate(
                initial: DateTime(yearEntry.key, monthEntry.key),
              ),
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
        }
        index--;

        for (final d in monthEntry.value) {
          if (index == 0) return _buildDayTile(d);
          index--;
        }
      }
    }

    return const SizedBox.shrink();
  }

  /// Returns a locale-aware month name by formatting a representative date.
  String _localizedMonthName(int month, AppLocalizations l) {
    // Use intl's DateFormat so the month name follows the active locale.
    // We construct a date in that month and format just the month portion.
    final date = DateTime(2000, month);
    // DateFormat is already imported via helpers.dart (intl package).
    return fullMonthName(date);
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
        color: filled ? theme.cardTheme.color : null,
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
              ? theme.colorScheme.primary
              : theme.colorScheme.onSurfaceVariant,
        ),
      ),
    );
  }
}
