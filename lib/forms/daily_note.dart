import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/theme/category_style.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_avatar.dart';
import 'package:simple_baby_tracker/widgets/app_form_scaffold.dart';

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
  // (icon, colour pair, text) — the text is what gets appended to the note.
  static List<(String, String, String)> _tags(AppLocalizations l) => [
    (AppIcons.faceHappy, 'feeding', l.noteTagHappyDay),
    (AppIcons.faceSleepy, 'sleep', l.noteTagSleptWell),
    (AppIcons.faceSad, 'weight', l.noteTagFussy),
    (AppIcons.faceSick, 'temperature', l.noteTagNotWell),
    (AppIcons.milestones, 'note', l.noteTagFirstTime),
    (AppIcons.medication, 'medication', l.entryTypeMedication),
    (AppIcons.tooth, 'misc', l.noteTagTeething),
    (AppIcons.growthSpurt, 'growth', l.noteTagGrowthSpurt),
    (AppIcons.celebrate, 'diaper', l.noteTagMilestone),
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
    final l = AppLocalizations.of(context)!;
    return AppFormScaffold(
      title: _isEditing ? l.dailyNoteEdit : l.dailyNoteLog,
      time: _time,
      onTimeChanged: (t) => setState(() => _time = t),
      ctaLabel: _isEditing ? l.actionUpdate : l.actionSave,
      onSubmit: _textCtrl.text.trim().isNotEmpty ? _save : () {},
      ctaEnabled: _textCtrl.text.trim().isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title (optional)
          TextField(
            controller: _titleCtrl,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              labelText: l.dailyNoteTitle,
              border: const OutlineInputBorder(),
              isDense: true,
            ),
          ),
          const SizedBox(height: 10),

          // Quick tags
          Text(l.dailyNoteTags, style: Theme.of(context).textTheme.labelSmall),
          const SizedBox(height: 4),
          Wrap(
            spacing: 6,
            runSpacing: 4,
            children: _tags(l).map((tag) {
              final (icon, pairName, text) = tag;
              final (strong, soft) = colorPairNamed(
                pairName,
                Theme.of(context).extension<AppColors>()!,
              );
              return ActionChip(
                avatar: AppAvatar(icon, strong: strong, soft: soft, size: 24),
                label: Text(text, style: const TextStyle(fontSize: 12)),
                onPressed: () => _appendTag(text),
              );
            }).toList(),
          ),
          const SizedBox(height: 10),

          // Main text
          TextField(
            controller: _textCtrl,
            minLines: 4,
            maxLines: 10,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              labelText: l.dailyNoteText,
              hintText: l.dailyNoteHint,
              border: const OutlineInputBorder(),
              alignLabelWithHint: true,
            ),
          ),
        ],
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
