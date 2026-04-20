import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

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
    final media = MediaQuery.of(context);
    final bottomPad = media.viewInsets.bottom > 0
        ? media.viewInsets.bottom
        : media.padding.bottom + 16;
    final useKg = SettingsProvider.of(context).settings.useKg;

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
                  _isEditing ? 'Edit doctor visit' : 'Doctor visit',
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

            // Doctor name
            TextField(
              controller: _doctorCtrl,
              textCapitalization: TextCapitalization.words,
              decoration: const InputDecoration(
                labelText: 'Doctor / clinic name',
                prefixIcon: Icon(Icons.local_hospital_outlined),
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),
            const SizedBox(height: 12),

            // Visit reason
            DropdownButtonFormField<String>(
              initialValue: _reason,
              decoration: const InputDecoration(
                labelText: 'Reason for visit',
                border: OutlineInputBorder(),
                isDense: true,
              ),
              items: _visitReasons
                  .map((r) => DropdownMenuItem(value: r, child: Text(r)))
                  .toList(),
              onChanged: (v) => setState(() => _reason = v ?? _reason),
            ),
            const SizedBox(height: 16),

            // Measurements section
            Text(
              'Measurements (optional)',
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
                      labelText: useKg ? 'Weight (kg)' : 'Weight (lbs)',
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
                    decoration: const InputDecoration(
                      labelText: 'Length / height (cm)',
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _headCtrl,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              decoration: const InputDecoration(
                labelText: 'Head circumference (cm)',
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),
            const SizedBox(height: 12),

            // Notes
            TextField(
              controller: _notesCtrl,
              minLines: 2,
              maxLines: 5,
              decoration: const InputDecoration(
                labelText: 'Notes',
                hintText: 'e.g. vaccinations given, doctor recommendations...',
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
    final useKg = SettingsProvider.of(context).settings.useKg;

    // Convert weight to kg for storage
    double? weightKg;
    final wv = double.tryParse(_weightCtrl.text);
    if (wv != null) weightKg = useKg ? wv : lbsToKg(wv);

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
          if (double.tryParse(_heightCtrl.text) != null)
            'heightCm': double.parse(_heightCtrl.text),
          if (double.tryParse(_headCtrl.text) != null)
            'headCm': double.parse(_headCtrl.text),
        },
      ),
    );
  }
}
