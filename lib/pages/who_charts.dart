import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/baby_profile.dart';
import 'package:simple_baby_tracker/data/who.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class WhoChartsPage extends StatefulWidget {
  final Map<String, List<TrackerEvent>> data;
  final BabyProfile? profile;

  const WhoChartsPage({
    super.key,
    required this.data,
    this.profile,
  });

  @override
  State<WhoChartsPage> createState() => _WhoChartsPageState();
}

class _WhoChartsPageState extends State<WhoChartsPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabs;
  bool _showBoy = true;

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 3, vsync: this);
    // Default gender from profile
    if (widget.profile?.gender == 'female') _showBoy = false;
  }

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  // ─── Data extraction ───────────────────────────────────────────────────────

  /// Returns all weight entries sorted by date as (ageMonths, kg) pairs.
  List<(double, double)> _weightPoints() {
    final birth = widget.profile?.birthDate;
    final points = <(double, double)>[];

    for (final entry in widget.data.entries) {
      for (final e in entry.value) {
        if (e.type != 'weight') continue;
        final kg = (e.data['valueKg'] as num?)?.toDouble();
        if (kg == null) continue;
        final ageMonths = birth != null
            ? e.time.difference(birth).inDays / 30.44
            : null;
        if (ageMonths != null && ageMonths >= 0 && ageMonths <= 24) {
          points.add((ageMonths, kg));
        }
      }
    }
    points.sort((a, b) => a.$1.compareTo(b.$1));
    return points;
  }

  List<(double, double)> _heightPoints() {
    final birth = widget.profile?.birthDate;
    final points = <(double, double)>[];
    for (final entry in widget.data.entries) {
      for (final e in entry.value) {
        if (e.type != 'doctor_visit') continue;
        final cm = (e.data['heightCm'] as num?)?.toDouble();
        if (cm == null) continue;
        final ageMonths = birth != null
            ? e.time.difference(birth).inDays / 30.44
            : null;
        if (ageMonths != null && ageMonths >= 0 && ageMonths <= 24) {
          points.add((ageMonths, cm));
        }
      }
    }
    points.sort((a, b) => a.$1.compareTo(b.$1));
    return points;
  }

  List<(double, double)> _headPoints() {
    final birth = widget.profile?.birthDate;
    final points = <(double, double)>[];
    for (final entry in widget.data.entries) {
      for (final e in entry.value) {
        if (e.type != 'doctor_visit') continue;
        final cm = (e.data['headCm'] as num?)?.toDouble();
        if (cm == null) continue;
        final ageMonths = birth != null
            ? e.time.difference(birth).inDays / 30.44
            : null;
        if (ageMonths != null && ageMonths >= 0 && ageMonths <= 24) {
          points.add((ageMonths, cm));
        }
      }
    }
    points.sort((a, b) => a.$1.compareTo(b.$1));
    return points;
  }

  // ─── Build ────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final settings = SettingsProvider.of(context).settings;
    final hasBirthDate = widget.profile?.birthDate != null;

    return Scaffold(
      appBar: AppBar(
        title: const Text('WHO Growth Charts'),
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabs,
          tabs: const [
            Tab(text: 'Weight'),
            Tab(text: 'Height'),
            Tab(text: 'Head'),
          ],
        ),
      ),
      body: Column(
        children: [
          // Gender toggle + birth date warning
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
            child: Row(
              children: [
                const Text('Chart for:',
                    style: TextStyle(fontSize: 13)),
                const SizedBox(width: 10),
                SegmentedButton<bool>(
                  segments: const [
                    ButtonSegment(
                        value: true,
                        label: Text('Boy'),
                        icon: Icon(Icons.boy, size: 16)),
                    ButtonSegment(
                        value: false,
                        label: Text('Girl'),
                        icon: Icon(Icons.girl, size: 16)),
                  ],
                  selected: {_showBoy},
                  onSelectionChanged: (s) =>
                      setState(() => _showBoy = s.first),
                ),
              ],
            ),
          ),
          if (!hasBirthDate)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange.withAlpha(30),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.orange.withAlpha(80)),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.info_outline,
                        color: Colors.orange, size: 16),
                    const SizedBox(width: 8),
                    const Expanded(
                      child: Text(
                        'Set baby\'s date of birth in the profile to see age-based placement on the chart.',
                        style:
                            TextStyle(fontSize: 12, color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 8),
          Expanded(
            child: TabBarView(
              controller: _tabs,
              children: [
                _GrowthChartTab(
                  title: 'Weight-for-age (0–24 months)',
                  whoData: _showBoy ? whoWeightBoys : whoWeightGirls,
                  babyPoints: _weightPoints(),
                  yLabel: settings.useKg ? 'kg' : 'lbs',
                  convertY: settings.useKg
                      ? (v) => v
                      : (v) => kgToLbs(v),
                  formatY: (v) => settings.useKg
                      ? v.toStringAsFixed(1)
                      : v.toStringAsFixed(1),
                ),
                _GrowthChartTab(
                  title: 'Length/Height-for-age (0–24 months)',
                  whoData: _showBoy ? whoHeightBoys : whoHeightGirls,
                  babyPoints: _heightPoints(),
                  yLabel: 'cm',
                  convertY: (v) => v,
                  formatY: (v) => v.toStringAsFixed(1),
                ),
                _GrowthChartTab(
                  title: 'Head circumference-for-age (0–24 months)',
                  whoData: _showBoy ? whoHeadBoys : whoHeadGirls,
                  babyPoints: _headPoints(),
                  yLabel: 'cm',
                  convertY: (v) => v,
                  formatY: (v) => v.toStringAsFixed(1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Single chart tab ─────────────────────────────────────────────────────

class _GrowthChartTab extends StatelessWidget {
  final String title;
  final Map<int, List<double>> whoData;
  final List<(double, double)> babyPoints; // (ageMonths, value)
  final String yLabel;
  final double Function(double) convertY;
  final String Function(double) formatY;

  const _GrowthChartTab({
    required this.title,
    required this.whoData,
    required this.babyPoints,
    required this.yLabel,
    required this.convertY,
    required this.formatY,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),
      children: [
        Text(title,
            style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 10),

        // The chart
        SizedBox(
          height: 320,
          child: CustomPaint(
            painter: _WhoChartPainter(
              whoData: whoData,
              babyPoints: babyPoints,
              convertY: convertY,
              context: context,
            ),
            child: const SizedBox.expand(),
          ),
        ),

        const SizedBox(height: 12),

        // Legend
        _Legend(),

        // Baby's current percentile estimate
        if (babyPoints.isNotEmpty) ...[
          const SizedBox(height: 12),
          _PercentileCard(
            babyPoints: babyPoints,
            whoData: whoData,
            convertY: convertY,
            formatY: formatY,
            yLabel: yLabel,
          ),
        ] else ...[
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context)
                  .colorScheme
                  .secondaryContainer
                  .withAlpha(80),
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Text(
              'No data points yet. Log measurements to see your baby on the chart.',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ),
        ],
      ],
    );
  }
}

// ─── Percentile summary card ──────────────────────────────────────────────

class _PercentileCard extends StatelessWidget {
  final List<(double, double)> babyPoints;
  final Map<int, List<double>> whoData;
  final double Function(double) convertY;
  final String Function(double) formatY;
  final String yLabel;

  const _PercentileCard({
    required this.babyPoints,
    required this.whoData,
    required this.convertY,
    required this.formatY,
    required this.yLabel,
  });

  String _estimatePercentile(double ageMonths, double value) {
    // Find the nearest WHO month entry
    final months = whoData.keys.toList()..sort();
    int nearest = months.first;
    for (final m in months) {
      if (m <= ageMonths) nearest = m;
    }
    final percentiles = whoData[nearest]!.map(convertY).toList();
    if (value <= percentiles[0]) return '< P3';
    if (value >= percentiles[4]) return '> P97';
    // Linear interpolation between known percentile bands
    const pLabels = ['P3', 'P15', 'P50', 'P85', 'P97'];
    for (int i = 0; i < 4; i++) {
      if (value >= percentiles[i] && value <= percentiles[i + 1]) {
        return 'between ${pLabels[i]} and ${pLabels[i + 1]}';
      }
    }
    return 'P50';
  }

  @override
  Widget build(BuildContext context) {
    final latest = babyPoints.last;
    final percentileStr =
        _estimatePercentile(latest.$1, convertY(latest.$2));
    final ageStr =
        '${latest.$1.toStringAsFixed(1)} months old';

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Latest measurement',
                style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 6),
            Row(
              children: [
                const Icon(Icons.child_care, color: Colors.blue),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${formatY(convertY(latest.$2))} $yLabel  ·  $ageStr',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        'Approximate percentile: $percentileStr',
                        style: const TextStyle(
                            fontSize: 13, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              '⚠️ These charts are for informational purposes. Always consult your paediatrician for clinical interpretation.',
              style: TextStyle(
                  fontSize: 11, color: Colors.grey.shade600),
            ),
          ],
        ),
      ),
    );
  }
}

// ─── Legend widget ────────────────────────────────────────────────────────

class _Legend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 16,
      runSpacing: 4,
      children: [
        _LegendItem(color: Color(whoPercentileColors[2]),
            label: 'P50 (median)', bold: true),
        _LegendItem(color: Color(whoPercentileColors[1]),
            label: 'P15 / P85'),
        _LegendItem(color: Color(whoPercentileColors[0]),
            label: 'P3 / P97'),
        _LegendItem(color: Colors.red, label: 'Your baby', isDot: true),
      ],
    );
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;
  final bool bold;
  final bool isDot;

  const _LegendItem({
    required this.color,
    required this.label,
    this.bold = false,
    this.isDot = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        isDot
            ? Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    color: color, shape: BoxShape.circle),
              )
            : Container(
                width: 24,
                height: bold ? 3 : 1.5,
                color: color,
              ),
        const SizedBox(width: 4),
        Text(label,
            style: TextStyle(
                fontSize: 11,
                fontWeight:
                    bold ? FontWeight.bold : FontWeight.normal,
                color: Theme.of(context)
                    .colorScheme
                    .onSurface
                    .withAlpha(180))),
      ],
    );
  }
}

