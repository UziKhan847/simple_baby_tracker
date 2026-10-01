import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/baby_profile.dart';
import 'package:simple_baby_tracker/forms/weight.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/models/skin_condition.dart';
import 'package:simple_baby_tracker/pages/skin_conditions.dart';
import 'package:simple_baby_tracker/pages/who_charts.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';
import 'package:simple_baby_tracker/widgets/category_icon_badge.dart';
import 'package:simple_baby_tracker/widgets/pill_segmented_control.dart';

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
    final l = AppLocalizations.of(context)!;
    final stats = _buildStats();
    final settings = SettingsProvider.of(context).settings;

    return Scaffold(
      appBar: AppBar(
        title: Text(l.graphsTitle),
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabs,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          tabs: [
            Tab(text: l.graphsTabDaily),
            Tab(text: l.graphsTabGrowth),
            Tab(text: l.graphsTabHealth),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
            child: PillSegmentedControl<int>(
              options: const [
                PillSegmentedOption(value: 7, label: '7 days'),
                PillSegmentedOption(value: 14, label: '14 days'),
                PillSegmentedOption(value: 30, label: '30 days'),
              ],
              selected: _rangeDays,
              onChanged: (v) => setState(() => _rangeDays = v),
            ),
          ),
          const SizedBox(height: 8),
          Expanded(
            child: TabBarView(
              controller: _tabs,
              children: [
                _DailyTab(stats: stats, l: l, useMl: settings.useMl),
                _GrowthTab(
                  settings: settings,
                  l: l,
                  data: widget.data,
                  profile: widget.profile,
                ),
                _HealthTab(
                  stats: stats,
                  settings: settings,
                  l: l,
                  profile: widget.profile,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ─── Tab: Daily ────────────────────────────────────────────────────────────

class _DailyTab extends StatelessWidget {
  final List<_DayStat> stats;
  final AppLocalizations l;
  final bool useMl;
  const _DailyTab({required this.stats, required this.l, required this.useMl});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
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
        _SummaryRow(
          items: [
            _SummaryItem(
              label: l.graphsTotalFeeds,
              value: '$totalFeeds',
              icon: AppIcons.bottle,
              color: colors.feedingStrong,
            ),
            _SummaryItem(
              label: l.graphsAvgPerDay,
              value: avgFeeds.toStringAsFixed(1),
              icon: AppIcons.trendUp,
              color: colors.temperatureStrong,
            ),
          ],
        ),
        const SizedBox(height: 8),
        _SummaryRow(
          items: [
            _SummaryItem(
              label: l.graphsTotalDiapers,
              value: '$totalDiapers',
              icon: AppIcons.diaper,
              color: colors.diaperStrong,
            ),
            _SummaryItem(
              label: l.graphsTotalMilk,
              value: formatMilk(totalMilk, useMl: useMl),
              icon: AppIcons.milkTotal,
              color: colors.feedingStrong,
            ),
          ],
        ),
        const SizedBox(height: 8),
        _SummaryRow(
          items: [
            _SummaryItem(
              label: l.graphsTotalSleep,
              value: '${(totalSleep / 60).toStringAsFixed(1)}h',
              icon: AppIcons.sleep,
              color: colors.sleepStrong,
            ),
            _SummaryItem(
              label: l.graphsAvgSleep,
              value: '${avgSleepH.toStringAsFixed(1)}h',
              icon: AppIcons.avgSleep,
              color: colors.sleepStrong,
            ),
          ],
        ),
        const SizedBox(height: 16),
        _BarChartCard(
          title: l.graphsFeedsPerDay,
          stats: stats,
          color: colors.feedingStrong,
          getValue: (s) => s.feeds.toDouble(),
          formatLabel: (v) => v.toInt().toString(),
          maxLabel: (v) => l.graphsMaxLabel(v.toInt().toString()),
        ),
        const SizedBox(height: 12),
        _BarChartCard(
          title: l.graphsDiapersPerDay,
          stats: stats,
          color: colors.diaperStrong,
          getValue: (s) => s.diapers.toDouble(),
          formatLabel: (v) => v.toInt().toString(),
          maxLabel: (v) => l.graphsMaxLabel(v.toInt().toString()),
        ),
        const SizedBox(height: 12),
        _BarChartCard(
          title: useMl ? l.graphsMilkPerDayMl : l.graphsMilkPerDayOz,
          stats: stats,
          color: colors.feedingStrong,
          getValue: (s) =>
              useMl ? s.milk.toDouble() : mlToOz(s.milk.toDouble()),
          formatLabel: (v) =>
              useMl ? '${v.toInt()}ml' : '${v.toStringAsFixed(1)}oz',
          maxLabel: (v) => l.graphsMaxLabel(
            useMl ? '${v.toInt()}ml' : '${v.toStringAsFixed(1)}oz',
          ),
        ),
        const SizedBox(height: 12),
        _BarChartCard(
          title: l.graphsSleepPerDay,
          stats: stats,
          color: colors.sleepStrong,
          getValue: (s) => s.sleepMin / 60,
          formatLabel: (v) => '${v.toStringAsFixed(1)}h',
          maxLabel: (v) => l.graphsMaxLabel('${v.toStringAsFixed(1)}h'),
        ),
      ],
    );
  }
}

// ─── Tab: Growth ───────────────────────────────────────────────────────────

/// A single growth-entry data point. Weight, height and head are each
/// optional per entry (a growth log doesn't require all three), so each
/// chart below filters this same list down to the points that actually
/// carry the measurement it's charting.
typedef _GrowthPoint = ({
  DateTime date,
  double? kg,
  double? heightCm,
  double? headCm,
  String? condition,
});

List<_GrowthPoint> _allGrowthPoints(Map<String, List<TrackerEvent>> data) {
  final points = data.values
      .expand((events) => events)
      .where((e) => e.type == 'weight')
      .map<_GrowthPoint>(
        (e) => (
          date: e.time,
          kg: (e.data['valueKg'] as num?)?.toDouble(),
          heightCm: (e.data['heightCm'] as num?)?.toDouble(),
          headCm: (e.data['headCm'] as num?)?.toDouble(),
          condition: e.data['condition'] as String?,
        ),
      )
      .toList();
  points.sort((a, b) => a.date.compareTo(b.date));
  return points;
}

class _GrowthTab extends StatelessWidget {
  final dynamic settings;
  final AppLocalizations l;
  final Map<String, List<TrackerEvent>> data;
  final BabyProfile? profile;
  const _GrowthTab({
    required this.settings,
    required this.l,
    required this.data,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    // Unlike the Daily/Health tabs, Growth always looks at the baby's whole
    // history rather than the shared 7/14/30-day range pill — weigh-ins are
    // sparse (days or weeks apart), so bounding them to a short window used
    // to mean "no weight data" the moment nothing was logged in the last
    // week, even with months of history sitting just outside it.
    final allPoints = _allGrowthPoints(data);
    final weightPoints = allPoints.where((p) => p.kg != null).toList();
    final heightPoints = allPoints.where((p) => p.heightCm != null).toList();
    final headPoints = allPoints.where((p) => p.headCm != null).toList();

    if (weightPoints.isEmpty && heightPoints.isEmpty && headPoints.isEmpty) {
      return _EmptyState(icon: AppIcons.weight, message: l.graphsNoWeightData);
    }

    final useKg = settings.useKg as bool? ?? true;

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      children: [
        if (weightPoints.isNotEmpty) ...[
          Builder(
            builder: (context) {
              final first = weightPoints.first.kg!;
              final last = weightPoints.last.kg!;
              final diff = last - first;
              final isGain = diff >= 0;
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      AppIcon(
                        AppIcons.weight,
                        color: colors.weightStrong,
                        size: 36,
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            l.weightLatest,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            formatWeight(last, useKg: useKg),
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          if (weightPoints.length > 1)
                            Row(
                              children: [
                                AppIcon(
                                  isGain
                                      ? AppIcons.arrowUp
                                      : AppIcons.arrowDown,
                                  size: 14,
                                  color: isGain ? Colors.green : Colors.red,
                                ),
                                const SizedBox(width: 2),
                                Text(
                                  l.weightOverPeriod(
                                    isGain ? '+' : '−',
                                    formatWeight(diff.abs(), useKg: useKg),
                                  ),
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
              );
            },
          ),
          const SizedBox(height: 12),
          _LineChartCard<_GrowthPoint>(
            title: l.graphsWeightOverTime,
            points: weightPoints,
            color: colors.weightStrong,
            dateOf: (p) => p.date,
            getValue: (p) => useKg ? p.kg! : kgToLbs(p.kg!),
            minLabel: (v) => l.graphsMinLabel(
              useKg
                  ? '${v.toStringAsFixed(2)}kg'
                  : '${v.toStringAsFixed(1)}lbs',
            ),
            maxLabel: (v) => l.graphsMaxLabel(
              useKg
                  ? '${v.toStringAsFixed(2)}kg'
                  : '${v.toStringAsFixed(1)}lbs',
            ),
          ),
          const SizedBox(height: 12),
          _WeighInHistory(
            points: weightPoints.reversed.take(8).toList(),
            useKg: useKg,
            l: l,
          ),
          const SizedBox(height: 12),
        ],
        if (heightPoints.isNotEmpty) ...[
          _LineChartCard<_GrowthPoint>(
            title: l.growthHeightOverTime,
            points: heightPoints,
            color: colors.growthStrong,
            dateOf: (p) => p.date,
            getValue: (p) => p.heightCm!,
            minLabel: (v) => l.graphsMinLabel('${v.toStringAsFixed(1)}cm'),
            maxLabel: (v) => l.graphsMaxLabel('${v.toStringAsFixed(1)}cm'),
          ),
          const SizedBox(height: 12),
        ],
        if (headPoints.isNotEmpty) ...[
          _LineChartCard<_GrowthPoint>(
            title: l.growthHeadOverTime,
            points: headPoints,
            color: colors.miscStrong,
            dateOf: (p) => p.date,
            getValue: (p) => p.headCm!,
            minLabel: (v) => l.graphsMinLabel('${v.toStringAsFixed(1)}cm'),
            maxLabel: (v) => l.graphsMaxLabel('${v.toStringAsFixed(1)}cm'),
          ),
          const SizedBox(height: 12),
        ],
        OutlinedButton.icon(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => WhoChartsPage(data: data, profile: profile),
            ),
          ),
          icon: const AppIcon(AppIcons.whoChart),
          label: Text(l.whoChartsEntry),
        ),
      ],
    );
  }
}

/// The last few weigh-ins as a compact list, each showing what the baby was
/// wearing — the numeric chart alone can't show that a jump or dip was
/// really just "diaper only" vs. "fully dressed" on different days.
class _WeighInHistory extends StatelessWidget {
  final List<_GrowthPoint> points;
  final bool useKg;
  final AppLocalizations l;

  const _WeighInHistory({
    required this.points,
    required this.useKg,
    required this.l,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                l.graphsRecentWeighIns,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
            for (final p in points)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    SizedBox(
                      width: 78,
                      child: Text(
                        '${p.date.month}/${p.date.day}',
                        style: const TextStyle(
                          fontSize: 12.5,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        formatWeight(p.kg!, useKg: useKg),
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    if (p.condition != null)
                      Text(
                        weighConditionLabel(p.condition!, l),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                  ],
                ),
              ),
            const SizedBox(height: 4),
          ],
        ),
      ),
    );
  }
}

// ─── Tab: Health ───────────────────────────────────────────────────────────

class _HealthTab extends StatelessWidget {
  final List<_DayStat> stats;
  final dynamic settings;
  final AppLocalizations l;
  final BabyProfile? profile;
  const _HealthTab({
    required this.stats,
    required this.settings,
    required this.l,
    required this.profile,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).extension<AppColors>()!;
    final tempPoints = stats.where((s) => s.tempC != null).toList();
    final useCelsius = settings.useCelsius as bool? ?? true;

    final skinCard = profile == null
        ? null
        : _SkinConditionsCard(profile: profile!);

    if (tempPoints.isEmpty) {
      final empty = _EmptyState(
        icon: AppIcons.temperature,
        message: l.graphsNoTempData,
      );
      if (skinCard == null) return empty;
      return ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
        children: [skinCard, const SizedBox(height: 48), empty],
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
    final severityLabel = switch (severity) {
      'fever' => l.tempFever,
      'elevated' => l.tempElevated,
      'low' => l.tempLow,
      _ => l.tempNormal,
    };

    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
      children: [
        ?skinCard,
        if (skinCard != null) const SizedBox(height: 12),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                AppIcon(AppIcons.temperature, color: severityColor, size: 36),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l.tempLatest,
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    Text(
                      formatTemp(latest, useCelsius: useCelsius),
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      severityLabel,
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
        _FeverZoneCard(tempPoints: tempPoints, l: l),
        const SizedBox(height: 12),
        _LineChartCard<_DayStat>(
          title: l.graphsTempOverTime,
          points: tempPoints,
          color: colors.temperatureStrong,
          dateOf: (s) => s.date,
          getValue: (s) =>
              useCelsius ? s.tempC! : celsiusToFahrenheit(s.tempC!),
          minLabel: (v) => l.graphsMinLabel(
            useCelsius
                ? '${v.toStringAsFixed(1)}°C'
                : '${v.toStringAsFixed(1)}°F',
          ),
          maxLabel: (v) => l.graphsMaxLabel(
            useCelsius
                ? '${v.toStringAsFixed(1)}°C'
                : '${v.toStringAsFixed(1)}°F',
          ),
          thresholdValue: useCelsius ? 38.5 : celsiusToFahrenheit(38.5),
          thresholdLabel: l.tempFeverThreshold,
        ),
      ],
    );
  }
}

class _FeverZoneCard extends StatelessWidget {
  final List<_DayStat> tempPoints;
  final AppLocalizations l;
  const _FeverZoneCard({required this.tempPoints, required this.l});

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
            Text(l.tempSummary, style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 10),
            _FeverRow(
              label: l.tempNormal,
              count: normalDays,
              color: Colors.green,
              l: l,
            ),
            _FeverRow(
              label: l.tempElevated,
              count: elevatedDays,
              color: Colors.orange,
              l: l,
            ),
            _FeverRow(
              label: l.tempFever,
              count: feverDays,
              color: Colors.red,
              l: l,
            ),
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
  final AppLocalizations l;
  const _FeverRow({
    required this.label,
    required this.count,
    required this.color,
    required this.l,
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
            l.tempDays(count),
            style: const TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

// ─── Shared widgets ────────────────────────────────────────────────────────

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
                        AppIcon(item.icon, color: item.color, size: 22),
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
  final String icon;
  final Color color;
  const _SummaryItem({
    required this.label,
    required this.value,
    required this.icon,
    required this.color,
  });
}

class _BarChartCard extends StatelessWidget {
  final String title;
  final List<_DayStat> stats;
  final Color color;
  final double Function(_DayStat) getValue;
  final String Function(double) formatLabel;
  final String Function(double) maxLabel;

  const _BarChartCard({
    required this.title,
    required this.stats,
    required this.color,
    required this.getValue,
    required this.formatLabel,
    required this.maxLabel,
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
                  maxLabel(maxVal),
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _LineChartCard<T> extends StatelessWidget {
  final String title;
  final List<T> points;
  final Color color;
  final double Function(T) getValue;
  final DateTime Function(T) dateOf;
  final String Function(double) minLabel;
  final String Function(double) maxLabel;
  final double? thresholdValue;
  final String? thresholdLabel;

  const _LineChartCard({
    required this.title,
    required this.points,
    required this.color,
    required this.getValue,
    required this.dateOf,
    required this.minLabel,
    required this.maxLabel,
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
                  labels: points.map((s) {
                    final d = dateOf(s);
                    return '${d.month}/${d.day}';
                  }).toList(),
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
                  minLabel(values.reduce((a, b) => a < b ? a : b)),
                  style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
                ),
                Text(
                  maxLabel(values.reduce((a, b) => a > b ? a : b)),
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
    child: Text('—', style: TextStyle(color: Colors.grey)),
  ),
);

class _EmptyState extends StatelessWidget {
  final String icon;
  final String message;
  const _EmptyState({required this.icon, required this.message});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppIcon(icon, size: 56, color: Colors.grey.shade400),
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

// ─── CustomPainters (unchanged) ────────────────────────────────────────────

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
    final fillPath = Path()..moveTo(0, chartH);
    for (int i = 0; i < values.length; i++) {
      final o = toOffset(i);
      fillPath.lineTo(o.dx, o.dy);
    }
    fillPath
      ..lineTo(slotW * (values.length - 1), chartH)
      ..close();
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
      canvas.drawLine(
        Offset(0, ty),
        Offset(size.width, ty),
        Paint()
          ..color = Colors.red.withAlpha(160)
          ..strokeWidth = 1.5
          ..style = PaintingStyle.stroke,
      );
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

// ─── Data model ────────────────────────────────────────────────────────────

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

/// Health tab entry point for skin-condition tracking: lists active
/// conditions (flagging any without today's update) and opens the tracker.
class _SkinConditionsCard extends StatefulWidget {
  final BabyProfile profile;
  const _SkinConditionsCard({required this.profile});

  @override
  State<_SkinConditionsCard> createState() => _SkinConditionsCardState();
}

class _SkinConditionsCardState extends State<_SkinConditionsCard> {
  List<SkinCondition> _active = [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  @override
  void didUpdateWidget(covariant _SkinConditionsCard old) {
    super.didUpdateWidget(old);
    if (old.profile.id != widget.profile.id) _load();
  }

  Future<void> _load() async {
    final all = await Storage.loadSkinConditions(widget.profile.id);
    if (mounted) {
      setState(() => _active = all.where((c) => c.isActive).toList());
    }
  }

  Future<void> _open() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SkinConditionsPage(profile: widget.profile),
      ),
    );
    _load();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final colors = theme.extension<AppColors>()!;
    final due = _active.where((c) => !c.updatedToday).length;
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: _open,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CategoryIconBadge(
                icon: AppIcons.rash,
                color: colors.temperatureStrong,
                softColor: colors.temperatureSoft,
                size: 42,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(l.skinTitle, style: theme.textTheme.titleSmall),
                    Text(
                      _active.isEmpty
                          ? l.skinCardNone
                          : [
                              _active.map((c) => c.name).join(', '),
                              if (due > 0) l.skinCardDue(due),
                            ].join('  •  '),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: due > 0
                            ? theme.colorScheme.error
                            : theme.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              const AppIcon(
                AppIcons.chevronRight,
                style: AppIconStyle.line,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
