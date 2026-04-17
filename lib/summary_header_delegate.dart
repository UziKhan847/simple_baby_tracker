import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/stat.dart';

class SummaryHeaderDelegate extends SliverPersistentHeaderDelegate {
  final int poos;
  final int pees;
  final int milk;
  final int breastMinutes;
  final int sleepMinutes;

  const SummaryHeaderDelegate({
    required this.poos,
    required this.pees,
    required this.milk,
    required this.breastMinutes,
    required this.sleepMinutes,
  });

  @override
  double get minExtent => 100;

  @override
  double get maxExtent => 100;

  String _sleepLabel() {
    if (sleepMinutes == 0) return '0';
    final h = sleepMinutes ~/ 60;
    final m = sleepMinutes % 60;
    if (h == 0) return '${m}m';
    if (m == 0) return '${h}h';
    return '${h}h${m}m';
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final theme = Theme.of(context);

    return Container(
      color: theme.scaffoldBackgroundColor,
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 4),
      child: Material(
        elevation: overlapsContent ? 6 : 2,
        borderRadius: BorderRadius.circular(16),
        color: theme.colorScheme.surfaceContainerHighest,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stat(
                color: Colors.brown,
                icon: Icons.baby_changing_station,
                label: 'Poos',
                value: poos,
              ),
              Stat(
                color: Colors.blue,
                icon: Icons.water_drop,
                label: 'Pees',
                value: pees,
              ),
              Stat(
                color: Colors.pink,
                icon: Icons.local_drink,
                label: 'Milk ml',
                value: milk,
              ),
              Stat(
                color: Colors.deepPurple,
                icon: Icons.child_care,
                label: 'Breast m',
                value: breastMinutes,
              ),
              StatLabel(
                color: Colors.indigo,
                icon: Icons.bedtime,
                label: 'Sleep',
                text: _sleepLabel(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SummaryHeaderDelegate old) =>
      old.poos != poos ||
      old.pees != pees ||
      old.milk != milk ||
      old.breastMinutes != breastMinutes ||
      old.sleepMinutes != sleepMinutes;
}
