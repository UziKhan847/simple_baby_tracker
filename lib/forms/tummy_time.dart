import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class TummyTimeForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const TummyTimeForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
  });

  @override
  State<TummyTimeForm> createState() => _TummyTimeFormState();
}

class _TummyTimeFormState extends State<TummyTimeForm> {
  TimeOfDay _startTime = TimeOfDay.now();
  TimeOfDay _endTime = TimeOfDay.now();
  final _notesCtrl = TextEditingController();
  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      _startTime = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
      final endIso = e.data['endTime'] as String?;
      if (endIso != null) {
        final end = DateTime.parse(endIso);
        _endTime = TimeOfDay(hour: end.hour, minute: end.minute);
      }
      _notesCtrl.text = e.data['notes'] as String? ?? '';
    }
  }

  @override
  void dispose() {
    _notesCtrl.dispose();
    super.dispose();
  }

  int get _durationMinutes {
    final d = widget.initialDate;
    var start = DateTime(
      d.year,
      d.month,
      d.day,
      _startTime.hour,
      _startTime.minute,
    );
    var end = DateTime(d.year, d.month, d.day, _endTime.hour, _endTime.minute);
    if (end.isBefore(start)) end = end.add(const Duration(days: 1));
    return end.difference(start).inMinutes;
  }

  String _durationLabel() {
    final m = _durationMinutes;
    if (m <= 0) return 'Invalid times';
    if (m < 60) return '$m min';
    return '${m ~/ 60}h ${m % 60}min';
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
            Text(
              _isEditing ? 'Edit tummy time' : 'Log tummy time',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Tummy time strengthens neck and shoulder muscles.',
              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(color: Colors.grey),
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: _TimePicker(
                    label: 'Start time',
                    time: _startTime,
                    onTap: () async {
                      final t = await showTimePicker(
                        context: context,
                        initialTime: _startTime,
                      );
                      if (t != null) setState(() => _startTime = t);
                    },
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _TimePicker(
                    label: 'End time',
                    time: _endTime,
                    onTap: () async {
                      final t = await showTimePicker(
                        context: context,
                        initialTime: _endTime,
                      );
                      if (t != null) setState(() => _endTime = t);
                    },
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.green.withAlpha(25),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.green.withAlpha(80)),
              ),
              child: Row(
                children: [
                  const Icon(Icons.child_care, color: Colors.green),
                  const SizedBox(width: 8),
                  Text(
                    'Duration: ${_durationLabel()}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 12),

            TextField(
              controller: _notesCtrl,
              decoration: const InputDecoration(
                labelText: 'Notes (optional)',
                hintText: 'e.g. enjoyed it, fussy...',
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),

            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton(
                onPressed: _durationMinutes > 0 ? _save : null,
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
    final startDt = DateTime(
      d.year,
      d.month,
      d.day,
      _startTime.hour,
      _startTime.minute,
    );
    var endDt = DateTime(
      d.year,
      d.month,
      d.day,
      _endTime.hour,
      _endTime.minute,
    );
    if (endDt.isBefore(startDt)) endDt = endDt.add(const Duration(days: 1));

    Navigator.pop(
      context,
      TrackerEvent(
        id: widget.existingEvent?.id,
        type: 'tummy_time',
        time: startDt,
        data: {
          'endTime': endDt.toIso8601String(),
          'durationMin': endDt.difference(startDt).inMinutes,
          'notes': _notesCtrl.text.trim().isEmpty
              ? null
              : _notesCtrl.text.trim(),
        },
      ),
    );
  }
}

class _TimePicker extends StatelessWidget {
  final String label;
  final TimeOfDay time;
  final VoidCallback onTap;
  const _TimePicker({
    required this.label,
    required this.time,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        decoration: BoxDecoration(
          border: Border.all(color: Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 11, color: Colors.grey),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.access_time, size: 16),
                const SizedBox(width: 4),
                Text(
                  time.format(context),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
