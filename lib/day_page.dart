import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/diaper_form.dart';
import 'package:simple_baby_tracker/feeding_form.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/storage.dart';
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

  List _events() {
    final list = data[dateKey(widget.date)] ?? [];
    list.sort((a, b) => a.time.compareTo(b.time));
    return list;
  }

  Future _save() async {
    await Storage.saveAll(data);
    _load();
  }

  Future _add(String type) async {
    TrackerEvent? result;

    if (type == 'diaper') {
      result = await showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (_) => DiaperForm(initialDate: widget.date),
      );
    } else {
      result = await showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (_) => FeedingForm(initialDate: widget.date),
      );
    }
    if (result != null) {
      final key = dateKey(widget.date);
      data.putIfAbsent(key, () => <TrackerEvent>[]).add(result);
      _save();
    }
  }

  @override
  Widget build(BuildContext context) {
    final events = _events();

    return Scaffold(
      appBar: AppBar(title: Text(displayDate(widget.date))),
      body: events.isEmpty
          ? Center(child: Text('No entries'))
          : ListView.builder(
              itemCount: events.length,
              itemBuilder: (_, i) {
                final e = events[i];
                return Card(
                  child: ListTile(
                    title: Text(_title(e)),
                    subtitle: Text('${_subtitle(e)}\n${_time(e.time)}'),
                    isThreeLine: true,
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          final type = await showModalBottomSheet<String>(
            context: context,
            builder: (_) => SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    title: Text('Diaper change'),
                    onTap: () => Navigator.pop(context, 'diaper'),
                  ),
                  ListTile(
                    title: Text('Feeding'),
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
