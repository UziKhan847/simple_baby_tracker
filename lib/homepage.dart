import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_baby_tracker/day_page.dart';
import 'package:simple_baby_tracker/extensions.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/stat_card.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.data,
    required this.onDataChanged,
    required this.onReload,
  });

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
    if (oldWidget.data != widget.data) _syncDates();
  }

  void _syncDates() {
    _visibleDates = widget.data.keys
        .map(dateFromKey)
        .toList()
      ..sort((a, b) => b.compareTo(a));
  }

  Future<void> _ensureTodayExists() async {
    final key = dateKey(DateTime.now());
    if (!widget.data.containsKey(key)) {
      final updated = Map<String, List<TrackerEvent>>.from(widget.data);
      updated[key] = [];
      await Storage.saveAll(updated);
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

    final updated = Map<String, List<TrackerEvent>>.from(widget.data);
    updated[key] = [];
    await Storage.saveAll(updated);
    widget.onDataChanged(updated);
  }

  Future<void> _removeTile(DateTime d) async {
    final key = dateKey(d);
    final updated = Map<String, List<TrackerEvent>>.from(widget.data)
      ..remove(key);
    await Storage.saveAll(updated);
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

  Map<int, Map<int, List<DateTime>>> _groupedDates() {
    final grouped = <int, Map<int, List<DateTime>>>{};
    for (final date in _visibleDates) {
      grouped
          .putIfAbsent(date.year, () => {})
          .putIfAbsent(date.month, () => [])
          .add(date);
    }

    final result = <int, Map<int, List<DateTime>>>{};
    for (final year in (grouped.keys.toList()..sort((a, b) => b.compareTo(a)))) {
      result[year] = {};
      for (final month
          in (grouped[year]!.keys.toList()..sort((a, b) => b.compareTo(a)))) {
        result[year]![month] = grouped[year]![month]!
          ..sort((a, b) => b.compareTo(a));
      }
    }
    return result;
  }

  static const _monthNames = [
    '',
    'January', 'February', 'March', 'April', 'May', 'June',
    'July', 'August', 'September', 'October', 'November', 'December',
  ];

  Widget _buildDayTile(DateTime d, {bool isToday = false}) {
    final key = dateKey(d);
    final count = _count(key);

    return Dismissible(
      key: ValueKey(key),
      direction: DismissDirection.endToStart,
      confirmDismiss: (_) async {
        return await showDialog<bool>(
          context: context,
          builder: (_) => AlertDialog(
            title: const Text('Delete day?'),
            content: Text(
                'Remove ${fullDate(d)} and all its entries? This cannot be undone.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('Cancel'),
              ),
              FilledButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Delete'),
              ),
            ],
          ),
        );
      },
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
                color: isToday
                    ? Theme.of(context).colorScheme.onPrimary
                    : Theme.of(context).colorScheme.onSecondaryContainer,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          title: Text(
            isToday ? 'Today — ${fullDate(d)}' : fullDate(d),
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(d.shortName()),
          trailing: Chip(
            label: Text('$count event${count == 1 ? '' : 's'}'),
            visualDensity: VisualDensity.compact,
          ),
          onTap: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => DayPage(date: d)),
            );
            await widget.onReload();
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final todayKey = dateKey(today);
    final hasToday = widget.data.containsKey(todayKey);
    final grouped = _groupedDates();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Baby Tracker'),
        actions: [
          IconButton(
            icon: const Icon(Icons.share),
            tooltip: 'Export data',
            onPressed: _export,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _addTileForDate(),
        icon: const Icon(Icons.add),
        label: const Text('Add day'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 4),
            child: Row(
              children: [
                Expanded(
                  child: StatCard(
                    title: 'Feeds today',
                    value: '${_totalFeedsToday()}',
                    icon: Icons.local_drink,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: StatCard(
                    title: 'Diapers today',
                    value: '${_totalDiapersToday()}',
                    icon: Icons.baby_changing_station,
                    color: Colors.brown,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.fromLTRB(12, 4, 12, 80),
              itemCount: _listItemCount(hasToday, grouped),
              itemBuilder: (context, index) =>
                  _buildListItem(index, hasToday, today, grouped),
            ),
          ),
        ],
      ),
    );
  }

  // Flatten grouped data into list items for ListView.builder
  int _listItemCount(
      bool hasToday, Map<int, Map<int, List<DateTime>>> grouped) {
    int count = hasToday ? 2 : 0; // today tile + divider
    for (final months in grouped.values) {
      count++; // year header
      for (final days in months.values) {
        count++; // month header
        count += days.length;
      }
    }
    return count;
  }

  Widget _buildListItem(
    int index,
    bool hasToday,
    DateTime today,
    Map<int, Map<int, List<DateTime>>> grouped,
  ) {
    // Today section
    if (hasToday) {
      if (index == 0) return _buildDayTile(today, isToday: true);
      if (index == 1) return const Divider(height: 16);
      index -= 2;
    }

    // Grouped years/months
    for (final yearEntry in grouped.entries) {
      if (index == 0) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(4, 8, 4, 2),
          child: Text(
            yearEntry.key.toString(),
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(fontWeight: FontWeight.bold),
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
                Text(
                  _monthNames[monthEntry.key],
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const Spacer(),
                TextButton.icon(
                  icon: const Icon(Icons.add, size: 16),
                  label: const Text('Add day'),
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

  Future<void> _export() async {
    final file = await Storage.exportToFile(widget.data);
    await Share.shareXFiles([XFile(file.path)]);
  }
}