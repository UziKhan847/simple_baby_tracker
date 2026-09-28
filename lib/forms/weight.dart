import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_form_scaffold.dart';
import 'package:simple_baby_tracker/widgets/pill_segmented_control.dart';

/// What the baby was wearing when weighed — a plain number without this is
/// hard to compare week to week, since "naked" and "dressed" can differ by
/// hundreds of grams.
const weighConditions = ['naked', 'diaper', 'light_clothes', 'dressed'];

String weighConditionLabel(String condition, AppLocalizations l) => switch (condition) {
  'naked' => l.weighConditionNaked,
  'diaper' => l.weighConditionDiaper,
  'light_clothes' => l.weighConditionLightClothes,
  _ => l.weighConditionDressed,
};

class WeightForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;
  final double? lastWeightKg;
  final DateTime? lastWeightDate;
  final String? lastCondition;

  const WeightForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
    this.lastWeightKg,
    this.lastWeightDate,
    this.lastCondition,
  });

  @override
  State<WeightForm> createState() => _WeightFormState();
}

class _WeightFormState extends State<WeightForm> {
  TimeOfDay _time = TimeOfDay.now();
  final _weightCtrl = TextEditingController();
  final _heightCtrl = TextEditingController();
  final _headCtrl = TextEditingController();
  bool _inputInKg = true;
  String _condition = 'diaper';
  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
      final kg = (e.data['valueKg'] as num?)?.toDouble();
      if (kg != null) _weightCtrl.text = kg.toStringAsFixed(3);
      final heightCm = (e.data['heightCm'] as num?)?.toDouble();
      if (heightCm != null) _heightCtrl.text = heightCm.toString();
      final headCm = (e.data['headCm'] as num?)?.toDouble();
      if (headCm != null) _headCtrl.text = headCm.toString();
      _condition = e.data['condition'] as String? ?? 'diaper';
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final useKg = SettingsProvider.of(context).settings.useKg;
      final e = widget.existingEvent;
      if (e != null && !useKg) {
        final kg = (e.data['valueKg'] as num?)?.toDouble();
        if (kg != null) {
          setState(() {
            _inputInKg = false;
            _weightCtrl.text = kgToLbs(kg).toStringAsFixed(2);
          });
          return;
        }
      }
      setState(() => _inputInKg = useKg);
    });
  }

  @override
  void dispose() {
    _weightCtrl.dispose();
    _heightCtrl.dispose();
    _headCtrl.dispose();
    super.dispose();
  }

  double? get _valueKg {
    final v = double.tryParse(_weightCtrl.text);
    if (v == null || v <= 0) return null;
    return _inputInKg ? v : lbsToKg(v);
  }

  double? get _heightCm => double.tryParse(_heightCtrl.text);
  double? get _headCm => double.tryParse(_headCtrl.text);

  bool get _hasAnyMeasurement =>
      _valueKg != null || _heightCm != null || _headCm != null;

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    final valueKg = _valueKg;
    final useKg = SettingsProvider.of(context).settings.useKg;

    return AppFormScaffold(
      title: _isEditing ? l.editWeight : l.logWeight,
      time: _time,
      onTimeChanged: (t) => setState(() => _time = t),
      ctaLabel: _isEditing ? l.actionUpdate : l.actionSave,
      onSubmit: _hasAnyMeasurement ? _save : () {},
      ctaEnabled: _hasAnyMeasurement,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextField(
                  controller: _weightCtrl,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(
                    labelText: l.weightLabel,
                    suffixText: _inputInKg ? 'kg' : 'lbs',
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              SizedBox(
                width: 116,
                child: PillSegmentedControl<bool>(
                  options: const [
                    PillSegmentedOption(value: true, label: 'kg'),
                    PillSegmentedOption(value: false, label: 'lbs'),
                  ],
                  selected: _inputInKg,
                  onChanged: (v) {
                    final current = double.tryParse(_weightCtrl.text);
                    setState(() {
                      if (current != null) {
                        if (!_inputInKg && v) {
                          _weightCtrl.text = lbsToKg(current).toStringAsFixed(3);
                        } else if (_inputInKg && !v) {
                          _weightCtrl.text = kgToLbs(current).toStringAsFixed(2);
                        }
                      }
                      _inputInKg = v;
                    });
                  },
                ),
              ),
            ],
          ),

          const SizedBox(height: 12),
          Text(l.weighCondition, style: Theme.of(context).textTheme.labelSmall),
          const SizedBox(height: 4),
          Wrap(
            spacing: 6,
            runSpacing: 4,
            children: weighConditions.map((c) {
              return ChoiceChip(
                label: Text(
                  weighConditionLabel(c, l),
                  style: const TextStyle(fontSize: 12),
                ),
                selected: _condition == c,
                onSelected: (_) => setState(() => _condition = c),
              );
            }).toList(),
          ),

          // Comparison with last weight
          if (widget.lastWeightKg != null && valueKg != null) ...[
            const SizedBox(height: 12),
            _WeightComparison(
              currentKg: valueKg,
              lastKg: widget.lastWeightKg!,
              lastDate: widget.lastWeightDate,
              useKg: useKg,
              conditionChanged:
                  widget.lastCondition != null && widget.lastCondition != _condition,
              lastConditionLabel: widget.lastCondition != null
                  ? weighConditionLabel(widget.lastCondition!, l)
                  : null,
              l: l,
            ),
          ] else if (widget.lastWeightKg != null) ...[
            const SizedBox(height: 10),
            Text(
              widget.lastWeightDate != null
                  ? l.weightLastRecorded(
                      formatWeight(widget.lastWeightKg!, useKg: useKg),
                      fullDate(widget.lastWeightDate!),
                    )
                  : l.weightPrevious(
                      formatWeight(widget.lastWeightKg!, useKg: useKg),
                    ),
              style: const TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ],

          const SizedBox(height: 16),
          Text(l.growthMeasurementsOptional, style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _heightCtrl,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(
                    labelText: l.growthHeightCm,
                    border: const OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: TextField(
                  controller: _headCtrl,
                  keyboardType: const TextInputType.numberWithOptions(decimal: true),
                  onChanged: (_) => setState(() {}),
                  decoration: InputDecoration(
                    labelText: l.growthHeadCm,
                    border: const OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _save() {
    if (!_hasAnyMeasurement) return;
    final d = widget.initialDate;
    final dt = DateTime(d.year, d.month, d.day, _time.hour, _time.minute);
    Navigator.pop(
      context,
      TrackerEvent(
        id: widget.existingEvent?.id,
        type: 'weight',
        time: dt,
        data: {
          'valueKg': ?_valueKg,
          'heightCm': ?_heightCm,
          'headCm': ?_headCm,
          if (_valueKg != null) 'condition': _condition,
        },
      ),
    );
  }
}

class _WeightComparison extends StatelessWidget {
  final double currentKg;
  final double lastKg;
  final DateTime? lastDate;
  final bool useKg;
  final bool conditionChanged;
  final String? lastConditionLabel;
  final AppLocalizations l;

  const _WeightComparison({
    required this.currentKg,
    required this.lastKg,
    required this.lastDate,
    required this.useKg,
    required this.conditionChanged,
    required this.lastConditionLabel,
    required this.l,
  });

  @override
  Widget build(BuildContext context) {
    final diff = currentKg - lastKg;
    final isGain = diff >= 0;
    final color = isGain ? Colors.green : Colors.red;
    final arrow = isGain ? Icons.arrow_upward : Icons.arrow_downward;
    final diffStr = formatWeight(diff.abs(), useKg: useKg);
    final gainLossLabel = isGain
        ? l.weightGain(diffStr)
        : l.weightLoss(diffStr);
    final lastStr = formatWeight(lastKg, useKg: useKg);
    final previousLabel = lastDate != null
        ? l.weightLastRecorded(lastStr, fullDate(lastDate!))
        : l.weightPrevious(lastStr);

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withAlpha(25),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withAlpha(80)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(arrow, color: color),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      gainLossLabel,
                      style: TextStyle(color: color, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      previousLabel,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (conditionChanged && lastConditionLabel != null) ...[
            const SizedBox(height: 6),
            Row(
              children: [
                const Icon(Icons.info_outline, size: 14, color: Colors.orange),
                const SizedBox(width: 6),
                Expanded(
                  child: Text(
                    l.weighConditionChangedWarning(lastConditionLabel!),
                    style: const TextStyle(fontSize: 11.5, color: Colors.orange),
                  ),
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
