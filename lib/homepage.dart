import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_baby_tracker/day_page.dart';
import 'package:simple_baby_tracker/extensions.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/stat_card.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, List<TrackerEvent>> data = {};
  bool loading = true;

  final List<DateTime> _visibleDates = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    setState(() => loading = true);

    final raw = await Storage.loadAll();
    data = Map<String, List<TrackerEvent>>.from(raw);

    _visibleDates
      ..clear()
      ..addAll(data.keys.map(dateFromKey).toList())
      ..sort((a, b) => b.compareTo(a));

    setState(() => loading = false);
  }

  int _count(String key) => data[key]?.length ?? 0;

  Future<void> _export() async {
    final file = await Storage.exportToFile(data);
    await Share.shareXFiles([XFile(file.path)]);
  }

  int _totalFeedsToday() {
    final today = dateKey(DateTime.now());
    return data[today]?.where((e) => e.type == 'feeding').length ?? 0;
  }

  int _totalDiapersToday() {
    final today = dateKey(DateTime.now());
    return data[today]?.where((e) => e.type == 'diaper').length ?? 0;
  }

  Future<void> _addTileForDate() async {
    final now = DateTime.now();

    final picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(2000),
      lastDate: DateTime(now.year + 5),
    );

    if (picked == null) return;

    final dateOnly = DateTime(picked.year, picked.month, picked.day);
    final key = dateKey(dateOnly);

    if (!data.containsKey(key)) {
      data[key] = <TrackerEvent>[];
      await Storage.saveAll(data);
    }

    final exists = _visibleDates.any((d) => dateKey(d) == key);
    if (!exists) {
      setState(() {
        _visibleDates.add(dateOnly);
        _visibleDates.sort((a, b) => b.compareTo(a));
      });
    } else {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Tile for ${displayDate(dateOnly)} already present'),
        ),
      );
    }
  }

  Future<void> _editTileDate(DateTime oldDate) async {
    final oldKey = dateKey(oldDate);

    final picked = await showDatePicker(
      context: context,
      initialDate: oldDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (picked == null) return;

    final newDate = DateTime(picked.year, picked.month, picked.day);
    final newKey = dateKey(newDate);

    if (newKey == oldKey) return;

    if (data.containsKey(newKey)) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Tile for that date already exists')),
      );
      return;
    }

    final events = data.remove(oldKey) ?? [];
    data[newKey] = events;

    await Storage.saveAll(data);

    setState(() {
      _visibleDates.removeWhere((d) => dateKey(d) == oldKey);
      _visibleDates.add(newDate);
      _visibleDates.sort((a, b) => b.compareTo(a));
    });
  }

  Future<void> _removeTile(DateTime d) async {
    final key = dateKey(d);
    data.remove(key);
    await Storage.saveAll(data);

    setState(() {
      _visibleDates.removeWhere((x) => dateKey(x) == key);
    });
  }

  void _confirmDelete(DateTime d) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Remove tile?'),
        content: Text('Remove tile for ${fullDate(d)}?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              _removeTile(d);
            },
            child: const Text('Remove'),
          ),
        ],
      ),
    );
  }

  Widget _buildTile(DateTime d, {bool isToday = false}) {
    final key = dateKey(d);

    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => DayPage(date: d)),
          );
          await _load();
        },
        onLongPress: () => _confirmDelete(d),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    isToday ? 'Today - ${fullDate(d)}' : fullDate(d),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    d.shortName(),
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(
                    '${_count(key)} events',
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, size: 18),
                        onPressed: () => _editTileDate(d),
                      ),
                      const Icon(Icons.chevron_right),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final todayKey = dateKey(today);

    final hasTodayTile = _visibleDates.any((d) => dateKey(d) == todayKey);

    final otherDates =
        _visibleDates.where((d) => dateKey(d) != todayKey).toList()
          ..sort((a, b) => b.compareTo(a));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Baby Tracker'),
        actions: [
          IconButton(icon: const Icon(Icons.share), onPressed: _export),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTileForDate,
        child: const Icon(Icons.add),
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    child: Column(
                      children: [
                        if (hasTodayTile) _buildTile(today, isToday: true),
                        if (hasTodayTile) const Divider(thickness: 1.2),
                        Expanded(
                          child: otherDates.isEmpty
                              ? const Center(
                                  child: Text(
                                    'No past tiles yet. Tap + to add one.',
                                  ),
                                )
                              : ListView.builder(
                                  padding: EdgeInsets.only(
                                    bottom:
                                        MediaQuery.of(context).padding.bottom +
                                        16,
                                  ),
                                  itemCount: otherDates.length,
                                  itemBuilder: (context, i) =>
                                      _buildTile(otherDates[i]),
                                ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
