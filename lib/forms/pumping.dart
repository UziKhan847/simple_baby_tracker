import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_form_scaffold.dart';

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
    final l = AppLocalizations.of(context)!;

    return AppFormScaffold(
      title: _isEditing ? l.pumpingEdit : l.pumpingLog,
      time: _time,
      onTimeChanged: (t) => setState(() => _time = t),
      ctaLabel: _isEditing ? l.actionUpdate : l.actionSave,
      onSubmit: _save,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left / Right breast amounts
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _leftCtrl,
                  keyboardType: TextInputType.number,
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(
                    labelText: l.pumpingLeft,
                    prefixIcon: const Icon(Icons.arrow_back),
                    border: const OutlineInputBorder(),
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
                  decoration: InputDecoration(
                    labelText: l.pumpingRight,
                    prefixIcon: const Icon(Icons.arrow_forward),
                    border: const OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
              ),
            ],
          ),

          // Total display
          if (_totalMl > 0) ...[
            const SizedBox(height: 10),
            Builder(
              builder: (context) {
                final accent = Theme.of(
                  context,
                ).extension<AppColors>()!.miscStrong;
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: accent.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: accent.withValues(alpha: 0.3)),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.water_drop, color: accent, size: 18),
                      const SizedBox(width: 8),
                      Text(
                        '${l.pumpingTotalMl(_totalMl)} '
                        '(${mlToOz(_totalMl.toDouble()).toStringAsFixed(1)} oz)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: accent,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],

          const SizedBox(height: 12),

          TextField(
            controller: _durationCtrl,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: l.pumpingDuration,
              border: const OutlineInputBorder(),
              isDense: true,
            ),
          ),

          const SizedBox(height: 12),

          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(l.pumpingStored),
            value: _stored,
            onChanged: (v) => setState(() => _stored = v),
          ),

          TextField(
            controller: _notesCtrl,
            decoration: InputDecoration(
              labelText: l.pumpingNotes,
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
