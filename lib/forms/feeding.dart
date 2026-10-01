import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/models/bottle.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/services/timer_service.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_form_scaffold.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';
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

  /// Bottle tracking only (Settings → Track bottles).
  String? bottleId;

  final TextEditingController amountCtrl = TextEditingController();
  final TextEditingController durationCtrl = TextEditingController();
  final TextEditingController leftMinCtrl = TextEditingController();
  final TextEditingController rightMinCtrl = TextEditingController();
  final TextEditingController brandCtrl = TextEditingController();
  final TextEditingController preparedCtrl = TextEditingController();

  _FeedEntry();

  /// Converts both amount fields when the ml/oz toggle changes.
  void convertUnits({required bool toMl}) {
    for (final c in [amountCtrl, preparedCtrl]) {
      final v = double.tryParse(c.text);
      if (v == null) continue;
      c.text = toMl
          ? ozToMl(v).round().toString()
          : mlToOz(v).toStringAsFixed(1);
    }
    amountInMl = toMl;
  }

  void dispose() {
    amountCtrl.dispose();
    durationCtrl.dispose();
    leftMinCtrl.dispose();
    rightMinCtrl.dispose();
    brandCtrl.dispose();
    preparedCtrl.dispose();
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

  /// Non-retired bottles, for the picker shown when bottle tracking is on.
  List<Bottle> _bottles = [];

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
      entry.bottleId = e.data['bottleId'] as String?;
      entry.preparedCtrl.text = e.data['preparedMl']?.toString() ?? '';
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
          f.convertUnits(toMl: false);
        }
      });
    });
    _loadBottles();
  }

  static const _kLastBottle = 'last_bottle_id';

  Future<void> _loadBottles() async {
    final bottles = await Storage.loadBottles();
    final sp = await SharedPreferences.getInstance();
    final lastId = sp.getString(_kLastBottle);
    if (!mounted) return;
    setState(() {
      // Keep a retired bottle visible if it's the one this feed used.
      _bottles = bottles
          .where((b) => !b.retired || _feeds.any((f) => f.bottleId == b.id))
          .toList();
      // New feeds start on the last-used bottle, if it's still active.
      for (final f in _feeds) {
        if (!_isEditing &&
            f.bottleId == null &&
            _bottles.any((b) => b.id == lastId && !b.retired)) {
          f.bottleId = lastId;
        }
      }
    });
  }

  @override
  void dispose() {
    for (final f in _feeds) {
      f.dispose();
    }
    super.dispose();
  }

  void _addFeed() => setState(() {
    final entry = _FeedEntry();
    final first = _feeds.isEmpty ? null : _feeds.first;
    if (first != null && !first.amountInMl) entry.amountInMl = false;
    _feeds.add(entry);
  });

  void _removeFeed(int i) {
    if (_feeds.length > 1) {
      _feeds[i].dispose();
      setState(() => _feeds.removeAt(i));
    }
  }

  void _save() {
    if (_feeds.isEmpty) return;
    final trackBottles = SettingsProvider.of(context).settings.trackBottles;
    final lastBottle = _feeds.map((f) => f.bottleId).whereType<String>();
    if (trackBottles && lastBottle.isNotEmpty) {
      unawaited(
        SharedPreferences.getInstance().then(
          (sp) => sp.setString(_kLastBottle, lastBottle.last),
        ),
      );
    }
    final d = widget.initialDate;
    final dt = DateTime(d.year, d.month, d.day, _time.hour, _time.minute);

    TrackerEvent toEvent(_FeedEntry f) {
      final isBottle = f.feedMode == 'bottle';
      final effectiveBrand = f.customFormulaBrand
          ? (f.brandCtrl.text.trim().isEmpty ? null : f.brandCtrl.text.trim())
          : (f.formulaBrand.isEmpty ? null : f.formulaBrand);
      final rawAmount = double.tryParse(f.amountCtrl.text) ?? 0;
      final amountMl = f.amountInMl ? rawAmount : ozToMl(rawAmount);
      final rawPrepared = double.tryParse(f.preparedCtrl.text);
      final preparedMl = rawPrepared == null
          ? null
          : (f.amountInMl ? rawPrepared : ozToMl(rawPrepared)).round();
      final withBottle = trackBottles && isBottle && f.bottleId != null;

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
          if (withBottle) 'bottleId': f.bottleId,
          if (withBottle && preparedMl != null) 'preparedMl': preparedMl,
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
              bottles: SettingsProvider.of(context).settings.trackBottles
                  ? _bottles
                  : null,
              onRemove: () => _removeFeed(e.key),
              onChanged: () => setState(() {}),
            ),
          ),
          if (!_isEditing)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: OutlinedButton.icon(
                onPressed: _addFeed,
                icon: const AppIcon(AppIcons.add, style: AppIconStyle.line),
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

  /// Non-null only when bottle tracking is enabled.
  final List<Bottle>? bottles;
  final VoidCallback onRemove;
  final VoidCallback onChanged;

  const _FeedCard({
    super.key,
    required this.entry,
    required this.index,
    required this.canRemove,
    this.lastBreastSide,
    this.bottles,
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
                    icon: const AppIcon(
                      AppIcons.close,
                      style: AppIconStyle.line,
                      size: 18,
                    ),
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
                  icon: AppIcons.bottle,
                ),
                PillSegmentedOption(
                  value: 'suckle',
                  label: l.feedModeSuckle,
                  icon: AppIcons.breastfeeding,
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
              if (widget.bottles != null) ...[
                _BottlePicker(
                  bottles: widget.bottles!,
                  selectedId: f.bottleId,
                  onChanged: (id) {
                    setState(() => f.bottleId = id);
                    widget.onChanged();
                  },
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: f.preparedCtrl,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: InputDecoration(
                    labelText: l.feedPrepared,
                    suffixText: f.amountInMl ? 'ml' : 'oz',
                    border: const OutlineInputBorder(),
                    isDense: true,
                  ),
                  onChanged: (_) {
                    setState(() {});
                    widget.onChanged();
                  },
                ),
                const SizedBox(height: 10),
              ],
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
                        labelText: widget.bottles != null
                            ? l.feedDrank
                            : f.amountInMl
                            ? l.feedAmountMl
                            : l.feedAmountOz,
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
                          final prepared = double.tryParse(f.preparedCtrl.text);
                          if (widget.bottles != null && prepared != null) {
                            final unit = f.amountInMl ? 'ml' : 'oz';
                            final left = prepared - v;
                            final fmt = f.amountInMl
                                ? left.round().toString()
                                : left.toStringAsFixed(1);
                            return left < 0
                                ? l.feedDrankMoreThanPrepared
                                : l.feedLeftover('$fmt $unit');
                          }
                          return f.amountInMl
                              ? '(${mlToOz(v).toStringAsFixed(1)} oz)'
                              : '(${ozToMl(v).round()} ml)';
                        }(),
                        border: const OutlineInputBorder(),
                        isDense: true,
                      ),
                      onChanged: (_) {
                        setState(() {});
                        widget.onChanged();
                      },
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
                        if (v == f.amountInMl) return;
                        setState(() => f.convertUnits(toMl: v));
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

/// Chips for the household's bottles (Settings → My bottles). Shown only
/// when bottle tracking is on; points to the bottle list when it's empty.
class _BottlePicker extends StatelessWidget {
  final List<Bottle> bottles;
  final String? selectedId;
  final ValueChanged<String?> onChanged;

  const _BottlePicker({
    required this.bottles,
    required this.selectedId,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    if (bottles.isEmpty) {
      return Text(
        l.feedNoBottlesYet,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l.feedWhichBottle, style: Theme.of(context).textTheme.labelSmall),
        const SizedBox(height: 4),
        Wrap(
          spacing: 6,
          runSpacing: 4,
          children: [
            for (final b in bottles)
              ChoiceChip(
                label: Text(
                  b.capacityMl == null
                      ? b.displayName
                      : '${b.displayName} · ${b.capacityMl} ml',
                  style: const TextStyle(fontSize: 12),
                ),
                selected: b.id == selectedId,
                onSelected: (sel) => onChanged(sel ? b.id : null),
              ),
          ],
        ),
      ],
    );
  }
}
