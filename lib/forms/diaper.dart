import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

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

// Consistency options — labels/hints are looked up from l10n in build().
const _consistencyIds = ['hard', 'firm', 'normal', 'soft', 'loose', 'watery'];
const _consistencyColors = {
  'hard': 0xFFB71C1C,
  'firm': 0xFFE64A19,
  'normal': 0xFF388E3C,
  'soft': 0xFFF9A825,
  'loose': 0xFFE65100,
  'watery': 0xFFB71C1C,
};

class DiaperForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;
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
  String _type = 'none';
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

  // Returns translated label and hint for a consistency id.
  (String label, String hint) _consistencyStrings(
    String id,
    AppLocalizations l,
  ) {
    return switch (id) {
      'hard' => (l.consistencyHard, l.consistencyHardHint),
      'firm' => (l.consistencyFirm, l.consistencyFirmHint),
      'normal' => (l.consistencyNormal, l.consistencyNormalHint),
      'soft' => (l.consistencySoft, l.consistencySoftHint),
      'loose' => (l.consistencyLoose, l.consistencyLooseHint),
      'watery' => (l.consistencyWatery, l.consistencyWateryHint),
      _ => (id, ''),
    };
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
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
            // Header
            Row(
              children: [
                Text(
                  _isEditing ? l.editDiaper : l.diaperChange,
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

            // Rash follow-up
            if (widget.previousRash && !_isEditing) ...[
              Card(
                color: Theme.of(context).colorScheme.errorContainer,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l.rashFollowUpTitle,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onErrorContainer,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        l.rashFollowUpQuestion,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onErrorContainer,
                        ),
                      ),
                      const SizedBox(height: 8),
                      SegmentedButton<bool?>(
                        emptySelectionAllowed: true,
                        segments: [
                          ButtonSegment(
                            value: true,
                            label: Text(l.rashImproved),
                          ),
                          ButtonSegment(
                            value: false,
                            label: Text(l.rashNoChange),
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
            Text(
              l.diaperContents,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 6),
            SegmentedButton<String>(
              segments: [
                ButtonSegment(value: 'none', label: Text(l.diaperNone)),
                ButtonSegment(
                  value: 'pee',
                  label: Text(l.diaperPeeLabel),
                  icon: const Icon(Icons.water_drop, size: 14),
                ),
                ButtonSegment(
                  value: 'poo',
                  label: Text(l.diaperPooLabel),
                  icon: const Icon(Icons.baby_changing_station, size: 14),
                ),
                ButtonSegment(value: 'both', label: Text(l.diaperBoth)),
              ],
              selected: {_type},
              onSelectionChanged: (s) => setState(() => _type = s.first),
            ),

            // Poo-specific fields
            if (_hasPoo) ...[
              const SizedBox(height: 16),

              // Consistency
              Text(
                l.diaperConsistency,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 6),
              Wrap(
                spacing: 6,
                runSpacing: 4,
                children: _consistencyIds.map((id) {
                  final selected = _consistency == id;
                  final color = Color(_consistencyColors[id] ?? 0xFF000000);
                  final (label, hint) = _consistencyStrings(id, l);
                  return FilterChip(
                    label: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          label,
                          style: TextStyle(
                            fontSize: 12,
                            color: selected ? Colors.white : null,
                          ),
                        ),
                        Text(
                          hint,
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
                            ? l.warnConstipation
                            : l.warnDiarrhea,
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
                l.pooColourLabel,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 6),
              _buildColorGroup(l.pooColourAbnormal, true, l),
              const SizedBox(height: 10),
              _buildColorGroup(l.pooColourNormal, false, l),
              if (_pooColor != null)
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Text(
                    l.pooColourSelected(_optionLabel(_pooColor!)),
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],

            const SizedBox(height: 16),

            // Diaper size
            Text(l.diaperSize, style: Theme.of(context).textTheme.labelLarge),
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
            Text(l.diaperBrand, style: Theme.of(context).textTheme.labelLarge),
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
                  decoration: InputDecoration(
                    labelText: l.diaperBrandCustomLabel,
                    border: const OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
              ),

            const SizedBox(height: 16),

            // Rash toggle
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(l.rashPresent),
              subtitle: Text(l.rashPresentHint),
              value: _rash,
              onChanged: (v) => setState(() => _rash = v),
            ),

            if (_rash) ...[
              Text(
                l.rashCreamUsed,
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
                    decoration: InputDecoration(
                      labelText: l.rashCreamCustomLabel,
                      border: const OutlineInputBorder(),
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
                child: Text(_isEditing ? l.actionUpdate : l.actionSave),
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

  Widget _buildColorGroup(String title, bool abnormal, AppLocalizations l) {
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
