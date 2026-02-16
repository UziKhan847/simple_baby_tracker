import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class DiaperForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const DiaperForm({super.key, required this.initialDate, this.existingEvent});

  @override
  State<DiaperForm> createState() => _DiaperFormState();
}

class _DiaperFormState extends State<DiaperForm> {
  String type = 'none';
  TimeOfDay time = TimeOfDay.now();
  String? pooColor;

  final List<Map<String, dynamic>> pooOptions = [
    {
      'id': '1',
      'label': '1',
      'name': 'Pale 1',
      'color': const Color(0xFFF3EACA),
      'abnormal': true,
    },
    {
      'id': '2',
      'label': '2',
      'name': 'Pale 2',
      'color': const Color(0xFFE8DEC8),
      'abnormal': true,
    },
    {
      'id': '3',
      'label': '3',
      'name': 'Pale 3',
      'color': const Color(0xFFF2E7B0),
      'abnormal': true,
    },
    {
      'id': '4',
      'label': '4',
      'name': 'Pale 4',
      'color': const Color(0xFFEDE9B5),
      'abnormal': true,
    },
    {
      'id': '5',
      'label': '5',
      'name': 'Pale 5',
      'color': const Color(0xFFE6D0A4),
      'abnormal': true,
    },
    {
      'id': '6',
      'label': '6',
      'name': 'Pale 6',
      'color': const Color(0xFFD9B78A),
      'abnormal': true,
    },

    {
      'id': '7',
      'label': '7',
      'name': 'Normal 7',
      'color': const Color(0xFFE6C431),
      'abnormal': false,
    },
    {
      'id': '8',
      'label': '8',
      'name': 'Normal 8',
      'color': const Color(0xFFDFA12A),
      'abnormal': false,
    },
    {
      'id': '9',
      'label': '9',
      'name': 'Normal 9',
      'color': const Color(0xFF9AA400),
      'abnormal': false,
    },
  ];

  @override
  void initState() {
    super.initState();

    final existing = widget.existingEvent;

    if (existing != null) {
      final data = existing.data;

      final pee = data['pee'] == true;
      final poo = data['poo'] == true;

      if (pee && poo) {
        type = 'both';
      } else if (pee) {
        type = 'pee';
      } else if (poo) {
        type = 'poo';
      } else {
        type = 'none';
      }

      pooColor = data['pooColor']?.toString();

      time = TimeOfDay(hour: existing.time.hour, minute: existing.time.minute);
    }
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final bottomInset = media.viewInsets.bottom;
    final bottomSafe = media.padding.bottom;
    final bottomPadding = bottomInset > 0 ? bottomInset : bottomSafe + 16;
    final isEditing = widget.existingEvent != null;

    return Padding(
      padding: EdgeInsets.only(bottom: bottomPadding),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isEditing ? 'Edit diaper change' : 'Diaper change',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              children: [
                ChoiceChip(
                  label: const Text('None'),
                  selected: type == 'none',
                  onSelected: (_) => setState(() => type = 'none'),
                ),
                ChoiceChip(
                  label: const Text('Pee'),
                  selected: type == 'pee',
                  onSelected: (_) => setState(() => type = 'pee'),
                ),
                ChoiceChip(
                  label: const Text('Poo'),
                  selected: type == 'poo',
                  onSelected: (_) => setState(() => type = 'poo'),
                ),
                ChoiceChip(
                  label: const Text('Both'),
                  selected: type == 'both',
                  onSelected: (_) => setState(() => type = 'both'),
                ),
              ],
            ),
            const SizedBox(height: 12),

            if (type == 'poo' || type == 'both') ...[
              const Text(
                'Select poo colour (tap a swatch). Numbers follow the chart:',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 8),
              _buildGroup('Abnormal (pale)', true),
              const SizedBox(height: 12),
              _buildGroup('Normal', false),
              const SizedBox(height: 8),

              if (pooColor != null)
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    'Selected: ${_optionLabel(pooColor!)}',
                    style: const TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
            ],

            const SizedBox(height: 12),
            TextButton(
              onPressed: () async {
                final t = await showTimePicker(
                  context: context,
                  initialTime: time,
                );
                if (t != null) {
                  setState(() => time = t);
                }
              },
              child: Text('Time: ${time.format(context)}'),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: _save,
                child: Text(isEditing ? 'Update' : 'Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGroup(String title, bool abnormal) {
    final items = pooOptions.where((o) => o['abnormal'] == abnormal).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: abnormal ? Colors.red : Colors.green,
          ),
        ),
        const SizedBox(height: 10),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            final o = items[index];
            final id = o['id'] as String;
            final color = o['color'] as Color;
            final selected = pooColor == id;

            return GestureDetector(
              onTap: () => setState(() => pooColor = id),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: selected
                        ? Theme.of(context).colorScheme.primary
                        : Colors.grey.shade300,
                    width: selected ? 4 : 1.5,
                  ),
                  boxShadow: [
                    if (selected)
                      BoxShadow(
                        color: Theme.of(
                          context,
                        ).colorScheme.primary.withAlpha(77),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Text(
                        id,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    if (selected)
                      const Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  String _optionLabel(String id) {
    final found = pooOptions.firstWhere((o) => o['id'] == id, orElse: () => {});
    if (found.isEmpty) return id;
    return '${found['label']} - ${found['name']}';
  }

  void _save() {
    final d = widget.initialDate;
    final dt = DateTime(d.year, d.month, d.day, time.hour, time.minute);

    Navigator.pop(
      context,
      TrackerEvent(
        type: 'diaper',
        time: dt,
        data: {
          'pee': type == 'pee' || type == 'both',
          'poo': type == 'poo' || type == 'both',

          'pooColor': pooColor,
        },
      ),
    );
  }
}
