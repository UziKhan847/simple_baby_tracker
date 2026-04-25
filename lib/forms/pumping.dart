import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class PumpingForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const PumpingForm({super.key, required this.initialDate, this.existingEvent});

  @override
  State<PumpingForm> createState() => _PumpingFormState();
}

class _PumpingFormState extends State<PumpingForm> {
  final _leftCtrl = TextEditingController();
  final _rightCtrl = TextEditingController();
  final _durationCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();
  TimeOfDay _time = TimeOfDay.now();
  bool _stored = false;
  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      _leftCtrl.text = e.data['leftMl']?.toString() ?? '';
      _rightCtrl.text = e.data['rightMl']?.toString() ?? '';
      _durationCtrl.text = e.data['durationMin']?.toString() ?? '';
      _notesCtrl.text = e.data['notes'] as String? ?? '';
      _stored = e.data['stored'] == true;
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
    }
  }

  @override
  void dispose() {
    _leftCtrl.dispose();
    _rightCtrl.dispose();
    _durationCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  int get _totalMl {
    final l = int.tryParse(_leftCtrl.text) ?? 0;
    final r = int.tryParse(_rightCtrl.text) ?? 0;
    return l + r;
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
                  _isEditing ? 'Edit pumping session' : 'Log pumping session',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () async {
                    final t = await showTimePicker(
                      context: context,
                      initialTime: _time,
                    );
                    if (t != null) setState(() => _time = t);
                  },
                  icon: const Icon(Icons.access_time, size: 18),
                  label: Text(_time.format(context)),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Left / Right breast amounts
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _leftCtrl,
                    keyboardType: TextInputType.number,
                    onChanged: (_) => setState(() {}),
                    decoration: const InputDecoration(
                      labelText: 'Left breast (ml)',
                      prefixIcon: Icon(Icons.arrow_back),
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: TextField(
                    controller: _rightCtrl,
                    keyboardType: TextInputType.number,
                    onChanged: (_) => setState(() {}),
                    decoration: const InputDecoration(
                      labelText: 'Right breast (ml)',
                      prefixIcon: Icon(Icons.arrow_forward),
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),
              ],
            ),

            // Total display
            if (_totalMl > 0) ...[
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.purple.withAlpha(20),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.purple.withAlpha(80)),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.water_drop,
                      color: Colors.purple,
                      size: 18,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      'Total: $_totalMl ml',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ),
            ],

            const SizedBox(height: 12),

            TextField(
              controller: _durationCtrl,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Duration (minutes)',
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),

            const SizedBox(height: 12),

            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Stored / frozen'),
              subtitle: const Text('Milk was stored for later use'),
              value: _stored,
              onChanged: (v) => setState(() => _stored = v),
            ),

            TextField(
              controller: _notesCtrl,
              decoration: const InputDecoration(
                labelText: 'Notes (optional)',
                hintText: 'e.g. letdown issues, supply notes...',
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
        type: 'pumping',
        time: dt,
        data: {
          'leftMl': int.tryParse(_leftCtrl.text) ?? 0,
          'rightMl': int.tryParse(_rightCtrl.text) ?? 0,
          'totalMl': _totalMl,
          'durationMin': int.tryParse(_durationCtrl.text) ?? 0,
          'stored': _stored,
          'notes': _notesCtrl.text.trim().isEmpty
              ? null
              : _notesCtrl.text.trim(),
        },
      ),
    );
  }
}
