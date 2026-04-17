import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/forms/diaper.dart';
import 'package:simple_baby_tracker/forms/feeding.dart';
import 'package:simple_baby_tracker/forms/weight.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/forms/sleep.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/summary_header_delegate.dart';
import 'package:simple_baby_tracker/forms/temperature.dart';
import 'package:simple_baby_tracker/tracker_event.dart';


class DayPage extends StatefulWidget {
  const DayPage({super.key, required this.date, required this.babyId});

  final DateTime date;
  final String babyId;

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
    final loaded = await Storage.loadAll(widget.babyId);
    if (mounted) {
      setState(() {
        _data = loaded;
        _loading = false;
      });
    }
  }

  List<TrackerEvent> _events() {
    return (List<TrackerEvent>.from(_data[dateKey(widget.date)] ?? []))
      ..sort((a, b) => a.time.compareTo(b.time));
  }

  Future<void> _save() async {
    await Storage.saveAll(widget.babyId, _data);
    await _load();
  }

  Map<String, int> _totals(List<TrackerEvent> events) {
    int poos = 0, pees = 0, milk = 0, breastMin = 0, sleepMin = 0;
    for (final e in events) {
      if (e.type == 'diaper') {
        if (e.data['poo'] == true) poos++;
        if (e.data['pee'] == true) pees++;
      } else if (e.type == 'feeding') {
        final isBottle = (e.data['isBottle'] as bool?) ?? true;
        if (isBottle) {
          milk += (e.data['amountMl'] as num?)?.toInt() ?? 0;
        } else {
          breastMin += (e.data['durationMin'] as num?)?.toInt() ?? 0;
        }
      } else if (e.type == 'sleep') {
        sleepMin += (e.data['durationMin'] as num?)?.toInt() ?? 0;
      }
    }
    return {
      'poos': poos,
      'pees': pees,
      'milk': milk,
      'breastMinutes': breastMin,
      'sleepMinutes': sleepMin,
    };
  }

  // ─── Last-weight lookup (for WeightForm comparison) ───────────────────────

  ({double kg, DateTime date})? _lastWeight() {
    final allEvents =
        _data.entries
            .expand((e) => e.value.map((ev) => ev))
            .where((e) => e.type == 'weight')
            .where((e) => dateKey(e.time) != dateKey(widget.date))
            .toList()
          ..sort((a, b) => b.time.compareTo(a.time));
    if (allEvents.isEmpty) return null;
    final kg = (allEvents.first.data['valueKg'] as num?)?.toDouble();
    if (kg == null) return null;
    return (kg: kg, date: allEvents.first.time);
  }

  // ─── Last-diaper rash check ───────────────────────────────────────────────

  bool _lastDiaperHadRash() {
    final allDiapers =
        _data.entries
            .expand((e) => e.value)
            .where((e) => e.type == 'diaper')
            .toList()
          ..sort((a, b) => b.time.compareTo(a.time));
    if (allDiapers.isEmpty) return false;
    return allDiapers.first.data['rash'] == true;
  }

  // ─── Add / edit events ────────────────────────────────────────────────────

  Future<void> _add(String type, {TrackerEvent? existing, int? index}) async {
    final key = dateKey(widget.date);
    _data.putIfAbsent(key, () => []);

    void insertOrReplace(TrackerEvent result) {
      if (existing != null && index != null) {
        _data[key]![index] = result;
      } else {
        _data[key]!.add(result);
      }
    }

    switch (type) {
      case 'diaper':
        final result = await showModalBottomSheet<TrackerEvent>(
          context: context,
          isScrollControlled: true,
          builder: (_) => DiaperForm(
            initialDate: widget.date,
            existingEvent: existing,
            previousRash: existing == null ? _lastDiaperHadRash() : false,
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }

      case 'feeding':
        final result = await showModalBottomSheet<dynamic>(
          context: context,
          isScrollControlled: true,
          builder: (_) =>
              FeedingForm(initialDate: widget.date, existingEvent: existing),
        );
        if (result == null) return;
        if (result is List) {
          for (final ev in result.cast<TrackerEvent>()) {
            _data[key]!.add(ev);
          }
        } else if (result is TrackerEvent) {
          insertOrReplace(result);
        }
        await _save();

      case 'sleep':
        final result = await showModalBottomSheet<TrackerEvent>(
          context: context,
          isScrollControlled: true,
          builder: (_) =>
              SleepForm(initialDate: widget.date, existingEvent: existing),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }

      case 'temperature':
        final result = await showModalBottomSheet<TrackerEvent>(
          context: context,
          isScrollControlled: true,
          builder: (_) => TemperatureForm(
            initialDate: widget.date,
            existingEvent: existing,
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }

      case 'weight':
        final lw = _lastWeight();
        final result = await showModalBottomSheet<TrackerEvent>(
          context: context,
          isScrollControlled: true,
          builder: (_) => WeightForm(
            initialDate: widget.date,
            existingEvent: existing,
            lastWeightKg: lw?.kg,
            lastWeightDate: lw?.date,
          ),
        );
        if (result != null) {
          insertOrReplace(result);
          await _save();
        }
    }
  }

  Future<void> _deleteEvent(TrackerEvent event) async {
    final ok = await showDialog<bool>(
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
    if (ok == true) {
      final key = dateKey(widget.date);
      _data[key]?.remove(event);
      if (_data[key]?.isEmpty ?? false) _data.remove(key);
      await _save();
    }
  }

  // ─── Build ────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final events = _events();
    final totals = _totals(events);
    final settings = SettingsProvider.of(context).settings;

    return Scaffold(
      appBar: AppBar(title: Text(displayDate(widget.date))),
      body: events.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.event_note,
                    size: 64,
                    color: Theme.of(context).colorScheme.outline,
                  ),
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
                    sleepMinutes: totals['sleepMinutes']!,
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.only(
                    left: 12,
                    right: 12,
                    bottom: MediaQuery.of(context).padding.bottom + 80,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate((_, i) {
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
                                onPressed: () => Navigator.pop(context, false),
                                child: const Text('Cancel'),
                              ),
                              FilledButton(
                                onPressed: () => Navigator.pop(context, true),
                                child: const Text('Delete'),
                              ),
                            ],
                          ),
                        ),
                        onDismissed: (_) => _deleteEvent(e),
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
                            leading: _eventIcon(e),
                            title: Text(_title(e, settings)),
                            subtitle: Text(
                              '${_subtitle(e, settings)}  •  ${formatTime(e.time)}',
                            ),
                            onTap: () => _add(e.type, existing: e, index: i),
                            trailing: const Icon(Icons.edit, size: 18),
                          ),
                        ),
                      );
                    }, childCount: events.length),
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
            const SizedBox(height: 4),
            ListTile(
              leading: const Icon(
                Icons.baby_changing_station,
                color: Colors.brown,
              ),
              title: const Text('Diaper change'),
              onTap: () => Navigator.pop(context, 'diaper'),
            ),
            ListTile(
              leading: const Icon(Icons.local_drink, color: Colors.pink),
              title: const Text('Feeding'),
              onTap: () => Navigator.pop(context, 'feeding'),
            ),
            ListTile(
              leading: const Icon(Icons.bedtime, color: Colors.indigo),
              title: const Text('Sleep'),
              onTap: () => Navigator.pop(context, 'sleep'),
            ),
            ListTile(
              leading: const Icon(Icons.thermostat, color: Colors.orange),
              title: const Text('Temperature'),
              onTap: () => Navigator.pop(context, 'temperature'),
            ),
            ListTile(
              leading: const Icon(Icons.monitor_weight, color: Colors.teal),
              title: const Text('Weight'),
              onTap: () => Navigator.pop(context, 'weight'),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
    if (type != null) _add(type);
  }

  Widget _eventIcon(TrackerEvent e) {
    final (icon, color) = switch (e.type) {
      'diaper' => (Icons.baby_changing_station, Colors.brown),
      'sleep' => (Icons.bedtime, Colors.indigo),
      'temperature' => (Icons.thermostat, Colors.orange),
      'weight' => (Icons.monitor_weight, Colors.teal),
      _ => (
        (e.data['isBottle'] as bool?) ?? true
            ? Icons.local_drink
            : Icons.child_care,
        Colors.pink,
      ),
    };
    return CircleAvatar(
      backgroundColor: color.withAlpha(30),
      child: Icon(icon, color: color, size: 20),
    );
  }

  String _title(TrackerEvent e, settings) {
    switch (e.type) {
      case 'diaper':
        final pee = e.data['pee'] == true;
        final poo = e.data['poo'] == true;
        final rash = e.data['rash'] == true;
        final base = (pee && poo)
            ? 'Diaper — pee + poo'
            : pee
            ? 'Diaper — pee'
            : poo
            ? 'Diaper — poo'
            : 'Diaper change';
        return rash ? '$base  🔴' : base;
      case 'sleep':
        final min = (e.data['durationMin'] as num?)?.toInt() ?? 0;
        final h = min ~/ 60;
        final rem = min % 60;
        final dur = h > 0 ? '${h}h ${rem}m' : '${rem}m';
        return 'Sleep  ($dur)';
      case 'temperature':
        final c = (e.data['valueCelsius'] as num?)?.toDouble() ?? 0;
        final s = tempSeverity(c);
        final dot = switch (s) {
          'fever' => '🔴',
          'elevated' => '🟠',
          'low' => '🔵',
          _ => '🟢',
        };
        return 'Temperature  $dot';
      case 'weight':
        return 'Weight';
      default:
        final isBottle = (e.data['isBottle'] as bool?) ?? true;
        if (isBottle) {
          final method = e.data['method'] as String? ?? 'breast';
          return method == 'formula'
              ? 'Bottle — formula'
              : 'Bottle — breast milk';
        }
        return 'Breastfeeding (suckle)';
    }
  }

  String _subtitle(TrackerEvent e, dynamic settings) {
    final s = settings as dynamic;
    switch (e.type) {
      case 'diaper':
        final parts = <String>[];
        final cons = e.data['consistency'] as String?;
        if (cons != null) parts.add('Consistency: $cons');
        final size = e.data['size'] as String?;
        if (size != null) parts.add('Size $size');
        final brand = e.data['brand'] as String?;
        if (brand != null) parts.add(brand);
        return parts.isEmpty ? 'No details' : parts.join('  •  ');
      case 'feeding':
        final isBottle = (e.data['isBottle'] as bool?) ?? true;
        if (isBottle) {
          final ml = e.data['amountMl'] ?? 0;
          final brand = e.data['formulaBrand'] as String?;
          return brand != null ? '$ml ml  •  $brand' : '$ml ml';
        }
        return '${e.data['durationMin'] ?? 0} min';
      case 'sleep':
        final notes = e.data['notes'] as String?;
        return notes ?? 'No notes';
      case 'temperature':
        final c = (e.data['valueCelsius'] as num?)?.toDouble() ?? 0.0;
        final sp = s as dynamic;
        // Try to use settings safely
        try {
          return formatTemp(c, useCelsius: (sp.useCelsius as bool?) ?? true);
        } catch (_) {
          return '${c.toStringAsFixed(1)} °C';
        }
      case 'weight':
        final kg = (e.data['valueKg'] as num?)?.toDouble() ?? 0.0;
        try {
          return formatWeight(kg, useKg: (s.useKg as bool?) ?? true);
        } catch (_) {
          return '${kg.toStringAsFixed(3)} kg';
        }
      default:
        return '';
    }
  }
}