// ─── CustomPainter ────────────────────────────────────────────────────────

class _WhoChartPainter extends CustomPainter {
  final Map<int, List<double>> whoData;
  final List<(double, double)> babyPoints;
  final double Function(double) convertY;
  final BuildContext context;

  _WhoChartPainter({
    required this.whoData,
    required this.babyPoints,
    required this.convertY,
    required this.context,
  });

  @override
  void paint(Canvas canvas, Size size) {
    const leftPad = 40.0;
    const bottomPad = 24.0;
    const topPad = 10.0;
    final chartW = size.width - leftPad;
    final chartH = size.height - bottomPad - topPad;

    // Determine Y range from WHO data
    final allValues = whoData.values
        .expand((list) => list.map(convertY))
        .toList();
    final minY = allValues.reduce((a, b) => a < b ? a : b) - 0.5;
    final maxY = allValues.reduce((a, b) => a > b ? a : b) + 0.5;
    const maxAge = 24.0;

    Offset toCanvas(double ageMonths, double value) {
      final x = leftPad + (ageMonths / maxAge) * chartW;
      final y = topPad +
          chartH -
          ((value - minY) / (maxY - minY)) * chartH;
      return Offset(x, y);
    }

    // Axis style
    final axisPaint = Paint()
      ..color = Theme.of(context).colorScheme.outline.withAlpha(100)
      ..strokeWidth = 1;
    final textStyle = TextStyle(
      color: Theme.of(context).colorScheme.onSurface.withAlpha(120),
      fontSize: 9,
    );

    // Grid lines
    final gridPaint = Paint()
      ..color = Theme.of(context).colorScheme.outline.withAlpha(40)
      ..strokeWidth = 0.5;
    for (int m = 0; m <= 24; m += 3) {
      final x = leftPad + (m / 24) * chartW;
      canvas.drawLine(Offset(x, topPad),
          Offset(x, topPad + chartH), gridPaint);
      final tp = TextPainter(
        text: TextSpan(text: '$m', style: textStyle),
        textDirection: TextDirection.ltr,
      )..layout();
      tp.paint(canvas,
          Offset(x - tp.width / 2, topPad + chartH + 6));
    }

    // Draw WHO percentile curves
    final sortedMonths = whoData.keys.toList()..sort();
    for (int pi = 0; pi < 5; pi++) {
      final color = Color(whoPercentileColors[pi]);
      final bold = whoPercentileBold[pi];
      final paint = Paint()
        ..color = color.withAlpha(pi == 2 ? 220 : 140)
        ..strokeWidth = bold ? 2.0 : 1.0
        ..style = PaintingStyle.stroke;

      final path = Path();
      bool first = true;
      for (final month in sortedMonths) {
        final val = convertY(whoData[month]![pi]);
        final pt = toCanvas(month.toDouble(), val);
        if (first) {
          path.moveTo(pt.dx, pt.dy);
          first = false;
        } else {
          path.lineTo(pt.dx, pt.dy);
        }
      }
      canvas.drawPath(path, paint);

      // Label at right edge
      final lastMonth = sortedMonths.last;
      final lastVal = convertY(whoData[lastMonth]![pi]);
      final labelPt = toCanvas(lastMonth.toDouble(), lastVal);
      final tp = TextPainter(
        text: TextSpan(
            text: whoPercentileLabels[pi],
            style: textStyle.copyWith(color: color)),
        textDirection: TextDirection.ltr,
      )..layout();
      tp.paint(canvas,
          Offset(labelPt.dx + 2, labelPt.dy - tp.height / 2));
    }

    // Draw baby's data points
    if (babyPoints.isNotEmpty) {
      final dotPaint = Paint()..color = Colors.red;
      final linePaint = Paint()
        ..color = Colors.red.withAlpha(160)
        ..strokeWidth = 1.5
        ..style = PaintingStyle.stroke;

      if (babyPoints.length > 1) {
        final linePath = Path();
        for (int i = 0; i < babyPoints.length; i++) {
          final pt = toCanvas(
              babyPoints[i].$1, convertY(babyPoints[i].$2));
          i == 0
              ? linePath.moveTo(pt.dx, pt.dy)
              : linePath.lineTo(pt.dx, pt.dy);
        }
        canvas.drawPath(linePath, linePaint);
      }

      for (final point in babyPoints) {
        final pt = toCanvas(point.$1, convertY(point.$2));
        canvas.drawCircle(pt, 4, dotPaint);
        canvas.drawCircle(
            pt,
            4,
            Paint()
              ..color = Colors.white
              ..strokeWidth = 1.5
              ..style = PaintingStyle.stroke);
      }
    }

    // Y-axis
    canvas.drawLine(Offset(leftPad, topPad),
        Offset(leftPad, topPad + chartH), axisPaint);
    canvas.drawLine(
        Offset(leftPad, topPad + chartH),
        Offset(leftPad + chartW, topPad + chartH),
        axisPaint);
  }

  @override
  bool shouldRepaint(covariant _WhoChartPainter old) =>
      old.babyPoints != babyPoints || old.whoData != whoData;
}