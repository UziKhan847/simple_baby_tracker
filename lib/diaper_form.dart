import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class DiaperForm extends StatefulWidget {
  final DateTime initialDate;

  const DiaperForm({super.key, required this.initialDate});

  @override
  State<DiaperForm> createState() => _DiaperFormState();
}

class _DiaperFormState extends State<DiaperForm> {
  String type = 'none';
  TimeOfDay time = TimeOfDay.now();
  String? pooColor;

  final colors = ['Default', 'Brown', 'Green', 'Yellow', 'Black', 'Red', 'Orange'];

  @override
  Widget build(BuildContext context) {
    final inset = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.only(bottom: inset),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Diaper change',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children: [
                ChoiceChip(
                  label: Text('None'),
                  selected: type == 'none',
                  onSelected: (_) => setState(() => type = 'none'),
                ),
                ChoiceChip(
                  label: Text('Pee'),
                  selected: type == 'pee',
                  onSelected: (_) => setState(() => type = 'pee'),
                ),
                ChoiceChip(
                  label: Text('Poo'),
                  selected: type == 'poo',
                  onSelected: (_) => setState(() => type = 'poo'),
                ),
                ChoiceChip(
                  label: Text('Both'),
                  selected: type == 'both',
                  onSelected: (_) => setState(() => type = 'both'),
                ),
              ],
            ),
            SizedBox(height: 12),
            if (type == 'poo' || type == 'both')
              DropdownButtonFormField<String>(
                initialValue: pooColor,
                hint: Text('Poo color'),
                items: colors
                    .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                    .toList(),
                onChanged: (v) => setState(() => pooColor = v),
              ),
            SizedBox(height: 12),
            TextButton(
              onPressed: () async {
                final t = await showTimePicker(
                  context: context,
                  initialTime: time,
                );
                if (t != null) setState(() => time = t);
              },
              child: Text('Time: ${time.format(context)}'),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(onPressed: _save, child: Text('Save')),
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