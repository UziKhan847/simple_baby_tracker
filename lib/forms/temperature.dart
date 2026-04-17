import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
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
  bool _inputInCelsius = true; // tracks the input unit in this session
  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
      final c = (e.data['valueCelsius'] as num?)?.toDouble();
      if (c != null) {
        _inputInCelsius = true;
        _ctrl.text = c.toStringAsFixed(1);
      }
    }
    // Match initial input unit to user preference
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
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
                  _isEditing ? 'Edit temperature' : 'Log temperature',
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
            const SizedBox(height: 16),

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
                      labelText: 'Temperature',
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
                          _ctrl.text = fahrenheitToCelsius(
                            current,
                          ).toStringAsFixed(1);
                        } else if (_inputInCelsius && !s.first) {
                          _ctrl.text = celsiusToFahrenheit(
                            current,
                          ).toStringAsFixed(1);
                        }
                      }
                      _inputInCelsius = s.first;
                    });
                  },
                ),
              ],
            ),

            // Severity indicator
            if (severity != null) ...[
              const SizedBox(height: 12),
              _SeverityBanner(severity: severity, celsius: celsius!),
            ],

            const SizedBox(height: 16),

            // Reference card
            _ReferenceCard(),

            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: FilledButton(
                onPressed: celsius != null ? _save : null,
                child: Text(_isEditing ? 'Update' : 'Save'),
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
  final double celsius;

  const _SeverityBanner({required this.severity, required this.celsius});

  @override
  Widget build(BuildContext context) {
    final (icon, label, color) = switch (severity) {
      'low' => (Icons.thermostat, 'Low temperature — monitor', Colors.blue),
      'normal' => (Icons.check_circle, 'Normal temperature', Colors.green),
      'elevated' => (
        Icons.warning_amber_rounded,
        'Slightly elevated — monitor closely',
        Colors.orange,
      ),
      _ => (
        Icons.local_fire_department,
        'Fever — consult your doctor',
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
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Temperature reference',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 6),
            ...[
              ('Low', '< 36.0 °C / 96.8 °F', Colors.blue),
              ('Normal', '36.0 – 37.4 °C / 96.8 – 99.3 °F', Colors.green),
              ('Elevated', '37.5 – 38.4 °C / 99.5 – 101.1 °F', Colors.orange),
              ('Fever', '≥ 38.5 °C / 101.3 °F', Colors.red),
            ].map(
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
              '⚠️ Always consult your paediatrician for fever in infants under 3 months.',
              style: TextStyle(fontSize: 11, color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }
}
