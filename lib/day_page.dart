import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/diaper_form.dart';
import 'package:simple_baby_tracker/feeding_form.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/summary_header_delegate.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class DayPage extends StatefulWidget {
  const DayPage({super.key, required this.date});

  final DateTime date;

  @override
  State<DayPage> createState() => _DayPageState();
}

class _DayPageState extends State<DayPage> {
  Map<String, List<TrackerEvent>> _data = {};
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    final loaded = await Storage.loadAll();
    setState(() {
      _data = loaded;
      _loading = false;
    });
  }

  List<TrackerEvent> _events() {
    final list = List<TrackerEvent>.from(_data[dateKey(widget.date)] ?? []);
    list.sort((a, b) => a.time.compareTo(b.time));
    return list;
  }

  Future<void> _save() async {
    await Storage.saveAll(_data);
    await _load();
  }

  Map<String, int> _totals(List<TrackerEvent> events) {
    int poos = 0, pees = 0, milk = 0, breastMinutes = 0;
    for (final e in events) {
      if (e.type == 'diaper') {
        if (e.data['poo'] == true) poos++;
        if (e.data['pee'] == true) pees++;
      } else if (e.type == 'feeding') {
        final isBottle = (e.data['isBottle'] as bool?) ?? true;
        if (isBottle) {
          milk += (e.data['amountMl'] as num?)?.toInt() ?? 0;
        } else {
          breastMinutes += (e.data['durationMin'] as num?)?.toInt() ?? 0;
        }
      }
    }
    return {
      'poos': poos,
      'pees': pees,
      'milk': milk,
      'breastMinutes': breastMinutes,
    };
  }

  Future<void> _add(String type, {TrackerEvent? existing, int? index}) async {
    final key = dateKey(widget.date);

    if (type == 'diaper') {
      final result = await showModalBottomSheet<TrackerEvent>(
        context: context,
        isScrollControlled: true,
        builder: (_) =>
            DiaperForm(initialDate: widget.date, existingEvent: existing),
      );
      if (result != null) {
        _data.putIfAbsent(key, () => []);
        if (existing != null && index != null) {
          _data[key]![index] = result;
        } else {
          _data[key]!.add(result);
        }
        await _save();
      }
    } else {
      // Feeding form returns either a single TrackerEvent or List<TrackerEvent>
      final result = await showModalBottomSheet<dynamic>(
        context: context,
        isScrollControlled: true,
        builder: (_) =>
            FeedingForm(initialDate: widget.date, existingEvent: existing),
      );

      if (result == null) return;
      _data.putIfAbsent(key, () => []);

      if (result is List) {
        // Multiple feeds added at once
        for (final event in result.cast<TrackerEvent>()) {
          _data[key]!.add(event);
        }
      } else if (result is TrackerEvent) {
        if (existing != null && index != null) {
          _data[key]![index] = result;
        } else {
          _data[key]!.add(result);
        }
      }
      await _save();
    }
  }

  Future<void> _deleteEvent(TrackerEvent event) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Delete entry?'),
        content: const Text('This cannot be undone.'),
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

    if (confirm == true) {
      final key = dateKey(widget.date);
      _data[key]?.remove(event);
      if (_data[key]?.isEmpty ?? false) _data.remove(key);
      await _save();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final events = _events();
    final totals = _totals(events);

    return Scaffold(
      appBar: AppBar(title: Text(displayDate(widget.date))),
      body: events.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.event_note,
                      size: 64,
                      color: Theme.of(context).colorScheme.outline),
                  const SizedBox(height: 12),
                  const Text('No entries yet'),
                  const SizedBox(height: 8),
                  FilledButton.icon(
                    onPressed: _showAddSheet,
                    icon: const Icon(Icons.add),
                    label: const Text('Add entry'),
                  ),
                ],
              ),
            )
          : CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: SummaryHeaderDelegate(
                    poos: totals['poos']!,
                    pees: totals['pees']!,
                    milk: totals['milk']!,
                    breastMinutes: totals['breastMinutes']!,
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(
                    left: 12,
                    right: 12,
                    bottom: MediaQuery.of(context).padding.bottom + 80,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (_, i) {
                        final e = events[i];
                        return Dismissible(
                          key: ValueKey(e.id),
                          direction: DismissDirection.endToStart,
                          confirmDismiss: (_) async => await showDialog<bool>(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: const Text('Delete entry?'),
                              content: const Text('This cannot be undone.'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(context, false),
                                  child: const Text('Cancel'),
                                ),
                                FilledButton(
                                  onPressed: () =>
                                      Navigator.pop(context, true),
                                  child: const Text('Delete'),
                                ),
                              ],
                            ),
                          ),
                          onDismissed: (_) => _deleteEvent(e),
                          background: Container(
                            alignment: Alignment.centerRight,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:
                                const Icon(Icons.delete, color: Colors.white),
                          ),
                          child: Card(
                            margin: const EdgeInsets.symmetric(vertical: 4),
                            child: ListTile(
                              leading: _eventIcon(e),
                              title: Text(_title(e)),
                              subtitle: Text(
                                  '${_subtitle(e)}  •  ${formatTime(e.time)}'),
                              onTap: () => _add(e.type, existing: e, index: i),
                              trailing: const Icon(Icons.edit, size: 18),
                            ),
                          ),
                        );
                      },
                      childCount: events.length,
                    ),
                  ),
                ),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddSheet,
        child: const Icon(Icons.add),
      ),
    );
  }

  Future<void> _showAddSheet() async {
    final type = await showModalBottomSheet<String>(
      context: context,
      builder: (_) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 8),
            ListTile(
              leading: const Icon(Icons.baby_changing_station),
              title: const Text('Diaper change'),
              onTap: () => Navigator.pop(context, 'diaper'),
            ),
            ListTile(
              leading: const Icon(Icons.local_drink),
              title: const Text('Feeding'),
              onTap: () => Navigator.pop(context, 'feeding'),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
    if (type != null) _add(type);
  }

  Widget _eventIcon(TrackerEvent e) {
    if (e.type == 'diaper') {
      return CircleAvatar(
        backgroundColor: Colors.brown.withAlpha(30),
        child: const Icon(Icons.baby_changing_station, color: Colors.brown, size: 20),
      );
    }
    final isBottle = (e.data['isBottle'] as bool?) ?? true;
    return CircleAvatar(
      backgroundColor: Colors.pink.withAlpha(30),
      child: Icon(
        isBottle ? Icons.local_drink : Icons.child_care,
        color: Colors.pink,
        size: 20,
      ),
    );
  }

  String _title(TrackerEvent e) {
    if (e.type == 'diaper') {
      final pee = e.data['pee'] == true;
      final poo = e.data['poo'] == true;
      if (pee && poo) return 'Diaper — pee + poo';
      if (pee) return 'Diaper — pee';
      if (poo) return 'Diaper — poo';
      return 'Diaper change';
    }
    final isBottle = (e.data['isBottle'] as bool?) ?? true;
    if (isBottle) {
      final method = e.data['method'] as String? ?? 'bottle';
      return 'Bottle (${method == 'breast' ? 'breast milk' : 'formula'})';
    }
    return 'Breastfeeding (suckle)';
  }

  String _subtitle(TrackerEvent e) {
    if (e.type == 'feeding') {
      final isBottle = (e.data['isBottle'] as bool?) ?? true;
      if (isBottle) return '${e.data['amountMl'] ?? 0} ml';
      return '${e.data['durationMin'] ?? 0} min';
    }
    final color = e.data['pooColor'];
    return color != null ? 'Colour: $color' : 'No colour recorded';
  }
}