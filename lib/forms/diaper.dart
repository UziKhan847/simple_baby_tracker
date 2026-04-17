import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

// ── lowerCamelCase constant names ─────────────────────────────────────────────

const _diaperBrands = [
  'Pampers',
  'Huggies',
  'Luvs',
  'Kirkland',
  "Parent's Choice",
  'Honest',
  'Seventh Generation',
  'Other',
];

const _rashCreams = [
  'Desitin',
  'Aquaphor',
  'Balmex',
  'A+D Ointment',
  "Boudreaux's Butt Paste",
  'Vaseline',
  'Other',
];

const _diaperSizes = ['NB', '1', '2', '3', '4', '5', '6'];

/// Stool consistency using a simplified Bristol-like scale.
const _consistencies = [
  {
    'id': 'hard',
    'label': 'Hard / Pellets',
    'hint': 'Constipation',
    'color': 0xFFB71C1C,
  },
  {'id': 'firm', 'label': 'Firm', 'hint': 'Slightly firm', 'color': 0xFFE64A19},
  {'id': 'normal', 'label': 'Normal', 'hint': 'Healthy', 'color': 0xFF388E3C},
  {'id': 'soft', 'label': 'Soft', 'hint': 'Slightly soft', 'color': 0xFFF9A825},
  {
    'id': 'loose',
    'label': 'Loose / Mushy',
    'hint': 'Monitor',
    'color': 0xFFE65100,
  },
  {'id': 'watery', 'label': 'Watery', 'hint': 'Diarrhea', 'color': 0xFFB71C1C},
];

const _pooOptions = [
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

// ── DiaperForm ────────────────────────────────────────────────────────────────

class DiaperForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  /// Whether the most recent prior diaper had a rash, for follow-up prompt.
  final bool previousRash;

  const DiaperForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
    this.previousRash = false,
  });

  @override
  State<DiaperForm> createState() => _DiaperFormState();
}

class _DiaperFormState extends State<DiaperForm> {
  String _type = 'none'; // 'none' | 'pee' | 'poo' | 'both'
  TimeOfDay _time = TimeOfDay.now();
  String? _pooColor;
  String? _consistency;
  String? _size;
  String? _brand;
  bool _customBrand = false;
  final _brandCtrl = TextEditingController();
  bool _rash = false;
  String? _rashCream;
  bool _customCream = false;
  final _creamCtrl = TextEditingController();
  bool? _rashImproved;

  bool get _isEditing => widget.existingEvent != null;
  bool get _hasPoo => _type == 'poo' || _type == 'both';

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      final pee = e.data['pee'] == true;
      final poo = e.data['poo'] == true;
      _type = (pee && poo)
          ? 'both'
          : pee
          ? 'pee'
          : poo
          ? 'poo'
          : 'none';
      _pooColor = e.data['pooColor'] as String?;
      _consistency = e.data['consistency'] as String?;
      _size = e.data['size'] as String?;

      final brand = e.data['brand'] as String?;
      if (brand != null && !_diaperBrands.contains(brand)) {
        _customBrand = true;
        _brandCtrl.text = brand;
      } else {
        _brand = brand;
      }

      _rash = e.data['rash'] == true;
      final cream = e.data['rashCream'] as String?;
      if (cream != null && !_rashCreams.contains(cream)) {
        _customCream = true;
        _creamCtrl.text = cream;
      } else {
        _rashCream = cream;
      }

