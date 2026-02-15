import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class FeedingForm extends StatefulWidget {
  final DateTime initialDate;

  const FeedingForm({super.key, required this.initialDate});

  @override
  State<FeedingForm> createState() => _FeedingFormState();
}

class _FeedingFormState extends State<FeedingForm> {
  final controller = TextEditingController();
  TimeOfDay time = TimeOfDay.now();
  String method = 'breast';

  @override
  Widget build(BuildContext context) {
    final inset = MediaQuery.of(context).viewInsets.bottom;

    return Padding(
      padding: EdgeInsets.only(bottom: inset),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: .min,
          crossAxisAlignment: .start,
          children: [
            Text(
              'Feeding',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Amount (ml)'),
            ),
            SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: method,
              items: [
                DropdownMenuItem(value: 'breast', child: Text('Breast')),
                DropdownMenuItem(value: 'formula', child: Text('Formula')),
              ],
              onChanged: (v) => setState(() => method = v!),
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
        type: 'feeding',
        time: dt,
        data: {
          'amountMl': int.tryParse(controller.text) ?? 0,
          'method': method,
        },
      ),
    );
  }
}