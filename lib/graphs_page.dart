import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class GraphsPage extends StatefulWidget {
  const GraphsPage({super.key, required this.data});

  final Map<String, List<TrackerEvent>> data;

  @override
  State<GraphsPage> createState() => _GraphsPageState();
}

class _GraphsPageState extends State<GraphsPage> {
  int _rangeDays = 7;

  List<DateTime> get _dateRange {
    final today = DateTime.now();
    return List.generate(
      _rangeDays,
      (i) => today.subtract(Duration(days: _rangeDays - 1 - i)),
    );
  }

  List<_DayStats> _buildStats() {
    return _dateRange.map((d) {
      final key = dateKey(d);
      final events = widget.data[key] ?? [];
      int feeds = 0, diapers = 0, milk = 0, breastMin = 0;
      for (final e in events) {
        if (e.type == 'feeding') {
          feeds++;
          final isBottle = (e.data['isBottle'] as bool?) ?? true;
          if (isBottle) {
            milk += (e.data['amountMl'] as num?)?.toInt() ?? 0;
          } else {
            breastMin += (e.data['durationMin'] as num?)?.toInt() ?? 0;
          }
        } else if (e.type == 'diaper') {
          diapers++;
        }
      }
      return _DayStats(
          date: d,
          feeds: feeds,
          diapers: diapers,
          milk: milk,
          breastMin: breastMin);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final stats = _buildStats();
    final totalFeeds = stats.fold(0, (s, d) => s + d.feeds);
    final totalDiapers = stats.fold(0, (s, d) => s + d.diapers);
    final totalMilk = stats.fold(0, (s, d) => s + d.milk);
    final totalBreast = stats.fold(0, (s, d) => s + d.breastMin);
    final avgFeeds =
        totalFeeds == 0 ? '0' : (totalFeeds / _rangeDays).toStringAsFixed(1);
    final avgMilk =
        totalMilk == 0 ? '0' : (totalMilk / _rangeDays).toStringAsFixed(0);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Graphs & Stats'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Range selector
          SegmentedButton<int>(
            segments: const [
              ButtonSegment(value: 7, label: Text('7 days')),
              ButtonSegment(value: 14, label: Text('14 days')),
              ButtonSegment(value: 30, label: Text('30 days')),
            ],
            selected: {_rangeDays},
            onSelectionChanged: (s) => setState(() => _rangeDays = s.first),
          ),
          const SizedBox(height: 16),

          // Summary cards
          Row(
            children: [
              _SummaryCard(
                  label: 'Total feeds',
                  value: '$totalFeeds',
                  icon: Icons.local_drink,
                  color: Colors.pink),
              const SizedBox(width: 8),
              _SummaryCard(
                  label: 'Avg/day',
                  value: avgFeeds,
                  icon: Icons.trending_up,
                  color: Colors.orange),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _SummaryCard(
                  label: 'Total diapers',
                  value: '$totalDiapers',
                  icon: Icons.baby_changing_station,
                  color: Colors.brown),
              const SizedBox(width: 8),
              _SummaryCard(
                  label: 'Total milk (ml)',
                  value: '$totalMilk',
                  icon: Icons.opacity,
                  color: Colors.blue),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _SummaryCard(
                  label: 'Breast (min)',
                  value: '$totalBreast',
                  icon: Icons.child_care,
                  color: Colors.deepPurple),
              const SizedBox(width: 8),
              _SummaryCard(
                  label: 'Avg milk/day',
                  value: '$avgMilk ml',
                  icon: Icons.local_drink_outlined,
                  color: Colors.teal),
            ],
          ),

          const SizedBox(height: 24),

          _ChartCard(
            title: 'Feeds per day',
            stats: stats,
            color: Colors.pink,
            getValue: (s) => s.feeds.toDouble(),
            unit: 'feeds',
          ),
          const SizedBox(height: 16),
          _ChartCard(
            title: 'Diapers per day',
            stats: stats,
            color: Colors.brown,
            getValue: (s) => s.diapers.toDouble(),
            unit: 'diapers',
          ),
          const SizedBox(height: 16),
          _ChartCard(
            title: 'Milk (ml) per day',
            stats: stats,
            color: Colors.blue,
            getValue: (s) => s.milk.toDouble(),
            unit: 'ml',
          ),
          const SizedBox(height: 16),
          _ChartCard(
            title: 'Breastfeeding (min) per day',
            stats: stats,
            color: Colors.deepPurple,
            getValue: (s) => s.breastMin.toDouble(),
            unit: 'min',
          ),
        ],
      ),
    );
  }
}