      _rashImproved = e.data['rashImproved'] as bool?;
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
    }
  }

  @override
  void dispose() {
    _brandCtrl.dispose();
    _creamCtrl.dispose();
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
            // Header row
            Row(
              children: [
                Text(
                  _isEditing ? 'Edit diaper' : 'Diaper change',
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

            // Rash follow-up (only when previous diaper had a rash)
            if (widget.previousRash && !_isEditing) ...[
              Card(
                color: Theme.of(context).colorScheme.errorContainer,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '⚠️ Rash follow-up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onErrorContainer,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'The last diaper had a rash recorded. Did it improve?',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onErrorContainer,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SegmentedButton<bool?>(
                        emptySelectionAllowed: true,
                        segments: const [
                          ButtonSegment(
                            value: true,
                            label: Text('Yes, improved'),
                          ),
                          ButtonSegment(
                            value: false,
                            label: Text('No change / worse'),
                          ),
                        ],
                        selected: {_rashImproved},
                        onSelectionChanged: (s) =>
                            setState(() => _rashImproved = s.first),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),
            ],

            // Contents
            Text('Contents', style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 6),
            SegmentedButton<String>(
              segments: const [
                ButtonSegment(value: 'none', label: Text('None')),
                ButtonSegment(
                  value: 'pee',
                  label: Text('Pee'),
                  icon: Icon(Icons.water_drop, size: 14),
                ),
                ButtonSegment(
                  value: 'poo',
                  label: Text('Poo'),
                  icon: Icon(Icons.baby_changing_station, size: 14),
                ),
                ButtonSegment(value: 'both', label: Text('Both')),
              ],
              selected: {_type},
              onSelectionChanged: (s) => setState(() => _type = s.first),
            ),

            // Poo-specific fields
            if (_hasPoo) ...[
              const SizedBox(height: 16),

              // Consistency
              Text(
                'Consistency',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 6),
              Wrap(
                spacing: 6,
                runSpacing: 4,
                children: _consistencies.map((c) {
                  final id = c['id'] as String;
                  final selected = _consistency == id;
                  final color = Color(c['color'] as int);
                  return FilterChip(
                    label: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          c['label'] as String,
                          style: TextStyle(
                            fontSize: 12,
                            color: selected ? Colors.white : null,
                          ),
                        ),
                        Text(
                          c['hint'] as String,
                          style: TextStyle(
                            fontSize: 10,
                            color: selected ? Colors.white70 : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    selected: selected,
                    selectedColor: color,
                    checkmarkColor: Colors.white,
                    onSelected: (_) =>
                        setState(() => _consistency = selected ? null : id),
                  );
                }).toList(),
              ),

              // Constipation / diarrhea warning
              if (_consistency == 'hard' ||
                  _consistency == 'watery' ||
                  _consistency == 'loose')
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    children: [
                      Icon(
                        Icons.warning_amber_rounded,
                        color: Colors.orange.shade700,
                        size: 18,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        _consistency == 'hard'
                            ? 'Signs of constipation — monitor closely'
                            : 'Signs of diarrhea — monitor closely',
                        style: TextStyle(
                          color: Colors.orange.shade700,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),

              const SizedBox(height: 16),

              // Colour chart
              Text(
                'Colour (tap to select)',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 6),
              _buildColorGroup('⚠️ Abnormal (pale)', true),
              const SizedBox(height: 10),
              _buildColorGroup('✅ Normal', false),
              if (_pooColor != null)
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    'Selected: ${_optionLabel(_pooColor!)}',
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],

            const SizedBox(height: 16),

            // Diaper size
            Text('Diaper size', style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 6),
            Wrap(
              spacing: 6,
              children: _diaperSizes
                  .map(
                    (s) => ChoiceChip(
                      label: Text(s),
                      selected: _size == s,
                      onSelected: (_) =>
                          setState(() => _size = _size == s ? null : s),
                    ),
                  )
                  .toList(),
            ),

            const SizedBox(height: 12),

            // Brand
            Text('Brand', style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 6),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: _diaperBrands.map((b) {
                final isOther = b == 'Other';
                final selected = isOther ? _customBrand : _brand == b;
                return ChoiceChip(
                  label: Text(b),
                  selected: selected,
                  onSelected: (_) => setState(() {
                    if (isOther) {
                      _customBrand = !_customBrand;
                      if (!_customBrand) _brandCtrl.clear();
                      _brand = null;
                    } else {
                      _brand = selected ? null : b;
                      _customBrand = false;
                      _brandCtrl.clear();
                    }
                  }),
                );
              }).toList(),
            ),
            if (_customBrand)
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: TextField(
                  controller: _brandCtrl,
                  decoration: const InputDecoration(
                    labelText: 'Brand name',
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
              ),

            const SizedBox(height: 16),

            // Rash toggle
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Rash present'),
              subtitle: const Text('Redness, irritation or nappy rash'),
              value: _rash,
              onChanged: (v) => setState(() => _rash = v),
            ),

            if (_rash) ...[
              Text(
                'Rash cream used',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 6),
              Wrap(
                spacing: 6,
                runSpacing: 4,
                children: _rashCreams.map((c) {
                  final isOther = c == 'Other';
                  final selected = isOther ? _customCream : _rashCream == c;
                  return ChoiceChip(
                    label: Text(c),
                    selected: selected,
                    onSelected: (_) => setState(() {
                      if (isOther) {
                        _customCream = !_customCream;
                        if (!_customCream) _creamCtrl.clear();
                        _rashCream = null;
                      } else {
                        _rashCream = selected ? null : c;
                        _customCream = false;
                        _creamCtrl.clear();
                      }
                    }),
                  );
                }).toList(),
              ),
              if (_customCream)
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 4),
                  child: TextField(
                    controller: _creamCtrl,
                    decoration: const InputDecoration(
                      labelText: 'Cream / ointment name',
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                ),
              const SizedBox(height: 8),
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
    final items = _pooOptions.where((o) => o['abnormal'] == abnormal).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: abnormal ? Colors.red : Colors.green,
          ),
        ),
        const SizedBox(height: 6),
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
                            color: Theme.of(
                              context,
                            ).colorScheme.primary.withAlpha(80),
                            blurRadius: 6,
                          ),
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
                          child: Icon(
                            Icons.check_circle,
                            color: Colors.white,
                            size: 28,
                          ),
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
    final found = _pooOptions.firstWhere(
      (o) => o['id'] == id,
      orElse: () => {},
    );
    return found.isEmpty ? id : '${found['label']} — ${found['name']}';
  }

  void _save() {
    final d = widget.initialDate;
    final dt = DateTime(d.year, d.month, d.day, _time.hour, _time.minute);
    final effectiveBrand = _customBrand
        ? (_brandCtrl.text.trim().isEmpty ? null : _brandCtrl.text.trim())
        : _brand;
    final effectiveCream = _customCream
        ? (_creamCtrl.text.trim().isEmpty ? null : _creamCtrl.text.trim())
        : _rashCream;

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
          'consistency': _hasPoo ? _consistency : null,
          'size': _size,
          'brand': effectiveBrand,
          'rash': _rash,
          'rashCream': _rash ? effectiveCream : null,
          if (widget.previousRash && !_isEditing) 'rashImproved': _rashImproved,
        },
      ),
    );
  }
}
