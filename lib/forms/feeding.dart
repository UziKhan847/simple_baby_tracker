import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_form_scaffold.dart';
import 'package:simple_baby_tracker/widgets/pill_segmented_control.dart';

const _formulaBrands = [
  'Similac',
  'Enfamil',
  'Gerber',
  "Earth's Best",
  'HiPP',
  'Holle',
  'Kendamil',
  'Bobbie',
  'Store brand',
  'Other',
];

class _FeedEntry {
  String feedMode = 'bottle';
  String method = 'breast';
  String formulaBrand = '';
  bool customFormulaBrand = false;
  bool amountInMl = true;

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
      final rawAmount = double.tryParse(f.amountCtrl.text) ?? 0;
      final amountMl = f.amountInMl ? rawAmount : ozToMl(rawAmount);
      return TrackerEvent(
        type: 'feeding',
        time: dt,
        data: {
          'isBottle': isBottle,
          if (isBottle) 'method': f.method,
          'amountMl': isBottle ? amountMl.round() : 0,
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
    final l = AppLocalizations.of(context)!;

    return AppFormScaffold(
      title: _isEditing ? l.editFeeding : l.addFeeding,
      time: _time,
      onTimeChanged: (t) => setState(() => _time = t),
      ctaLabel: _isEditing ? l.actionUpdate : l.actionSave,
      onSubmit: _save,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                label: Text(l.addAnotherFeed),
              ),
            ),
        ],
      ),
    );
  }
}

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
    final l = AppLocalizations.of(context)!;
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
                  l.feedLabel(widget.index + 1),
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

            // Bottle vs suckle
            PillSegmentedControl<String>(
              options: [
                PillSegmentedOption(
                  value: 'bottle',
                  label: l.feedModeBottle,
                  icon: Icons.local_drink,
                ),
                PillSegmentedOption(
                  value: 'suckle',
                  label: l.feedModeSuckle,
                  icon: Icons.child_care,
                ),
              ],
              selected: f.feedMode,
              onChanged: (v) {
                setState(() => f.feedMode = v);
                widget.onChanged();
              },
            ),
            const SizedBox(height: 10),

            if (f.feedMode == 'bottle') ...[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextField(
                      controller: f.amountCtrl,
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      decoration: InputDecoration(
                        labelText: l.feedAmountMl,
                        suffixText: f.amountInMl ? 'ml' : 'oz',
                        helperText: () {
                          final v = double.tryParse(f.amountCtrl.text);
                          if (v == null) return null;
                          return f.amountInMl
                              ? '(${mlToOz(v).toStringAsFixed(1)} oz)'
                              : '(${ozToMl(v).round()} ml)';
                        }(),
                        border: const OutlineInputBorder(),
                        isDense: true,
                      ),
                      onChanged: (_) => widget.onChanged(),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 116,
                    child: PillSegmentedControl<bool>(
                      options: const [
                        PillSegmentedOption(value: true, label: 'ml'),
                        PillSegmentedOption(value: false, label: 'oz'),
                      ],
                      selected: f.amountInMl,
                      onChanged: (v) {
                        final current = double.tryParse(f.amountCtrl.text);
                        setState(() {
                          if (current != null) {
                            f.amountCtrl.text = f.amountInMl
                                ? mlToOz(current).toStringAsFixed(1)
                                : ozToMl(current).round().toString();
                          }
                          f.amountInMl = v;
                        });
                        widget.onChanged();
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              DropdownButtonFormField<String>(
                initialValue: f.method,
                decoration: InputDecoration(
                  labelText: l.feedType,
                  border: const OutlineInputBorder(),
                  isDense: true,
                ),
                items: [
                  DropdownMenuItem(
                    value: 'breast',
                    child: Text(l.feedBreastMilk),
                  ),
                  DropdownMenuItem(
                    value: 'formula',
                    child: Text(l.feedFormula),
                  ),
                ],
                onChanged: (v) {
                  setState(() => f.method = v ?? 'breast');
                  widget.onChanged();
                },
              ),

              // Formula brand picker
              if (f.method == 'formula') ...[
                const SizedBox(height: 10),
                Text(
                  l.feedFormulaBrand,
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
                      decoration: InputDecoration(
                        labelText: l.feedFormulaBrandCustom,
                        border: const OutlineInputBorder(),
                        isDense: true,
                      ),
                    ),
                  ),
              ],
            ] else ...[
              TextField(
                controller: f.durationCtrl,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: l.feedDurationMinutes,
                  border: const OutlineInputBorder(),
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
