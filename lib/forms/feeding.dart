import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/services/timer_service.dart';
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

  /// Breastfeeding only: which side(s) this feed covers.
  String side = 'left';

  final TextEditingController amountCtrl = TextEditingController();
  final TextEditingController durationCtrl = TextEditingController();
  final TextEditingController leftMinCtrl = TextEditingController();
  final TextEditingController rightMinCtrl = TextEditingController();
  final TextEditingController brandCtrl = TextEditingController();

  _FeedEntry();

  void dispose() {
    amountCtrl.dispose();
    durationCtrl.dispose();
    leftMinCtrl.dispose();
    rightMinCtrl.dispose();
    brandCtrl.dispose();
  }
}

class FeedingForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  /// The side of the last logged breastfeeding session, if any — shown as a
  /// "last time: Left" hint so a parent doesn't have to remember.
  final String? lastBreastSide;

  /// Set when this form was opened by stopping a running breastfeeding
  /// timer on Home: pre-fills mode, side and minutes from it.
  final ActiveTimer? initialTimerResult;

  const FeedingForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
    this.lastBreastSide,
    this.initialTimerResult,
  });

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
    final timerResult = widget.initialTimerResult;
    if (e != null) {
      final entry = _FeedEntry();
      final isBottle = (e.data['isBottle'] as bool?) ?? true;
      entry.feedMode = isBottle ? 'bottle' : 'suckle';
      entry.method = e.data['method'] as String? ?? 'breast';
      entry.amountCtrl.text = e.data['amountMl']?.toString() ?? '';
      entry.durationCtrl.text = e.data['durationMin']?.toString() ?? '';
      entry.side = e.data['side'] as String? ?? 'left';
      final leftMin = e.data['leftMin'] as int?;
      final rightMin = e.data['rightMin'] as int?;
      if (leftMin != null) entry.leftMinCtrl.text = leftMin.toString();
      if (rightMin != null) entry.rightMinCtrl.text = rightMin.toString();
      final brand = e.data['formulaBrand'] as String?;
      if (brand != null && _formulaBrands.contains(brand)) {
        entry.formulaBrand = brand;
      } else if (brand != null) {
        entry.customFormulaBrand = true;
        entry.brandCtrl.text = brand;
      }
      _feeds.add(entry);
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
    } else if (timerResult != null) {
      final entry = _FeedEntry();
      entry.feedMode = 'suckle';
      final leftMin = timerResult.leftMinutes;
      final rightMin = timerResult.rightMinutes;
      entry.side = leftMin > 0 && rightMin > 0
          ? 'both'
          : (rightMin > 0 ? 'right' : 'left');
      entry.leftMinCtrl.text = leftMin.toString();
      entry.rightMinCtrl.text = rightMin.toString();
      entry.durationCtrl.text = (leftMin + rightMin).toString();
      _feeds.add(entry);
      // The feed just finished "now" — start time is when the timer began.
      _time = TimeOfDay.fromDateTime(timerResult.startedAt);
    } else {
      final entry = _FeedEntry();
      // Suggest the *other* side from last time, so the default matches
      // how breastfeeding is meant to alternate rather than always
      // defaulting back to "left".
      if (widget.lastBreastSide == 'left') entry.side = 'right';
      _feeds.add(entry);
    }

    // Default the ml/oz toggle to the user's Settings choice, and convert
    // an existing entry's displayed value to match — mirrors how
    // WeightForm defaults kg/lbs. Deferred to a post-frame callback since
    // an InheritedWidget lookup isn't safe to do directly in initState.
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final useMl = SettingsProvider.of(context).settings.useMl;
      if (useMl) return;
      setState(() {
        for (final f in _feeds) {
          final current = double.tryParse(f.amountCtrl.text);
          f.amountInMl = false;
          if (current != null) {
            f.amountCtrl.text = mlToOz(current).toStringAsFixed(1);
          }
        }
      });
    });
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

      int breastDurationMin = 0;
      int leftMin = 0;
      int rightMin = 0;
      if (!isBottle) {
        if (f.side == 'both') {
          leftMin = int.tryParse(f.leftMinCtrl.text) ?? 0;
          rightMin = int.tryParse(f.rightMinCtrl.text) ?? 0;
          breastDurationMin = leftMin + rightMin;
        } else {
          breastDurationMin = int.tryParse(f.durationCtrl.text) ?? 0;
          leftMin = f.side == 'left' ? breastDurationMin : 0;
          rightMin = f.side == 'right' ? breastDurationMin : 0;
        }
      }

      return TrackerEvent(
        type: 'feeding',
        time: dt,
        data: {
          'isBottle': isBottle,
          if (isBottle) 'method': f.method,
          'amountMl': isBottle ? amountMl.round() : 0,
          if (!isBottle) ...{
            'durationMin': breastDurationMin,
            'side': f.side,
            'leftMin': leftMin,
            'rightMin': rightMin,
          },
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
              lastBreastSide: widget.lastBreastSide,
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
  final String? lastBreastSide;
  final VoidCallback onRemove;
  final VoidCallback onChanged;

  const _FeedCard({
    super.key,
    required this.entry,
    required this.index,
    required this.canRemove,
    this.lastBreastSide,
    required this.onRemove,
    required this.onChanged,
  });

  @override
  State<_FeedCard> createState() => _FeedCardState();
}

class _FeedCardState extends State<_FeedCard> {
  String _sideLabel(String side, AppLocalizations l) => switch (side) {
    'right' => l.feedSideRight,
    'both' => l.feedSideBoth,
    _ => l.feedSideLeft,
  };

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
                        // Always occupies a line (a plain space when there's
                        // nothing to convert yet) rather than only appearing
                        // once a number is typed — a helper line that pops
                        // in and out changes the field's height, which
                        // shifts everything below it, including the
                        // method pill right under it.
                        helperText: () {
                          final v = double.tryParse(f.amountCtrl.text);
                          if (v == null) return ' ';
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
              Text(l.feedType, style: Theme.of(context).textTheme.labelSmall),
              const SizedBox(height: 4),
              // A sliding pill, like every other choice in this form —
              // replaces a DropdownButtonFormField, whose popup menu opens
              // positioned over whichever item is currently selected (so it
              // can appear to "jump" up or down depending on that value),
              // and which also grabs focus and closes the number keyboard
              // that's usually still open from the amount field just above.
              PillSegmentedControl<String>(
                options: [
                  PillSegmentedOption(value: 'breast', label: l.feedBreastMilk),
                  PillSegmentedOption(value: 'formula', label: l.feedFormula),
                ],
                selected: f.method,
                onChanged: (v) {
                  setState(() => f.method = v);
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
              if (widget.index == 0 && widget.lastBreastSide != null) ...[
                Text(
                  l.feedLastSideHint(_sideLabel(widget.lastBreastSide!, l)),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 8),
              ],
              PillSegmentedControl<String>(
                options: [
                  PillSegmentedOption(value: 'left', label: l.feedSideLeft),
                  PillSegmentedOption(value: 'right', label: l.feedSideRight),
                  PillSegmentedOption(value: 'both', label: l.feedSideBoth),
                ],
                selected: f.side,
                onChanged: (v) {
                  setState(() => f.side = v);
                  widget.onChanged();
                },
              ),
              const SizedBox(height: 10),
              if (f.side == 'both')
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: f.leftMinCtrl,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: l.feedSideLeftMinutes,
                          border: const OutlineInputBorder(),
                          isDense: true,
                        ),
                        onChanged: (_) => widget.onChanged(),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        controller: f.rightMinCtrl,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: l.feedSideRightMinutes,
                          border: const OutlineInputBorder(),
                          isDense: true,
                        ),
                        onChanged: (_) => widget.onChanged(),
                      ),
                    ),
                  ],
                )
              else
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