class _DayStats {
  final DateTime date;
  final int feeds;
  final int diapers;
  final int milk;
  final int breastMin;

  const _DayStats({
    required this.date,
    required this.feeds,
    required this.diapers,
    required this.milk,
    required this.breastMin,
  });
}

class _SummaryCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;
  final Color color;

  const _SummaryCard({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: [
              Icon(icon, color: color, size: 24),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(label,
                        style: const TextStyle(
                            fontSize: 11, color: Colors.grey)),
                    Text(value,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// A simple bar chart drawn with CustomPaint — no external chart library needed.
class _ChartCard extends StatelessWidget {
  final String title;
  final List<_DayStats> stats;
  final Color color;
  final double Function(_DayStats) getValue;
  final String unit;

  const _ChartCard({
    required this.title,
    required this.stats,
    required this.color,
    required this.getValue,
    required this.unit,
  });

  @override
  Widget build(BuildContext context) {
    final values = stats.map(getValue).toList();
    final maxVal = values.fold(0.0, (a, b) => a > b ? a : b);

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 12),
            maxVal == 0
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Text('No data',
                          style: TextStyle(color: Colors.grey.shade500)),
                    ),
                  )
                : SizedBox(
                    height: 140,
                    child: CustomPaint(
                      painter: _BarChartPainter(
                        values: values,
                        maxVal: maxVal,
                        color: color,
                        labels: stats
                            .map((s) =>
                                '${s.date.month}/${s.date.day}')
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
                  'Max: ${maxVal.toInt()} $unit',
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _BarChartPainter extends CustomPainter {
  final List<double> values;
  final double maxVal;
  final Color color;
  final List<String> labels;
  final BuildContext context;

  _BarChartPainter({
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
    final bgPaint = Paint()
      ..color = color.withAlpha(25)
      ..style = PaintingStyle.fill;
    final textStyle = TextStyle(
      color: Theme.of(context).colorScheme.onSurface.withAlpha(150),
      fontSize: 9,
    );

    final chartHeight = size.height - 20; // leave room for labels
    final barWidth = (size.width / values.length) * 0.6;
    final gap = size.width / values.length;

    for (int i = 0; i < values.length; i++) {
      final x = gap * i + gap / 2;
      final barH = (values[i] / maxVal) * chartHeight;

      // background track
      final bgRect = RRect.fromRectAndRadius(
        Rect.fromLTWH(x - barWidth / 2, 0, barWidth, chartHeight),
        const Radius.circular(4),
      );
      canvas.drawRRect(bgRect, bgPaint);

      // filled bar
      if (barH > 0) {
        final barRect = RRect.fromRectAndRadius(
          Rect.fromLTWH(
              x - barWidth / 2, chartHeight - barH, barWidth, barH),
          const Radius.circular(4),
        );
        canvas.drawRRect(barRect, barPaint);
      }

      // label
      // Only show every Nth label to avoid clutter
      final showLabel = values.length <= 10 || i % (values.length ~/ 7) == 0;
      if (showLabel) {
        final tp = TextPainter(
          text: TextSpan(text: labels[i], style: textStyle),
          textDirection: TextDirection.ltr,
        )..layout();
        tp.paint(canvas,
            Offset(x - tp.width / 2, chartHeight + 4));
      }
    }
  }

  @override
  bool shouldRepaint(covariant _BarChartPainter old) =>
      old.values != values || old.maxVal != maxVal;
}