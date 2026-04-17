import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

// ── Naming: lowerCamelCase for all top-level constants ──────────────────────

const _formulaBrands = [
  'Similac',
  'Enfamil',
  'Gerber',
  "Earth's Best",
  'HiPP',
  'Holle',
  'Bobbie',
  'Store brand',
  'Other',
];

// ── _FeedEntry ───────────────────────────────────────────────────────────────
// Unused constructor parameters removed. State is held directly on the fields
// and via the TextEditingControllers (which ARE the source of truth for text).

class _FeedEntry {
  String feedMode = 'bottle'; // 'bottle' | 'suckle'
  String method = 'breast'; // 'breast' | 'formula'  (bottle only)
  String formulaBrand = '';
  bool customFormulaBrand = false;

  final TextEditingController amountCtrl = TextEditingController();
  final TextEditingController durationCtrl = TextEditingController();
  final TextEditingController brandCtrl = TextEditingController();

  _FeedEntry();

  void dispose() {
    amountCtrl.dispose();
    durationCtrl.dispose();
    brandCtrl.dispose();
  }
}

// ── FeedingForm ───────────────────────────────────────────────────────────────

class FeedingForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const FeedingForm({super.key, required this.initialDate, this.existingEvent});

  @override
  State<FeedingForm> createState() => _FeedingFormState();
}

class _FeedingFormState extends State<FeedingForm> {
  TimeOfDay _time = TimeOfDay.now();
  final List<_FeedEntry> _feeds = [];

  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      final entry = _FeedEntry();
      final isBottle = (e.data['isBottle'] as bool?) ?? true;
      entry.feedMode = isBottle ? 'bottle' : 'suckle';
      entry.method = e.data['method'] as String? ?? 'breast';
      entry.amountCtrl.text = e.data['amountMl']?.toString() ?? '';
      entry.durationCtrl.text = e.data['durationMin']?.toString() ?? '';
      final brand = e.data['formulaBrand'] as String?;
      if (brand != null && _formulaBrands.contains(brand)) {
        entry.formulaBrand = brand;
      } else if (brand != null) {
        entry.customFormulaBrand = true;
        entry.brandCtrl.text = brand;
      }
      _feeds.add(entry);
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
    } else {
      _feeds.add(_FeedEntry());
    }
  }

  @override
  void dispose() {
    for (final f in _feeds) {
      f.dispose();
    }
    super.dispose();
  }

  void _addFeed() => setState(() => _feeds.add(_FeedEntry()));

  void _removeFeed(int i) {
    if (_feeds.length > 1) {
      _feeds[i].dispose();
      setState(() => _feeds.removeAt(i));
    }
  }

  void _save() {
    if (_feeds.isEmpty) return;
    final d = widget.initialDate;
    final dt = DateTime(d.year, d.month, d.day, _time.hour, _time.minute);

    TrackerEvent toEvent(_FeedEntry f) {
      final isBottle = f.feedMode == 'bottle';
      final effectiveBrand = f.customFormulaBrand
          ? (f.brandCtrl.text.trim().isEmpty ? null : f.brandCtrl.text.trim())
          : (f.formulaBrand.isEmpty ? null : f.formulaBrand);
      return TrackerEvent(
        type: 'feeding',
        time: dt,
        data: {
          'isBottle': isBottle,
          if (isBottle) 'method': f.method,
          'amountMl': isBottle ? (int.tryParse(f.amountCtrl.text) ?? 0) : 0,
          if (!isBottle) 'durationMin': int.tryParse(f.durationCtrl.text) ?? 0,
          if (isBottle && f.method == 'formula' && effectiveBrand != null)
            'formulaBrand': effectiveBrand,
        },
      );
    }

    if (_isEditing || _feeds.length == 1) {
      final event = toEvent(_feeds.first);
      Navigator.pop(
        context,
        _isEditing
            ? TrackerEvent(
                id: widget.existingEvent!.id,
                type: event.type,
                time: event.time,
                data: event.data,
              )
            : event,
      );
    } else {
      Navigator.pop(context, _feeds.map(toEvent).toList());
    }
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
                  _isEditing ? 'Edit feeding' : 'Add feeding',
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
            const SizedBox(height: 8),
            ..._feeds.asMap().entries.map(
              (e) => _FeedCard(
                key: ValueKey(e.key),
                entry: e.value,
                index: e.key,
                canRemove: _feeds.length > 1,
                onRemove: () => _removeFeed(e.key),
                onChanged: () => setState(() {}),
              ),
            ),
            if (!_isEditing)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6),
                child: OutlinedButton.icon(
                  onPressed: _addFeed,
                  icon: const Icon(Icons.add),
                  label: const Text('Add another feed'),
                ),
              ),
            const SizedBox(height: 8),
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
}

