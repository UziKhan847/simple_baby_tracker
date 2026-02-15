import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class DiaperForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const DiaperForm({super.key, required this.initialDate, this.existingEvent});

  @override
  State<DiaperForm> createState() => _DiaperFormState();
}

class _DiaperFormState extends State<DiaperForm> {
  String type = 'none';
  TimeOfDay time = TimeOfDay.now();
  String? pooColor;

  final colors = [
    'Default',
    'Brown',
    'Green',
    'Yellow',
    'Black',
    'Red',
    'Orange',
  ];

  @override
  void initState() {
    super.initState();

    final existing = widget.existingEvent;

    if (existing != null) {
      final data = existing.data;

      final pee = data['pee'] == true;
      final poo = data['poo'] == true;

      if (pee && poo) {
        type = 'both';
      } else if (pee) {
        type = 'pee';
      } else if (poo) {
        type = 'poo';
      } else {
        type = 'none';
      }

      pooColor = data['pooColor'];

      time = TimeOfDay(hour: existing.time.hour, minute: existing.time.minute);
    }
  }

  @override
  Widget build(BuildContext context) {
    final inset = MediaQuery.of(context).viewInsets.bottom;
    final isEditing = widget.existingEvent != null;

    return Padding(
      padding: EdgeInsets.only(bottom: inset),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isEditing ? 'Edit diaper change' : 'Diaper change',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children: [
                ChoiceChip(
                  label: const Text('None'),
                  selected: type == 'none',
                  onSelected: (_) => setState(() => type = 'none'),
                ),
                ChoiceChip(
                  label: const Text('Pee'),
                  selected: type == 'pee',
                  onSelected: (_) => setState(() => type = 'pee'),
                ),
                ChoiceChip(
                  label: const Text('Poo'),
                  selected: type == 'poo',
                  onSelected: (_) => setState(() => type = 'poo'),
                ),
                ChoiceChip(
                  label: const Text('Both'),
                  selected: type == 'both',
                  onSelected: (_) => setState(() => type = 'both'),
                ),
              ],
            ),
            const SizedBox(height: 12),
            if (type == 'poo' || type == 'both')
              DropdownButtonFormField<String>(
                value: pooColor,
                hint: const Text('Poo color'),
                items: colors
                    .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                    .toList(),
                onChanged: (v) => setState(() => pooColor = v),
              ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () async {
                final t = await showTimePicker(
                  context: context,
                  initialTime: time,
                );
                if (t != null) {
                  setState(() => time = t);
                }
              },
              child: Text('Time: ${time.format(context)}'),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: _save,
                child: Text(isEditing ? 'Update' : 'Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _save() {
    final d = widget.initialDate;
    final dt = DateTime(d.year, d.month, d.day, time.hour, time.minute);

    Navigator.pop(
      context,
      TrackerEvent(
        type: 'diaper',
        time: dt,
        data: {
          'pee': type == 'pee' || type == 'both',
          'poo': type == 'poo' || type == 'both',
          'pooColor': pooColor,
        },
      ),
    );
  }
}
