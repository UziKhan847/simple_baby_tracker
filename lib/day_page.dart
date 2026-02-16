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
  var data = <String, List<TrackerEvent>>{};

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future _load() async {
    data = await Storage.loadAll();
    setState(() {});
  }

  List<TrackerEvent> _events() {
    final list = data[dateKey(widget.date)] ?? [];
    list.sort((a, b) => a.time.compareTo(b.time));
    return list;
  }

  Future _save() async {
    await Storage.saveAll(data);
    _load();
  }

  Map<String, int> _totals(List<TrackerEvent> events) {
    int poos = 0;
    int pees = 0;
    int milk = 0;

    for (final e in events) {
      if (e.type == 'diaper') {
        if (e.data['poo'] == true) poos++;
        if (e.data['pee'] == true) pees++;
      } else if (e.type == 'feeding') {
        milk += (e.data['amountMl'] as int?) ?? 0;
      }
    }

    return {'poos': poos, 'pees': pees, 'milk': milk};
  }

  Future<void> _add(String type, {TrackerEvent? existing, int? index}) async {
    TrackerEvent? result;

    if (type == 'diaper') {
      result = await showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (_) =>
            DiaperForm(initialDate: widget.date, existingEvent: existing),
      );
    } else {
      result = await showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (_) =>
            FeedingForm(initialDate: widget.date, existingEvent: existing),
      );
    }

    if (result != null) {
      final key = dateKey(widget.date);
      data.putIfAbsent(key, () => <TrackerEvent>[]);

      if (existing != null && index != null) {
        data[key]![index] = result;
      } else {
        data[key]!.add(result);
      }

      await _save();
    }
  }

  Future<void> _deleteEvent(TrackerEvent event) async {
    final key = dateKey(widget.date);

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
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirm == true) {
      data[key]?.remove(event);

      if (data[key]?.isEmpty ?? false) {
        data.remove(key);
      }

      await _save();
    }
  }

  @override
  Widget build(BuildContext context) {
    final events = _events();
    final totals = _totals(events);

    return Scaffold(
      appBar: AppBar(title: Text(displayDate(widget.date))),
      body: events.isEmpty
          ? const Center(child: Text('No entries'))
          : CustomScrollView(
              slivers: [
                SliverPersistentHeader(
                  pinned: true,
                  delegate: SummaryHeaderDelegate(
                    poos: totals['poos']!,
                    pees: totals['pees']!,
                    milk: totals['milk']!,
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom + 16,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate((_, i) {
                      final e = events[i];

                      return Card(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        child: ListTile(
                          title: Text(_title(e)),
                          subtitle: Text('${_subtitle(e)}\n${_time(e.time)}'),
                          isThreeLine: true,
                          onTap: () => _add(e.type, existing: e, index: i),
                          onLongPress: () => _deleteEvent(e),
                          trailing: const Icon(Icons.edit),
                        ),
                      );
                    }, childCount: events.length),
                  ),
                ),
              ],
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          final type = await showModalBottomSheet<String>(
            context: context,
            builder: (_) => SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: const Text('Diaper change'),
                    onTap: () => Navigator.pop(context, 'diaper'),
                  ),
                  ListTile(
                    title: const Text('Feeding'),
                    onTap: () => Navigator.pop(context, 'feeding'),
                  ),
                ],
              ),
            ),
          );
          if (type != null) _add(type);
        },
      ),
    );
  }

  String _time(DateTime t) =>
      '${t.hour.toString().padLeft(2, '0')}:${t.minute.toString().padLeft(2, '0')}';

  String _title(TrackerEvent e) {
    if (e.type == 'diaper') {
      final pee = e.data['pee'];
      final poo = e.data['poo'];
      if (pee && poo) return 'Diaper: pee + poo';
      if (pee) return 'Diaper: pee';
      if (poo) return 'Diaper: poo';
      return 'Diaper change';
    }
    return 'Feeding (${e.data['method']})';
  }

  String _subtitle(TrackerEvent e) {
    if (e.type == 'feeding') {
      return 'Amount: ${e.data['amountMl']} ml';
    }
    return 'Color: ${e.data['pooColor'] ?? '-'}';
  }
}
