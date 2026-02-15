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

  void _removeTile(DateTime d) async {
    final key = dateKey(d);
    data.remove(key);
    await Storage.saveAll(data);
    setState(() {
      _visibleDates.removeWhere((x) => dateKey(x) == key);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Baby Tracker'),
        actions: [
          IconButton(icon: const Icon(Icons.share), onPressed: _export),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTileForDate,
        tooltip: 'Add date tile',
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
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: StatCard(
                          title: 'Diapers today',
                          value: '${_totalDiapersToday()}',
                          icon: Icons.baby_changing_station,
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
                    child: Builder(
                      builder: (context) {
                        final today = DateTime.now();
                        final todayKey = dateKey(today);

                        final otherDates =
                            _visibleDates
                                .where((d) => dateKey(d) != todayKey)
                                .toList()
                              ..sort((a, b) => b.compareTo(a));

                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => DayPage(date: today),
                                  ),
                                );

                                await _load();
                                setState(() {});
                              },
                              child: Card(
                                margin: const EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 4,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Today - ${fullDate(today)}',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          const SizedBox(height: 6),
                                          Text(
                                            today.shortName(),
                                            style: const TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      Column(
                                        children: [
                                          Text(
                                            '${_count(todayKey)} events',
                                            style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(height: 6),
                                          const Icon(Icons.chevron_right),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),

                            const Divider(thickness: 1.2),

                            Expanded(
                              child: otherDates.isEmpty
                                  ? Center(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Text(
                                            'No past tiles yet. Tap + to add a date tile.',
                                          ),
                                          const SizedBox(height: 8),
                                          ElevatedButton.icon(
                                            onPressed: _addTileForDate,
                                            icon: const Icon(Icons.add),
                                            label: const Text('Add date tile'),
                                          ),
                                        ],
                                      ),
                                    )
                                  : ListView.builder(
                                      itemCount: otherDates.length,
                                      itemBuilder: (context, i) {
                                        final d = otherDates[i];
                                        final key = dateKey(d);

                                        return GestureDetector(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) =>
                                                    DayPage(date: d),
                                              ),
                                            );

                                            await _load();
                                            setState(() {});
                                          },
                                          onLongPress: () {
                                            showDialog(
                                              context: context,
                                              builder: (_) => AlertDialog(
                                                title: const Text(
                                                  'Remove tile?',
                                                ),
                                                content: Text(
                                                  'Remove tile for ${displayDate(d)}?',
                                                ),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(context),
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
                                          },
                                          child: Card(
                                            margin: const EdgeInsets.symmetric(
                                              vertical: 8,
                                              horizontal: 4,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(12),
                                              child: Row(
                                                children: [
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        displayDate(d),
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 6),
                                                      Text(
                                                        d.shortName(),
                                                        style: const TextStyle(
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const Spacer(),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        '${_count(key)} events',
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 6),
                                                      const Icon(
                                                        Icons.chevron_right,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
