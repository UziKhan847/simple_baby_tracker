import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class DiaperForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const DiaperForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
  });

  @override
  State<DiaperForm> createState() => _DiaperFormState();
}

class _DiaperFormState extends State<DiaperForm> {
  String _type = 'none'; // 'none' | 'pee' | 'poo' | 'both'
  TimeOfDay _time = TimeOfDay.now();
  String? _pooColor;

  static const _pooOptions = [
    {'id': '1', 'label': '1', 'name': 'Pale 1', 'abnormal': true},
    {'id': '2', 'label': '2', 'name': 'Pale 2', 'abnormal': true},
    {'id': '3', 'label': '3', 'name': 'Pale 3', 'abnormal': true},
    {'id': '4', 'label': '4', 'name': 'Pale 4', 'abnormal': true},
    {'id': '5', 'label': '5', 'name': 'Pale 5', 'abnormal': true},
    {'id': '6', 'label': '6', 'name': 'Pale 6', 'abnormal': true},
    {'id': '7', 'label': '7', 'name': 'Normal 7', 'abnormal': false},
    {'id': '8', 'label': '8', 'name': 'Normal 8', 'abnormal': false},
    {'id': '9', 'label': '9', 'name': 'Normal 9', 'abnormal': false},
  ];

  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();
    final existing = widget.existingEvent;
    if (existing != null) {
      final pee = existing.data['pee'] == true;
      final poo = existing.data['poo'] == true;
      _type = (pee && poo)
          ? 'both'
          : pee
              ? 'pee'
              : poo
                  ? 'poo'
                  : 'none';
      _pooColor = existing.data['pooColor']?.toString();
      _time =
          TimeOfDay(hour: existing.time.hour, minute: existing.time.minute);
    }
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final bottomPadding = media.viewInsets.bottom > 0
        ? media.viewInsets.bottom
        : media.padding.bottom + 16;

    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  _isEditing ? 'Edit diaper change' : 'Diaper change',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: _pickTime,
                  icon: const Icon(Icons.access_time, size: 18),
                  label: Text(_time.format(context)),
                ),
              ],
            ),
            const SizedBox(height: 12),

            SegmentedButton<String>(
              segments: const [
                ButtonSegment(value: 'none', label: Text('None')),
                ButtonSegment(
                    value: 'pee',
                    label: Text('Pee'),
                    icon: Icon(Icons.water_drop, size: 16)),
                ButtonSegment(
                    value: 'poo',
                    label: Text('Poo'),
                    icon: Icon(Icons.baby_changing_station, size: 16)),
                ButtonSegment(value: 'both', label: Text('Both')),
              ],
              selected: {_type},
              onSelectionChanged: (s) => setState(() => _type = s.first),
            ),

            if (_type == 'poo' || _type == 'both') ...[
              const SizedBox(height: 16),
              Text(
                'Select poo colour',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(height: 4),
              _buildColorGroup('⚠️ Abnormal (pale)', true),
              const SizedBox(height: 12),
              _buildColorGroup('✅ Normal', false),
              if (_pooColor != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(
                    'Selected: ${_optionLabel(_pooColor!)}',
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
            ],

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

  Future<void> _pickTime() async {
    final t = await showTimePicker(context: context, initialTime: _time);
    if (t != null) setState(() => _time = t);
  }

  Widget _buildColorGroup(String title, bool abnormal) {
    final items =
        _pooOptions.where((o) => o['abnormal'] == abnormal).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: abnormal ? Colors.red : Colors.green,
          ),
        ),
        const SizedBox(height: 8),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            final o = items[index];
            final id = o['id'] as String;
            final selected = _pooColor == id;

            return GestureDetector(
              onTap: () => setState(() => _pooColor = id),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: selected
                        ? Theme.of(context).colorScheme.primary
                        : Colors.grey.shade300,
                    width: selected ? 3.5 : 1.5,
                  ),
                  boxShadow: selected
                      ? [
                          BoxShadow(
                            color: Theme.of(context)
                                .colorScheme
                                .primary
                                .withAlpha(80),
                            blurRadius: 6,
                            spreadRadius: 1,
                          )
                        ]
                      : null,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.asset('assets/$id.png', fit: BoxFit.cover),
                      if (selected)
                        Container(color: Colors.black.withAlpha(50)),
                      if (selected)
                        const Center(
                          child: Icon(Icons.check_circle,
                              color: Colors.white, size: 28),
                        ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  String _optionLabel(String id) {
    final found =
        _pooOptions.firstWhere((o) => o['id'] == id, orElse: () => {});
    if (found.isEmpty) return id;
    return '${found['label']} — ${found['name']}';
  }

  void _save() {
    final d = widget.initialDate;
    final dt = DateTime(d.year, d.month, d.day, _time.hour, _time.minute);
    Navigator.pop(
      context,
      TrackerEvent(
        id: widget.existingEvent?.id,
        type: 'diaper',
        time: dt,
        data: {
          'pee': _type == 'pee' || _type == 'both',
          'poo': _type == 'poo' || _type == 'both',
          'pooColor': _pooColor,
        },
      ),
    );
  }
}