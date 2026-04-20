import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class DailyNoteForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const DailyNoteForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
  });

  @override
  State<DailyNoteForm> createState() => _DailyNoteFormState();
}

class _DailyNoteFormState extends State<DailyNoteForm> {
  final _titleCtrl = TextEditingController();
  final _textCtrl = TextEditingController();
  TimeOfDay _time = TimeOfDay.now();
  bool get _isEditing => widget.existingEvent != null;

  // Quick-tag suggestions to inspire journaling
  static const _tags = [
    '😊 Happy day',
    '😴 Slept well',
    '😢 Fussy',
    '🤒 Not feeling well',
    '🌟 First time!',
    '💊 Medication',
    '🦷 Teething',
    '📈 Growth spurt',
    '🎉 Milestone',
  ];

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      _titleCtrl.text = e.data['title'] as String? ?? '';
      _textCtrl.text = e.data['text'] as String? ?? '';
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
    }
  }

  @override
  void dispose() {
    _titleCtrl.dispose();
    _textCtrl.dispose();
    super.dispose();
  }

  void _appendTag(String tag) {
    final current = _textCtrl.text;
    _textCtrl.text = current.isEmpty ? tag : '$current\n$tag';
    _textCtrl.selection = TextSelection.collapsed(
      offset: _textCtrl.text.length,
    );
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
                  _isEditing ? 'Edit note' : 'Daily note',
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
            const SizedBox(height: 12),

            // Title (optional)
            TextField(
              controller: _titleCtrl,
              textCapitalization: TextCapitalization.sentences,
              decoration: const InputDecoration(
                labelText: 'Title (optional)',
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),
            const SizedBox(height: 10),

            // Quick tags
            Text('Quick tags', style: Theme.of(context).textTheme.labelSmall),
            const SizedBox(height: 4),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: _tags
                  .map(
                    (tag) => ActionChip(
                      label: Text(tag, style: const TextStyle(fontSize: 12)),
                      onPressed: () => _appendTag(tag),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 10),

            // Main text
            TextField(
              controller: _textCtrl,
              minLines: 4,
              maxLines: 10,
              textCapitalization: TextCapitalization.sentences,
              decoration: const InputDecoration(
                labelText: 'Note',
                hintText:
                    'What happened today? First time rolling? Fussy morning? Doctor notes?',
                border: OutlineInputBorder(),
                alignLabelWithHint: true,
              ),
            ),

            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton(
                onPressed: _textCtrl.text.trim().isNotEmpty ? _save : null,
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
        type: 'note',
        time: dt,
        data: {
          'title': _titleCtrl.text.trim().isEmpty
              ? null
              : _titleCtrl.text.trim(),
          'text': _textCtrl.text.trim(),
        },
      ),
    );
  }
}
