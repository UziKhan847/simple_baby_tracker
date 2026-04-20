import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

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
    final media = MediaQuery.of(context);
    final bottomPad = media.viewInsets.bottom > 0
        ? media.viewInsets.bottom
        : media.padding.bottom + 16;

    final valueKg = _valueKg;
    final useKg = SettingsProvider.of(context).settings.useKg;

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
                  _isEditing ? l.editWeight : l.logWeight,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () async {
                    final t = await showTimePicker(
                        context: context, initialTime: _time);
                    if (t != null) setState(() => _time = t);
                  },
                  icon: const Icon(Icons.access_time, size: 18),
                  label: Text(_time.format(context)),
                ),
              ],
            ),
            const SizedBox(height: 16),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: TextField(
                    controller: _ctrl,
                    keyboardType: const TextInputType.numberWithOptions(
                        decimal: true),
                    onChanged: (_) => setState(() {}),
                    decoration: InputDecoration(
                      labelText: l.weightLabel,
                      suffixText: _inputInKg ? 'kg' : 'lbs',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                SegmentedButton<bool>(
                  segments: const [
                    ButtonSegment(value: true, label: Text('kg')),
                    ButtonSegment(value: false, label: Text('lbs')),
                  ],
                  selected: {_inputInKg},
                  onSelectionChanged: (s) {
                    final current = double.tryParse(_ctrl.text);
                    setState(() {
                      if (current != null) {
                        if (!_inputInKg && s.first) {
                          _ctrl.text = lbsToKg(current).toStringAsFixed(3);
                        } else if (_inputInKg && !s.first) {
                          _ctrl.text = kgToLbs(current).toStringAsFixed(2);
                        }
                      }
                      _inputInKg = s.first;
                    });
                  },
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
                        formatWeight(widget.lastWeightKg!, useKg: useKg)),
                style:
                    const TextStyle(color: Colors.grey, fontSize: 13),
              ),
            ],

            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton(
                onPressed: valueKg != null ? _save : null,
                child:
                    Text(_isEditing ? l.actionUpdate : l.actionSave),
              ),
            ),
          ],
        ),
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
    final gainLossLabel =
        isGain ? l.weightGain(diffStr) : l.weightLoss(diffStr);
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
                Text(gainLossLabel,
                    style: TextStyle(
                        color: color, fontWeight: FontWeight.bold)),
                Text(previousLabel,
                    style: const TextStyle(
                        fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}