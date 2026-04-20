import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

const _commonMeds = [
  'Tylenol / Panadol',
  'Advil / Nurofen',
  'Infacol',
  'Gripe Water',
  'Vitamin D',
  'Iron drops',
  'Antibiotic',
  'Probiotic',
  'Other',
];

const _doseUnits = ['ml', 'mg', 'drops', 'tablets'];

class MedicationForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const MedicationForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
  });

  @override
  State<MedicationForm> createState() => _MedicationFormState();
}

class _MedicationFormState extends State<MedicationForm> {
  final _nameCtrl = TextEditingController();
  final _doseCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();
  String _unit = 'ml';
  TimeOfDay _time = TimeOfDay.now();
  String? _selectedPreset;
  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      _nameCtrl.text = e.data['name'] as String? ?? '';
      _doseCtrl.text = e.data['dose']?.toString() ?? '';
      _unit = e.data['unit'] as String? ?? 'ml';
      _notesCtrl.text = e.data['notes'] as String? ?? '';
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
    }
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _doseCtrl.dispose();
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
                  _isEditing ? 'Edit medication' : 'Log medication',
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

            // Quick-pick common medications
            Text(
              'Common medications',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 6),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: _commonMeds.map((med) {
                final isOther = med == 'Other';
                final selected = _selectedPreset == med;
                return ChoiceChip(
                  label: Text(med, style: const TextStyle(fontSize: 12)),
                  selected: selected,
                  onSelected: (_) => setState(() {
                    if (isOther) {
                      _selectedPreset = med;
                      _nameCtrl.clear();
                    } else {
                      _selectedPreset = selected ? null : med;
                      if (!selected) _nameCtrl.text = med;
                    }
                  }),
                );
              }).toList(),
            ),

            const SizedBox(height: 12),

            // Custom name field (shown when "Other" picked or no preset)
            TextField(
              controller: _nameCtrl,
              textCapitalization: TextCapitalization.sentences,
              decoration: const InputDecoration(
                labelText: 'Medication name *',
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),

            const SizedBox(height: 12),

            // Dose + unit
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: _doseCtrl,
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    decoration: const InputDecoration(
                      labelText: 'Dose',
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 3,
                  child: DropdownButtonFormField<String>(
                    initialValue: _unit,
                    decoration: const InputDecoration(
                      labelText: 'Unit',
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                    items: _doseUnits
                        .map((u) => DropdownMenuItem(value: u, child: Text(u)))
                        .toList(),
                    onChanged: (v) => setState(() => _unit = v ?? 'ml'),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            // Warning banner for common OTC pain relievers
            if (_nameCtrl.text.toLowerCase().contains('tylenol') ||
                _nameCtrl.text.toLowerCase().contains('panadol') ||
                _nameCtrl.text.toLowerCase().contains('advil') ||
                _nameCtrl.text.toLowerCase().contains('nurofen') ||
                _nameCtrl.text.toLowerCase().contains('ibuprofen'))
              Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.orange.withAlpha(30),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.orange.withAlpha(80)),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.warning_amber_rounded,
                      color: Colors.orange,
                      size: 18,
                    ),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'Always follow dosage instructions for weight/age. Do not exceed recommended frequency.',
                        style: TextStyle(fontSize: 12, color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ),

            TextField(
              controller: _notesCtrl,
              decoration: const InputDecoration(
                labelText: 'Notes (optional)',
                hintText: 'e.g. reason, reaction...',
                border: OutlineInputBorder(),
                isDense: true,
              ),
            ),

            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton(
                onPressed: _nameCtrl.text.trim().isNotEmpty ? _save : null,
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
        type: 'medication',
        time: dt,
        data: {
          'name': _nameCtrl.text.trim(),
          'dose': double.tryParse(_doseCtrl.text) ?? 0,
          'unit': _unit,
          'notes': _notesCtrl.text.trim().isEmpty
              ? null
              : _notesCtrl.text.trim(),
        },
      ),
    );
  }
}
