import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

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
        final c =
            (existing.data['valueCelsius'] as num?)?.toDouble() ?? 0.0;
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
    final media = MediaQuery.of(context);
    final bottomPad = media.viewInsets.bottom > 0
        ? media.viewInsets.bottom
        : media.padding.bottom + 16;

    final celsius = _valueCelsius;
    final severity = celsius != null ? tempSeverity(celsius) : null;

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
                  _isEditing ? l.editTemperature : l.logTemperature,
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
                      labelText: l.temperatureLabel,
                      suffixText: _inputInCelsius ? '°C' : '°F',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                SegmentedButton<bool>(
                  segments: const [
                    ButtonSegment(value: true, label: Text('°C')),
                    ButtonSegment(value: false, label: Text('°F')),
                  ],
                  selected: {_inputInCelsius},
                  onSelectionChanged: (s) {
                    final current = double.tryParse(_ctrl.text);
                    setState(() {
                      if (current != null) {
                        if (!_inputInCelsius && s.first) {
                          _ctrl.text =
                              fahrenheitToCelsius(current).toStringAsFixed(1);
                        } else if (_inputInCelsius && !s.first) {
                          _ctrl.text =
                              celsiusToFahrenheit(current).toStringAsFixed(1);
                        }
                      }
                      _inputInCelsius = s.first;
                    });
                  },
                ),
              ],
            ),

            if (severity != null) ...[
              const SizedBox(height: 12),
              _SeverityBanner(severity: severity, l: l),
            ],

            const SizedBox(height: 16),
            _ReferenceCard(l: l),

            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton(
                onPressed: celsius != null ? _save : null,
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
      'low' => (Icons.thermostat, l.tempSeverityLow, Colors.blue),
      'normal' => (Icons.check_circle, l.tempSeverityNormal, Colors.green),
      'elevated' => (
          Icons.warning_amber_rounded,
          l.tempSeverityElevated,
          Colors.orange,
        ),
      _ => (
          Icons.local_fire_department,
          l.tempSeverityFever,
          Colors.red,
        ),
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
          Icon(icon, color: color, size: 20),
          const SizedBox(width: 8),
          Text(label,
              style: TextStyle(
                  color: color, fontWeight: FontWeight.w600)),
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
            Text(l.tempReference,
                style: Theme.of(context).textTheme.labelLarge),
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
                          color: r.$3, shape: BoxShape.circle),
                    ),
                    const SizedBox(width: 8),
                    Text(r.$1,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                    const SizedBox(width: 8),
                    Expanded(
                        child: Text(r.$2,
                            style: const TextStyle(fontSize: 12))),
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