import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_baby_tracker/day/page.dart';
import 'package:simple_baby_tracker/extensions.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/stat_card.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

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
    final key = dateKey(d);
    final count = _count(key);
    final hasRash =
        widget.data[key]?.any(
          (e) => e.type == 'diaper' && e.data['rash'] == true,
        ) ??
        false;

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
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(Icons.delete, color: Colors.white),
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: isToday
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.secondaryContainer,
            child: Text(
              d.day.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 13,
                color: isToday
                    ? Theme.of(context).colorScheme.onPrimary
                    : Theme.of(context).colorScheme.onSecondaryContainer,
              ),
            ),
          ),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  isToday ? l.todayLabel(fullDate(d)) : fullDate(d),
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              if (hasRash)
                Tooltip(
                  message: l.rashRecorded,
                  child: const Text('🔴', style: TextStyle(fontSize: 13)),
                ),
            ],
          ),
          subtitle: Text(d.shortName()),
          trailing: Chip(
            label: Text(l.eventCount(count)),
            visualDensity: VisualDensity.compact,
          ),
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DayPage(date: d, babyId: widget.babyId),
              ),
            );
            await widget.onReload();
          },
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
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _addTileForDate(),
        icon: const Icon(Icons.add),
        label: Text(l.actionAddDay),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 4),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: StatCard(
                        title: l.feedsToday,
                        value: '${_totalFeedsToday()}',
                        icon: Icons.local_drink,
                        color: Colors.pink,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: StatCard(
                        title: l.diapersToday,
                        value: '${_totalDiapersToday()}',
                        icon: Icons.baby_changing_station,
                        color: Colors.brown,
                      ),
                    ),
                  ],
                ),
                if (sleepToday > 0) ...[
                  const SizedBox(height: 8),
                  StatCard(
                    title: l.sleepToday,
                    value: _sleepLabel(sleepToday),
                    icon: Icons.bedtime,
                    color: Colors.indigo,
                  ),
                ],
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(12, 4, 12, 88),
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

    if (hasToday) {
      if (index == 0) return _buildDayTile(today, isToday: true);
      if (index == 1) return const Divider(height: 20);
      index -= 2;
    }

    for (final yearEntry in grouped.entries) {
      if (index == 0) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(4, 8, 4, 2),
          child: Text(
            yearEntry.key.toString(),
            style: Theme.of(
              context,
            ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
        );
      }
      index--;

      for (final monthEntry in yearEntry.value.entries) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(8, 6, 4, 2),
            child: Row(
              children: [
                // Use intl-formatted month name so it respects locale automatically
                Text(
                  _localizedMonthName(monthEntry.key, l),
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const Spacer(),
                TextButton.icon(
                  icon: const Icon(Icons.add, size: 16),
                  label: Text(l.actionAddDay),
                  onPressed: () => _addTileForDate(
                    initial: DateTime(yearEntry.key, monthEntry.key),
                  ),
                ),
              ],
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
    await SharePlus.instance.share(
      ShareParams(files: [XFile(file.path)], subject: l.actionExport),
    );
  }
}
