import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_form_scaffold.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';
import 'package:simple_baby_tracker/widgets/pill_segmented_control.dart';

class TemperatureForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  const TemperatureForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
  });

  @override
  State<TemperatureForm> createState() => _TemperatureFormState();
}

class _TemperatureFormState extends State<TemperatureForm> {
  TimeOfDay _time = TimeOfDay.now();
  final _ctrl = TextEditingController();
  bool _inputInCelsius = true;
  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
      final c = (e.data['valueCelsius'] as num?)?.toDouble();
      if (c != null) _ctrl.text = c.toStringAsFixed(1);
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final useC = SettingsProvider.of(context).settings.useCelsius;
      final existing = widget.existingEvent;
      if (existing != null && !useC) {
        final c = (existing.data['valueCelsius'] as num?)?.toDouble() ?? 0.0;
        setState(() {
          _inputInCelsius = false;
          _ctrl.text = celsiusToFahrenheit(c).toStringAsFixed(1);
        });
      } else {
        setState(() => _inputInCelsius = useC);
      }
    });
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  double? get _valueCelsius {
    final v = double.tryParse(_ctrl.text);
    if (v == null) return null;
    return _inputInCelsius ? v : fahrenheitToCelsius(v);
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;

    final celsius = _valueCelsius;
    final severity = celsius != null ? tempSeverity(celsius) : null;

    return AppFormScaffold(
      title: _isEditing ? l.editTemperature : l.logTemperature,
      time: _time,
      onTimeChanged: (t) => setState(() => _time = t),
      ctaLabel: _isEditing ? l.actionUpdate : l.actionSave,
      onSubmit: celsius != null ? _save : () {},
      ctaEnabled: celsius != null,
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
                    labelText: l.temperatureLabel,
                    suffixText: _inputInCelsius ? '°C' : '°F',
                    border: const OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              SizedBox(
                width: 116,
                child: PillSegmentedControl<bool>(
                  options: const [
                    PillSegmentedOption(value: true, label: '°C'),
                    PillSegmentedOption(value: false, label: '°F'),
                  ],
                  selected: _inputInCelsius,
                  onChanged: (v) {
                    final current = double.tryParse(_ctrl.text);
                    setState(() {
                      if (current != null) {
                        if (!_inputInCelsius && v) {
                          _ctrl.text = fahrenheitToCelsius(
                            current,
                          ).toStringAsFixed(1);
                        } else if (_inputInCelsius && !v) {
                          _ctrl.text = celsiusToFahrenheit(
                            current,
                          ).toStringAsFixed(1);
                        }
                      }
                      _inputInCelsius = v;
                    });
                  },
                ),
              ),
            ],
          ),

          if (severity != null) ...[
            const SizedBox(height: 12),
            _SeverityBanner(severity: severity, l: l),
          ],

          const SizedBox(height: 16),
          _ReferenceCard(l: l),
        ],
      ),
    );
  }

  void _save() {
    final c = _valueCelsius;
    if (c == null) return;
    final d = widget.initialDate;
    final dt = DateTime(d.year, d.month, d.day, _time.hour, _time.minute);
    Navigator.pop(
      context,
      TrackerEvent(
        id: widget.existingEvent?.id,
        type: 'temperature',
        time: dt,
        data: {'valueCelsius': c},
      ),
    );
  }
}

class _SeverityBanner extends StatelessWidget {
  final String severity;
  final AppLocalizations l;

  const _SeverityBanner({required this.severity, required this.l});

  @override
  Widget build(BuildContext context) {
    final (icon, label, color) = switch (severity) {
      'low' => (AppIcons.tempLow, l.tempSeverityLow, Colors.blue),
      'normal' => (AppIcons.tempNormal, l.tempSeverityNormal, Colors.green),
      'elevated' => (
        AppIcons.tempElevated,
        l.tempSeverityElevated,
        Colors.orange,
      ),
      _ => (AppIcons.fever, l.tempSeverityFever, Colors.red),
    };

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withAlpha(30),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: color.withAlpha(80)),
      ),
      child: Row(
        children: [
          AppIcon(icon, color: color, size: 20),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(color: color, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class _ReferenceCard extends StatelessWidget {
  final AppLocalizations l;
  const _ReferenceCard({required this.l});

  @override
  Widget build(BuildContext context) {
    final rows = [
      (l.tempLow, l.tempRefLow, Colors.blue),
      (l.tempNormal, l.tempRefNormal, Colors.green),
      (l.tempElevated, l.tempRefElevated, Colors.orange),
      (l.tempFever, l.tempRefFever, Colors.red),
    ];

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l.tempReference,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 6),
            ...rows.map(
              (r) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: r.$3,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      r.$1,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(r.$2, style: const TextStyle(fontSize: 12)),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              l.tempFeverWarning,
              style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
