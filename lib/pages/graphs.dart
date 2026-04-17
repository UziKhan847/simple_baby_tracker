import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/baby_profile.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class GraphsPage extends StatefulWidget {
  const GraphsPage({super.key, required this.data, this.profile});

  final Map<String, List<TrackerEvent>> data;
  final BabyProfile? profile;

  @override
  State<GraphsPage> createState() => _GraphsPageState();
}

class _GraphsPageState extends State<GraphsPage>
    with SingleTickerProviderStateMixin {
  int _rangeDays = 7;
  late final TabController _tabs;

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  List<DateTime> get _dateRange {
    final today = DateTime.now();
    return List.generate(
      _rangeDays,
      (i) => today.subtract(Duration(days: _rangeDays - 1 - i)),
    );
  }

  List<_DayStat> _buildStats() {
    return _dateRange.map((d) {
      final key = dateKey(d);
      final events = widget.data[key] ?? [];

      int feeds = 0, diapers = 0, milk = 0, breastMin = 0, sleepMin = 0;
      double? tempC;
      double? weightKg;

      for (final e in events) {
        switch (e.type) {
          case 'feeding':
            feeds++;
            final isBottle = (e.data['isBottle'] as bool?) ?? true;
            if (isBottle) {
              milk += (e.data['amountMl'] as num?)?.toInt() ?? 0;
            } else {
              breastMin += (e.data['durationMin'] as num?)?.toInt() ?? 0;
            }
          case 'diaper':
            diapers++;
          case 'sleep':
            sleepMin += (e.data['durationMin'] as num?)?.toInt() ?? 0;
          case 'temperature':
            // Use last temp of the day
            final c = (e.data['valueCelsius'] as num?)?.toDouble();
            if (c != null) tempC = c;
          case 'weight':
            final kg = (e.data['valueKg'] as num?)?.toDouble();
            if (kg != null) weightKg = kg;
        }
      }

      return _DayStat(
        date: d,
        feeds: feeds,
        diapers: diapers,
        milk: milk,
        breastMin: breastMin,
        sleepMin: sleepMin,
        tempC: tempC,
        weightKg: weightKg,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final stats = _buildStats();
    final settings = SettingsProvider.of(context).settings;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.profile != null
              ? '${widget.profile!.name} — Graphs'
              : 'Graphs',
        ),
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabs,
          tabs: const [
            Tab(text: 'Daily'),
            Tab(text: 'Growth'),
            Tab(text: 'Health'),
          ],
        ),
      ),
      body: Column(
        children: [
          // Range selector
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
            child: SegmentedButton<int>(
              segments: const [
                ButtonSegment(value: 7, label: Text('7 days')),
                ButtonSegment(value: 14, label: Text('14 days')),
                ButtonSegment(value: 30, label: Text('30 days')),
              ],
              selected: {_rangeDays},
              onSelectionChanged: (s) => setState(() => _rangeDays = s.first),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: TabBarView(
              controller: _tabs,
              children: [
                _DailyTab(stats: stats),
                _GrowthTab(stats: stats, settings: settings),
                _HealthTab(stats: stats, settings: settings),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Tab: Daily (feeds, diapers, sleep, milk) ─────────────────────────────

class _DailyTab extends StatelessWidget {
  final List<_DayStat> stats;
  const _DailyTab({required this.stats});

  @override
  Widget build(BuildContext context) {
    final totalFeeds = stats.fold(0, (s, d) => s + d.feeds);
    final totalDiapers = stats.fold(0, (s, d) => s + d.diapers);
    final totalMilk = stats.fold(0, (s, d) => s + d.milk);
    final totalSleep = stats.fold(0, (s, d) => s + d.sleepMin);
    final n = stats.length;
    final avgFeeds = n == 0 ? 0.0 : totalFeeds / n;
    final avgSleepH = n == 0 ? 0.0 : totalSleep / n / 60;

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      children: [
        // Summary row
        _SummaryRow(
          items: [
            _SummaryItem(
              label: 'Total feeds',
              value: '$totalFeeds',
              icon: Icons.local_drink,
              color: Colors.pink,
            ),
            _SummaryItem(
              label: 'Avg/day',
              value: avgFeeds.toStringAsFixed(1),
              icon: Icons.trending_up,
              color: Colors.orange,
            ),
          ],
        ),
        const SizedBox(height: 8),
        _SummaryRow(
          items: [
            _SummaryItem(
              label: 'Diapers',
              value: '$totalDiapers',
              icon: Icons.baby_changing_station,
              color: Colors.brown,
            ),
            _SummaryItem(
              label: 'Total milk',
              value: '${totalMilk}ml',
              icon: Icons.opacity,
              color: Colors.blue,
            ),
          ],
        ),
        const SizedBox(height: 8),
        _SummaryRow(
          items: [
            _SummaryItem(
              label: 'Total sleep',
              value: '${(totalSleep / 60).toStringAsFixed(1)}h',
              icon: Icons.bedtime,
              color: Colors.indigo,
            ),
            _SummaryItem(
              label: 'Avg sleep/day',
              value: '${avgSleepH.toStringAsFixed(1)}h',
              icon: Icons.bedtime_outlined,
              color: Colors.deepPurple,
            ),
          ],
        ),
        const SizedBox(height: 16),
        _BarChartCard(
          title: 'Feeds per day',
          stats: stats,
          color: Colors.pink,
          getValue: (s) => s.feeds.toDouble(),
          formatLabel: (v) => v.toInt().toString(),
          unit: 'feeds',
        ),
        const SizedBox(height: 12),
        _BarChartCard(
          title: 'Diapers per day',
          stats: stats,
          color: Colors.brown,
          getValue: (s) => s.diapers.toDouble(),
          formatLabel: (v) => v.toInt().toString(),
          unit: 'diapers',
        ),
        const SizedBox(height: 12),
        _BarChartCard(
          title: 'Milk per day (ml)',
          stats: stats,
          color: Colors.blue,
          getValue: (s) => s.milk.toDouble(),
          formatLabel: (v) => '${v.toInt()}ml',
          unit: 'ml',
        ),
        const SizedBox(height: 12),
        _BarChartCard(
          title: 'Sleep per day (hours)',
          stats: stats,
          color: Colors.indigo,
          getValue: (s) => s.sleepMin / 60,
          formatLabel: (v) => '${v.toStringAsFixed(1)}h',
          unit: 'h',
        ),
      ],
    );
  }
}

// ─── Tab: Growth (weight) ─────────────────────────────────────────────────

class _GrowthTab extends StatelessWidget {
  final List<_DayStat> stats;
  final dynamic settings;
  const _GrowthTab({required this.stats, required this.settings});

  @override
  Widget build(BuildContext context) {
    final weightPoints = stats.where((s) => s.weightKg != null).toList();

    if (weightPoints.isEmpty) {
      return const _EmptyState(
        icon: Icons.monitor_weight_outlined,
        message: 'No weight entries yet.\nLog weight from a day\'s entries.',
      );
    }

    final useKg = settings.useKg as bool? ?? true;
    final first = weightPoints.first.weightKg!;
    final last = weightPoints.last.weightKg!;
    final diff = last - first;
    final isGain = diff >= 0;

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      children: [
        // Latest weight card
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(Icons.monitor_weight, color: Colors.teal, size: 36),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Latest weight',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      formatWeight(last, useKg: useKg),
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          isGain ? Icons.arrow_upward : Icons.arrow_downward,
                          size: 14,
                          color: isGain ? Colors.green : Colors.red,
                        ),
                        const SizedBox(width: 2),
                        Text(
                          '${isGain ? '+' : '−'}${formatWeight(diff.abs(), useKg: useKg)} over period',
                          style: TextStyle(
                            fontSize: 12,
                            color: isGain ? Colors.green : Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        _LineChartCard(
          title: 'Weight over time',
          points: weightPoints,
          color: Colors.teal,
          getValue: (s) => useKg ? s.weightKg! : kgToLbs(s.weightKg!),
          formatLabel: (v) => useKg
              ? '${v.toStringAsFixed(2)}kg'
              : '${v.toStringAsFixed(1)}lbs',
          unit: useKg ? 'kg' : 'lbs',
        ),
      ],
    );
  }
}

// ─── Tab: Health (temperature) ────────────────────────────────────────────

class _HealthTab extends StatelessWidget {
  final List<_DayStat> stats;
  final dynamic settings;
  const _HealthTab({required this.stats, required this.settings});

  @override
  Widget build(BuildContext context) {
    final tempPoints = stats.where((s) => s.tempC != null).toList();
    final useCelsius = settings.useCelsius as bool? ?? true;

    if (tempPoints.isEmpty) {
      return const _EmptyState(
        icon: Icons.thermostat,
        message: 'No temperature entries yet.\nLog temperature from a day.',
      );
    }

    final latest = tempPoints.last.tempC!;
    final severity = tempSeverity(latest);
    final severityColor = switch (severity) {
      'fever' => Colors.red,
      'elevated' => Colors.orange,
      'low' => Colors.blue,
      _ => Colors.green,
    };

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      children: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(Icons.thermostat, color: severityColor, size: 36),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Latest temperature',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      formatTemp(latest, useCelsius: useCelsius),
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      severity[0].toUpperCase() + severity.substring(1),
                      style: TextStyle(
                        color: severityColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 12),
        // Fever indicator bar
        _FeverZoneCard(tempPoints: tempPoints, useCelsius: useCelsius),
        const SizedBox(height: 12),
        _LineChartCard(
          title: 'Temperature over time',
          points: tempPoints,
          color: Colors.orange,
          getValue: (s) =>
              useCelsius ? s.tempC! : celsiusToFahrenheit(s.tempC!),
          formatLabel: (v) => useCelsius
              ? '${v.toStringAsFixed(1)}°C'
              : '${v.toStringAsFixed(1)}°F',
          unit: useCelsius ? '°C' : '°F',
          // Draw fever threshold line
          thresholdValue: useCelsius ? 38.5 : celsiusToFahrenheit(38.5),
          thresholdLabel: 'Fever threshold',
        ),
      ],
    );
  }
}

class _FeverZoneCard extends StatelessWidget {
  final List<_DayStat> tempPoints;
  final bool useCelsius;
  const _FeverZoneCard({required this.tempPoints, required this.useCelsius});

  @override
  Widget build(BuildContext context) {
    final feverDays = tempPoints
        .where((s) => tempSeverity(s.tempC!) == 'fever')
        .length;
    final elevatedDays = tempPoints
        .where((s) => tempSeverity(s.tempC!) == 'elevated')
        .length;
    final normalDays = tempPoints
        .where((s) => tempSeverity(s.tempC!) == 'normal')
        .length;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Temperature summary',
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(height: 10),
            _FeverRow(label: 'Normal', count: normalDays, color: Colors.green),
            _FeverRow(
              label: 'Elevated',
              count: elevatedDays,
              color: Colors.orange,
            ),
            _FeverRow(label: 'Fever', count: feverDays, color: Colors.red),
          ],
        ),
      ),
    );
  }
}

