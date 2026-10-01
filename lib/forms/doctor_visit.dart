import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/labels.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_form_scaffold.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';

/// Stored in English (see labels.dart), shown via [visitReasonLabel].
const _visitReasons = [
  'Routine check-up',
  'Sick visit',
  'Vaccination',
  'Specialist',
  'Follow-up',
  'Other',
];

class DoctorVisitForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const DoctorVisitForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
  });

  @override
  State<DoctorVisitForm> createState() => _DoctorVisitFormState();
}

class _DoctorVisitFormState extends State<DoctorVisitForm> {
  final _doctorCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();
  final _weightCtrl = TextEditingController();
  final _heightCtrl = TextEditingController();
  final _headCtrl = TextEditingController();
  String _reason = 'Routine check-up';
  TimeOfDay _time = TimeOfDay.now();
  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      _doctorCtrl.text = e.data['doctorName'] as String? ?? '';
      _reason = e.data['reason'] as String? ?? 'Routine check-up';
      _notesCtrl.text = e.data['notes'] as String? ?? '';
      _weightCtrl.text = e.data['weightKg']?.toString() ?? '';
      _heightCtrl.text = e.data['heightCm']?.toString() ?? '';
      _headCtrl.text = e.data['headCm']?.toString() ?? '';
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
    }
  }

  bool _unitsApplied = false;

  /// Imperial users see (and type) lbs and inches; storage is kg / cm.
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_unitsApplied) return;
    _unitsApplied = true;
    final e = widget.existingEvent;
    if (e == null || SettingsProvider.of(context).settings.useKg) return;
    final kg = (e.data['weightKg'] as num?)?.toDouble();
    if (kg != null) _weightCtrl.text = kgToLbs(kg).toStringAsFixed(2);
    final height = (e.data['heightCm'] as num?)?.toDouble();
    if (height != null) _heightCtrl.text = lengthValue(height, useCm: false);
    final head = (e.data['headCm'] as num?)?.toDouble();
    if (head != null) _headCtrl.text = lengthValue(head, useCm: false);
  }

  @override
  void dispose() {
    _doctorCtrl.dispose();
    _notesCtrl.dispose();
    _weightCtrl.dispose();
    _heightCtrl.dispose();
    _headCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final useKg = SettingsProvider.of(context).settings.useKg;
    // Reasons typed in before they were fixed ids (or any unknown value)
    // still need to be selectable, or the dropdown asserts.
    final reasons = [
      ..._visitReasons,
      if (!_visitReasons.contains(_reason)) _reason,
    ];

    return AppFormScaffold(
      title: _isEditing ? l.doctorVisitEdit : l.doctorVisitLog,
      time: _time,
      onTimeChanged: (t) => setState(() => _time = t),
      ctaLabel: _isEditing ? l.actionUpdate : l.actionSave,
      onSubmit: _save,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Doctor name
          TextField(
            controller: _doctorCtrl,
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(
              labelText: l.doctorName,
              prefixIcon: const AppIcon(AppIcons.doctorVisit),
              border: const OutlineInputBorder(),
              isDense: true,
            ),
          ),
          const SizedBox(height: 12),

          // Visit reason
          DropdownButtonFormField<String>(
            initialValue: _reason,
            decoration: InputDecoration(
              labelText: l.doctorVisitReason,
              border: const OutlineInputBorder(),
              isDense: true,
            ),
            items: reasons
                .map(
                  (r) => DropdownMenuItem(
                    value: r,
                    child: Text(visitReasonLabel(r, l)),
                  ),
                )
                .toList(),
            onChanged: (v) => setState(() => _reason = v ?? _reason),
          ),
          const SizedBox(height: 16),

          // Measurements section
          Text(
            l.doctorVisitMeasurements,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _weightCtrl,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: InputDecoration(
                    labelText: useKg
                        ? l.measurementWeightKg
                        : l.measurementWeightLbs,
                    border: const OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: _heightCtrl,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: InputDecoration(
                    labelText: useKg
                        ? l.measurementHeightCm
                        : l.measurementHeightIn,
                    border: const OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          TextField(
            controller: _headCtrl,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(
              labelText: useKg ? l.measurementHeadCm : l.measurementHeadIn,
              border: const OutlineInputBorder(),
              isDense: true,
            ),
          ),
          const SizedBox(height: 12),

          // Notes
          TextField(
            controller: _notesCtrl,
            minLines: 2,
            maxLines: 5,
            decoration: InputDecoration(
              labelText: l.doctorVisitNotes,
              hintText: l.doctorVisitNotesHint,
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
    final useKg = SettingsProvider.of(context).settings.useKg;

    // Convert weight to kg for storage
    double? weightKg;
    final wv = double.tryParse(_weightCtrl.text);
    if (wv != null) weightKg = useKg ? wv : lbsToKg(wv);
    double? toCm(String text) {
      final v = double.tryParse(text);
      if (v == null) return null;
      return useKg ? v : inToCm(v);
    }

    final heightCm = toCm(_heightCtrl.text);
    final headCm = toCm(_headCtrl.text);

    Navigator.pop(
      context,
      TrackerEvent(
        id: widget.existingEvent?.id,
        type: 'doctor_visit',
        time: dt,
        data: {
          'doctorName': _doctorCtrl.text.trim().isEmpty
              ? null
              : _doctorCtrl.text.trim(),
          'reason': _reason,
          'notes': _notesCtrl.text.trim().isEmpty
              ? null
              : _notesCtrl.text.trim(),
          'weightKg': ?weightKg,
          'heightCm': ?heightCm,
          'headCm': ?headCm,
        },
      ),
    );
  }
}
