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
  final amountController = TextEditingController();
  final durationController = TextEditingController();
  TimeOfDay time = TimeOfDay.now();

  // feedMode: 'bottle' or 'suckle'
  String feedMode = 'bottle';
  String method = 'breast';

  @override
  void initState() {
    super.initState();

    final existing = widget.existingEvent;
    if (existing != null) {
      // support older saved events: default to bottle if not present
      final isBottle = (existing.data['isBottle'] as bool?) ?? true;
      feedMode = isBottle ? 'bottle' : 'suckle';

      final amount = existing.data['amountMl']?.toString() ?? '';
      amountController.text = amount;

      final duration = existing.data['durationMin']?.toString() ?? '';
      durationController.text = duration;

      method = existing.data['method'] ?? 'breast';

      time = TimeOfDay(hour: existing.time.hour, minute: existing.time.minute);
    }
  }

  @override
  void dispose() {
    amountController.dispose();
    durationController.dispose();
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
            const SizedBox(height: 12),

            // Feed mode selector
            DropdownButtonFormField<String>(
              initialValue: feedMode,
              items: const [
                DropdownMenuItem(value: 'bottle', child: Text('Bottle')),
                DropdownMenuItem(value: 'suckle', child: Text('Suckling (no bottle)')),
              ],
              onChanged: (v) => setState(() => feedMode = v ?? 'bottle'),
              decoration: const InputDecoration(labelText: 'Feed type'),
            ),

            const SizedBox(height: 12),

            // If bottle: show amount and method
            if (feedMode == 'bottle') ...[
              TextField(
                controller: amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Amount (ml)'),
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField<String>(
                initialValue: method,
                items: const [
                  DropdownMenuItem(value: 'breast', child: Text('Breast (bottle)')),
                  DropdownMenuItem(value: 'formula', child: Text('Formula')),
                ],
                onChanged: (v) => setState(() => method = v ?? 'breast'),
                decoration: const InputDecoration(labelText: 'Method'),
              ),
            ] else ...[
              // If not bottle: show duration in minutes
              TextField(
                controller: durationController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(labelText: 'Duration (minutes)'),
              ),
            ],

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

    final isBottle = feedMode == 'bottle';

    final data = <String, Object?>{
      'isBottle': isBottle,
      // keep method only for bottle entries
      if (isBottle) 'method': method,
      // parse amount/duration as ints (defaults to 0)
      'amountMl': isBottle ? (int.tryParse(amountController.text) ?? 0) : 0,
      if (!isBottle) 'durationMin': int.tryParse(durationController.text) ?? 0,
    };

    Navigator.pop(
      context,
      TrackerEvent(
        type: 'feeding',
        time: dt,
        data: data,
      ),
    );
  }
}