// ── _FeedCard ─────────────────────────────────────────────────────────────────

class _FeedCard extends StatefulWidget {
  final _FeedEntry entry;
  final int index;
  final bool canRemove;
  final VoidCallback onRemove;
  final VoidCallback onChanged;

  const _FeedCard({
    super.key,
    required this.entry,
    required this.index,
    required this.canRemove,
    required this.onRemove,
    required this.onChanged,
  });

  @override
  State<_FeedCard> createState() => _FeedCardState();
}

class _FeedCardState extends State<_FeedCard> {
  @override
  Widget build(BuildContext context) {
    final f = widget.entry;

    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Feed ${widget.index + 1}',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                const Spacer(),
                if (widget.canRemove)
                  IconButton(
                    icon: const Icon(Icons.close, size: 18),
                    onPressed: widget.onRemove,
                    visualDensity: VisualDensity.compact,
                  ),
              ],
            ),
            const SizedBox(height: 8),

            // Bottle vs suckle toggle
            SegmentedButton<String>(
              segments: const [
                ButtonSegment(
                  value: 'bottle',
                  label: Text('Bottle'),
                  icon: Icon(Icons.local_drink, size: 14),
                ),
                ButtonSegment(
                  value: 'suckle',
                  label: Text('Suckle'),
                  icon: Icon(Icons.child_care, size: 14),
                ),
              ],
              selected: {f.feedMode},
              onSelectionChanged: (s) {
                setState(() => f.feedMode = s.first);
                widget.onChanged();
              },
            ),
            const SizedBox(height: 10),

            if (f.feedMode == 'bottle') ...[
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: f.amountCtrl,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        labelText: 'Amount (ml)',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                      onChanged: (_) => widget.onChanged(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    // ── Fix: value → initialValue (deprecated after v3.33) ──
                    child: DropdownButtonFormField<String>(
                      initialValue: f.method,
                      decoration: const InputDecoration(
                        labelText: 'Type',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: 'breast',
                          child: Text('Breast milk'),
                        ),
                        DropdownMenuItem(
                          value: 'formula',
                          child: Text('Formula'),
                        ),
                      ],
                      onChanged: (v) {
                        setState(() => f.method = v ?? 'breast');
                        widget.onChanged();
                      },
                    ),
                  ),
                ],
              ),

              // Formula brand picker
              if (f.method == 'formula') ...[
                const SizedBox(height: 10),
                Text(
                  'Formula brand',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                const SizedBox(height: 4),
                Wrap(
                  spacing: 6,
                  runSpacing: 4,
                  children: _formulaBrands.map((b) {
                    final isOther = b == 'Other';
                    final selected = isOther
                        ? f.customFormulaBrand
                        : f.formulaBrand == b;
                    return ChoiceChip(
                      label: Text(b, style: const TextStyle(fontSize: 12)),
                      selected: selected,
                      onSelected: (_) => setState(() {
                        if (isOther) {
                          f.customFormulaBrand = !f.customFormulaBrand;
                          if (!f.customFormulaBrand) f.brandCtrl.clear();
                          f.formulaBrand = '';
                        } else {
                          f.formulaBrand = selected ? '' : b;
                          f.customFormulaBrand = false;
                          f.brandCtrl.clear();
                        }
                      }),
                    );
                  }).toList(),
                ),
                if (f.customFormulaBrand)
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: TextField(
                      controller: f.brandCtrl,
                      decoration: const InputDecoration(
                        labelText: 'Formula brand name',
                        border: OutlineInputBorder(),
                        isDense: true,
                      ),
                    ),
                  ),
              ],
            ] else ...[
              TextField(
                controller: f.durationCtrl,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Duration (minutes)',
                  border: OutlineInputBorder(),
                  isDense: true,
                ),
                onChanged: (_) => widget.onChanged(),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
