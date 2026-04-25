import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class BathForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const BathForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
  });

  @override
  State<BathForm> createState() => _BathFormState();
}

class _BathFormState extends State<BathForm> {
  String _bathType = 'tub';
  final _productsCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();
  TimeOfDay _time = TimeOfDay.now();
  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      _bathType = e.data['bathType'] as String? ?? 'tub';
      _productsCtrl.text = e.data['products'] as String? ?? '';
      _notesCtrl.text = e.data['notes'] as String? ?? '';
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
    }
  }

  @override
  void dispose() {
    _productsCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final bottomPad = media.viewInsets.bottom > 0
        ? media.viewInsets.bottom
        : media.padding.bottom + 16;

    return Padding(
      padding: EdgeInsets.only(bottom: bottomPad),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  _isEditing ? 'Edit bath' : 'Log bath',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () async {
                    final t = await showTimePicker(
                        context: context, initialTime: _time);
                    if (t != null) setState(() => _time = t);
                  },
                  icon: const Icon(Icons.access_time, size: 18),
                  label: Text(_time.format(context)),
                ),
              ],
            ),
            const SizedBox(height: 16),

            Text('Bath type', style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 8),
            SegmentedButton<String>(
              segments: const [
                ButtonSegment(
                  value: 'sponge',
                  label: Text('Sponge'),
                  icon: Icon(Icons.cleaning_services, size: 14),
                ),
                ButtonSegment(
                  value: 'tub',
                  label: Text('Tub'),
                  icon: Icon(Icons.bathtub, size: 14),
                ),
                ButtonSegment(
                  value: 'shower',
                  label: Text('Shower'),
                  icon: Icon(Icons.shower, size: 14),
                ),
              ],
              selected: {_bathType},
              onSelectionChanged: (s) =>
                  setState(() => _bathType = s.first),
            ),

            const SizedBox(height: 12),

            TextField(
              controller: _productsCtrl,
              textCapitalization: TextCapitalization.sentences,
              decoration: const InputDecoration(
                labelText: 'Products used (optional)',
                hintText: "e.g. Baby Dove wash, Johnson's shampoo...",
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),

            const SizedBox(height: 12),

            TextField(
              controller: _notesCtrl,
              decoration: const InputDecoration(
                labelText: 'Notes (optional)',
                hintText: 'e.g. loved it, fussy, umbilical care...',
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),

            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton(
                onPressed: _save,
                child: Text(_isEditing ? 'Update' : 'Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _save() {
    final d = widget.initialDate;
    final dt = DateTime(d.year, d.month, d.day, _time.hour, _time.minute);
    Navigator.pop(
      context,
      TrackerEvent(
        id: widget.existingEvent?.id,
        type: 'bath',
        time: dt,
        data: {
          'bathType': _bathType,
          'products': _productsCtrl.text.trim().isEmpty
              ? null
              : _productsCtrl.text.trim(),
          'notes': _notesCtrl.text.trim().isEmpty
              ? null
              : _notesCtrl.text.trim(),
        },
      ),
    );
  }
}