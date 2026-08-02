import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_form_scaffold.dart';
import 'package:simple_baby_tracker/widgets/pill_segmented_control.dart';

class WeightForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;
  final double? lastWeightKg;
  final DateTime? lastWeightDate;

  const WeightForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
    this.lastWeightKg,
    this.lastWeightDate,
  });

  @override
  State<WeightForm> createState() => _WeightFormState();
}

class _WeightFormState extends State<WeightForm> {
  TimeOfDay _time = TimeOfDay.now();
  final _ctrl = TextEditingController();
  bool _inputInKg = true;
  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
      final kg = (e.data['valueKg'] as num?)?.toDouble();
      if (kg != null) _ctrl.text = kg.toStringAsFixed(3);
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final useKg = SettingsProvider.of(context).settings.useKg;
      final e = widget.existingEvent;
      if (e != null && !useKg) {
        final kg = (e.data['valueKg'] as num?)?.toDouble() ?? 0.0;
        setState(() {
          _inputInKg = false;
          _ctrl.text = kgToLbs(kg).toStringAsFixed(2);
        });
      } else {
        setState(() => _inputInKg = useKg);
      }
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  double? get _valueKg {
    final v = double.tryParse(_ctrl.text);
    if (v == null || v <= 0) return null;
    return _inputInKg ? v : lbsToKg(v);
  }

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
      onSubmit: valueKg != null ? _save : () {},
      ctaEnabled: valueKg != null,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: TextField(
                  controller: _ctrl,
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
                    final current = double.tryParse(_ctrl.text);
                    setState(() {
                      if (current != null) {
                        if (!_inputInKg && v) {
                          _ctrl.text = lbsToKg(current).toStringAsFixed(3);
                        } else if (_inputInKg && !v) {
                          _ctrl.text = kgToLbs(current).toStringAsFixed(2);
                        }
                      }
                      _inputInKg = v;
                    });
                  },
                ),
              ),
            ],
          ),

          // Comparison with last weight
          if (widget.lastWeightKg != null && valueKg != null) ...[
            const SizedBox(height: 12),
            _WeightComparison(
              currentKg: valueKg,
              lastKg: widget.lastWeightKg!,
              lastDate: widget.lastWeightDate,
              useKg: useKg,
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
        ],
      ),
    );
  }

  void _save() {
    final kg = _valueKg;
    if (kg == null) return;
    final d = widget.initialDate;
    final dt = DateTime(d.year, d.month, d.day, _time.hour, _time.minute);
    Navigator.pop(
      context,
      TrackerEvent(
        id: widget.existingEvent?.id,
        type: 'weight',
        time: dt,
        data: {'valueKg': kg},
      ),
    );
  }
}

class _WeightComparison extends StatelessWidget {
  final double currentKg;
  final double lastKg;
  final DateTime? lastDate;
  final bool useKg;
  final AppLocalizations l;

  const _WeightComparison({
    required this.currentKg,
    required this.lastKg,
    required this.lastDate,
    required this.useKg,
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
      child: Row(
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
    );
  }
}
