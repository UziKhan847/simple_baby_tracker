import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_form_scaffold.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';

class BathForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const BathForm({super.key, required this.initialDate, this.existingEvent});

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
    final l = AppLocalizations.of(context)!;

    return AppFormScaffold(
      title: _isEditing ? l.bathEdit : l.bathLog,
      time: _time,
      onTimeChanged: (t) => setState(() => _time = t),
      ctaLabel: _isEditing ? l.actionUpdate : l.actionSave,
      onSubmit: _save,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(l.bathType, style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 8),
          SegmentedButton<String>(
            segments: [
              ButtonSegment(
                value: 'sponge',
                label: Text(l.bathTypeSponge),
                icon: const AppIcon(AppIcons.sponge, size: 14),
              ),
              ButtonSegment(
                value: 'tub',
                label: Text(l.bathTypeTub),
                icon: const AppIcon(AppIcons.bath, size: 14),
              ),
              ButtonSegment(
                value: 'shower',
                label: Text(l.bathTypeShower),
                icon: const AppIcon(AppIcons.shower, size: 14),
              ),
            ],
            selected: {_bathType},
            onSelectionChanged: (s) => setState(() => _bathType = s.first),
          ),

          const SizedBox(height: 12),

          TextField(
            controller: _productsCtrl,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              labelText: l.bathProducts,
              border: const OutlineInputBorder(),
              isDense: true,
            ),
          ),

          const SizedBox(height: 12),

          TextField(
            controller: _notesCtrl,
            decoration: InputDecoration(
              labelText: l.bathNotes,
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