class _FeverRow extends StatelessWidget {
  final String label;
  final int count;
  final Color color;
  const _FeverRow({
    required this.label,
    required this.count,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
          const SizedBox(width: 8),
          Text(label, style: const TextStyle(fontSize: 13)),
          const Spacer(),
          Text(
            '$count day${count == 1 ? '' : 's'}',
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// ─── Shared chart widgets ──────────────────────────────────────────────────

class _SummaryRow extends StatelessWidget {
  final List<_SummaryItem> items;
  const _SummaryRow({required this.items});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map(
            (item) => Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: items.last == item ? 0 : 8),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        Icon(item.icon, color: item.color, size: 22),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item.label,
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                item.value,
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}

class _SummaryItem {
  final String label, value;
  final IconData icon;
  final Color color;
  const _SummaryItem({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });
}

/// Bar chart card — used for feeds, diapers, milk, sleep.
class _BarChartCard extends StatelessWidget {
  final String title;
  final List<_DayStat> stats;
  final Color color;
  final double Function(_DayStat) getValue;
  final String Function(double) formatLabel;
  final String unit;

  const _BarChartCard({
    required this.title,
    required this.stats,
    required this.color,
    required this.getValue,
    required this.formatLabel,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    final values = stats.map(getValue).toList();
    final maxVal = values.fold(0.0, (a, b) => a > b ? a : b);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 10),
            maxVal == 0
                ? _noDataWidget()
                : SizedBox(
                    height: 130,
                    child: CustomPaint(
                      painter: _BarPainter(
                        values: values,
                        maxVal: maxVal,
                        color: color,
                        labels: stats
                            .map((s) => '${s.date.month}/${s.date.day}')
                            .toList(),
                        context: context,
                      ),
                      child: const SizedBox.expand(),
                    ),
                  ),
            if (maxVal > 0)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  'Max: ${formatLabel(maxVal)}',
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

/// Line chart card — used for weight and temperature.
class _LineChartCard extends StatelessWidget {
  final String title;
  final List<_DayStat> points;
  final Color color;
  final double Function(_DayStat) getValue;
  final String Function(double) formatLabel;
  final String unit;
  final double? thresholdValue;
  final String? thresholdLabel;

  const _LineChartCard({
    required this.title,
    required this.points,
    required this.color,
    required this.getValue,
    required this.formatLabel,
    required this.unit,
    this.thresholdValue,
    this.thresholdLabel,
  });

  @override
  Widget build(BuildContext context) {
    if (points.isEmpty) return const SizedBox.shrink();
    final values = points.map(getValue).toList();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: CustomPaint(
                painter: _LinePainter(
                  values: values,
                  color: color,
                  labels: points
                      .map((s) => '${s.date.month}/${s.date.day}')
                      .toList(),
                  context: context,
                  thresholdValue: thresholdValue,
                  thresholdLabel: thresholdLabel,
                ),
                child: const SizedBox.expand(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Min: ${formatLabel(values.reduce((a, b) => a < b ? a : b))}',
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
                ),
                Text(
                  'Max: ${formatLabel(values.reduce((a, b) => a > b ? a : b))}',
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _noDataWidget() => const Padding(
  padding: EdgeInsets.symmetric(vertical: 24),
  child: Center(
    child: Text('No data', style: TextStyle(color: Colors.grey)),
  ),
);

class _EmptyState extends StatelessWidget {
  final IconData icon;
  final String message;
  const _EmptyState({required this.icon, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 56, color: Colors.grey.shade400),
          const SizedBox(height: 12),
          Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade600, height: 1.5),
          ),
        ],
      ),
    );
  }
}

// ─── CustomPainters ────────────────────────────────────────────────────────

class _BarPainter extends CustomPainter {
  final List<double> values;
  final double maxVal;
  final Color color;
  final List<String> labels;
  final BuildContext context;

  _BarPainter({
    required this.values,
    required this.maxVal,
    required this.color,
    required this.labels,
    required this.context,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (values.isEmpty || maxVal == 0) return;
    final barPaint = Paint()..color = color;
    final bgPaint = Paint()..color = color.withAlpha(20);
    final textStyle = TextStyle(
      color: Theme.of(context).colorScheme.onSurface.withAlpha(140),
      fontSize: 9,
    );
    final chartH = size.height - 18;
    final slotW = size.width / values.length;
    final barW = slotW * 0.55;

    for (int i = 0; i < values.length; i++) {
      final x = slotW * i + slotW / 2;
      final barH = (values[i] / maxVal) * chartH;

      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(x - barW / 2, 0, barW, chartH),
          const Radius.circular(4),
        ),
        bgPaint,
      );
      if (barH > 0) {
        canvas.drawRRect(
          RRect.fromRectAndRadius(
            Rect.fromLTWH(x - barW / 2, chartH - barH, barW, barH),
            const Radius.circular(4),
          ),
          barPaint,
        );
      }
      // label every Nth to avoid clutter
      if (values.length <= 10 ||
          i == 0 ||
          i == values.length - 1 ||
          i % (values.length ~/ 7) == 0) {
        final tp = TextPainter(
          text: TextSpan(text: labels[i], style: textStyle),
          textDirection: TextDirection.ltr,
        )..layout();
        tp.paint(canvas, Offset(x - tp.width / 2, chartH + 4));
      }
    }
  }

  @override
  bool shouldRepaint(covariant _BarPainter old) =>
      old.values != values || old.maxVal != maxVal;
}

class _LinePainter extends CustomPainter {
  final List<double> values;
  final Color color;
  final List<String> labels;
  final BuildContext context;
  final double? thresholdValue;
  final String? thresholdLabel;

  _LinePainter({
    required this.values,
    required this.color,
    required this.labels,
    required this.context,
    this.thresholdValue,
    this.thresholdLabel,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (values.length < 2) return;

    final minV = values.reduce((a, b) => a < b ? a : b);
    double maxV = values.reduce((a, b) => a > b ? a : b);
    if (thresholdValue != null && thresholdValue! > maxV) {
      maxV = thresholdValue!;
    }
    final range = (maxV - minV).abs();
    final padded = range == 0 ? 1.0 : range;

    final chartH = size.height - 18;
    final slotW = size.width / (values.length - 1);

    Offset toOffset(int i) {
      final x = slotW * i;
      final y = chartH - ((values[i] - minV) / padded) * chartH;
      return Offset(x, y);
    }

    // Fill
    final fillPath = Path();
    fillPath.moveTo(0, chartH);
    for (int i = 0; i < values.length; i++) {
      final o = toOffset(i);
      i == 0 ? fillPath.lineTo(o.dx, o.dy) : fillPath.lineTo(o.dx, o.dy);
    }
    fillPath.lineTo(slotW * (values.length - 1), chartH);
    fillPath.close();
    canvas.drawPath(fillPath, Paint()..color = color.withAlpha(30));

    // Line
    final linePaint = Paint()
      ..color = color
      ..strokeWidth = 2.5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final linePath = Path();
    for (int i = 0; i < values.length; i++) {
      final o = toOffset(i);
      i == 0 ? linePath.moveTo(o.dx, o.dy) : linePath.lineTo(o.dx, o.dy);
    }
    canvas.drawPath(linePath, linePaint);

    // Dots
    final dotPaint = Paint()..color = color;
    for (int i = 0; i < values.length; i++) {
      canvas.drawCircle(toOffset(i), 4, dotPaint);
      canvas.drawCircle(
        toOffset(i),
        4,
        Paint()
          ..color = Colors.white
          ..strokeWidth = 1.5
          ..style = PaintingStyle.stroke,
      );
    }

    // Threshold line
    if (thresholdValue != null) {
      final ty = chartH - ((thresholdValue! - minV) / padded) * chartH;
      final threshPaint = Paint()
        ..color = Colors.red.withAlpha(160)
        ..strokeWidth = 1.5
        ..style = PaintingStyle.stroke;
      canvas.drawLine(Offset(0, ty), Offset(size.width, ty), threshPaint);

      final tp = TextPainter(
        text: TextSpan(
          text: thresholdLabel ?? '',
          style: const TextStyle(fontSize: 9, color: Colors.red),
        ),
        textDirection: TextDirection.ltr,
      )..layout();
      tp.paint(canvas, Offset(4, ty - 13));
    }

    // X labels
    final textStyle = TextStyle(
      color: Theme.of(context).colorScheme.onSurface.withAlpha(140),
      fontSize: 9,
    );
    for (int i = 0; i < values.length; i++) {
      if (values.length <= 8 ||
          i == 0 ||
          i == values.length - 1 ||
          i % (values.length ~/ 5) == 0) {
        final tp = TextPainter(
          text: TextSpan(text: labels[i], style: textStyle),
          textDirection: TextDirection.ltr,
        )..layout();
        tp.paint(canvas, Offset(slotW * i - tp.width / 2, chartH + 4));
      }
    }
  }

  @override
  bool shouldRepaint(covariant _LinePainter old) => old.values != values;
}

// ─── Data model ───────────────────────────────────────────────────────────

class _DayStat {
  final DateTime date;
  final int feeds;
  final int diapers;
  final int milk;
  final int breastMin;
  final int sleepMin;
  final double? tempC;
  final double? weightKg;

  const _DayStat({
    required this.date,
    required this.feeds,
    required this.diapers,
    required this.milk,
    required this.breastMin,
    required this.sleepMin,
    this.tempC,
    this.weightKg,
  });
}
