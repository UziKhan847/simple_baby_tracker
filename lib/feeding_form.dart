import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class FeedingForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const FeedingForm({super.key, required this.initialDate, this.existingEvent});

  @override
  State<FeedingForm> createState() => _FeedingFormState();
}

class _FeedingFormState extends State<FeedingForm> {
  final controller = TextEditingController();
  TimeOfDay time = TimeOfDay.now();
  String method = 'breast';

  @override
  void initState() {
    super.initState();

    final existing = widget.existingEvent;

    if (existing != null) {
      controller.text = (existing.data['amountMl'] ?? '').toString();

      method = existing.data['method'] ?? 'breast';

      time = TimeOfDay(hour: existing.time.hour, minute: existing.time.minute);
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final bottomInset = media.viewInsets.bottom;
    final bottomSafe = media.padding.bottom;
    final bottomPadding = bottomInset > 0 ? bottomInset : bottomSafe + 16;
    final isEditing = widget.existingEvent != null;

    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isEditing ? 'Edit feeding' : 'Feeding',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Amount (ml)'),
            ),
            const SizedBox(height: 12),
            DropdownButtonFormField<String>(
              initialValue: method,
              items: const [
                DropdownMenuItem(value: 'breast', child: Text('Breast')),
                DropdownMenuItem(value: 'formula', child: Text('Formula')),
              ],
              onChanged: (v) => setState(() => method = v ?? 'breast'),
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
