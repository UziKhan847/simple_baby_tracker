import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_form_scaffold.dart';

class SleepForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const SleepForm({super.key, required this.initialDate, this.existingEvent});

  @override
  State<SleepForm> createState() => _SleepFormState();
}

class _SleepFormState extends State<SleepForm> {
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

  String _durationLabel(AppLocalizations l) {
    final m = _durationMinutes;
    if (m <= 0) return l.sleepInvalidTimes;
    final h = m ~/ 60;
    final rem = m % 60;
    // Build a human-readable duration string then pass to the l10n key
    final durStr = h == 0
        ? '${rem}min'
        : rem == 0
        ? '${h}h'
        : '${h}h ${rem}min';
    return l.sleepDuration(durStr);
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    return AppFormScaffold(
      title: _isEditing ? l.editSleep : l.logSleep,
      time: _startTime,
      onTimeChanged: (t) => setState(() => _startTime = t),
      ctaLabel: _isEditing ? l.actionUpdate : l.actionSave,
      onSubmit: _durationMinutes > 0 ? _save : () {},
      ctaEnabled: _durationMinutes > 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Wake-up time (start time is set via the header time pill)
          _TimePicker(
            label: l.sleepWakeUp,
            time: _endTime,
            onTap: () async {
              final t = await showTimePicker(
                context: context,
                initialTime: _endTime,
              );
              if (t != null) setState(() => _endTime = t);
            },
          ),

          const SizedBox(height: 12),

          // Duration display
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(
              color: Theme.of(
                context,
              ).colorScheme.secondaryContainer.withAlpha(100),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.bedtime,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                const SizedBox(width: 8),
                Text(
                  _durationLabel(l),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
                ),
                if (_durationMinutes <= 0)
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      l.sleepWrapsNextDay,
                      style: const TextStyle(fontSize: 11, color: Colors.grey),
                    ),
                  ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          TextField(
            controller: _notesCtrl,
            decoration: InputDecoration(
              labelText: l.sleepNotes,
              hintText: l.sleepNotesHint,
              border: const OutlineInputBorder(),
              isDense: true,
            ),
          ),
        ],
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
        type: 'sleep',
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
