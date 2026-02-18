import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/day_stat.dart';

class SummaryHeaderDelegate extends SliverPersistentHeaderDelegate {
  final int poos;
  final int pees;
  final int milk;
  final int breastMinutes;

  SummaryHeaderDelegate({
    required this.poos,
    required this.pees,
    required this.milk,
    required this.breastMinutes,
  });

  @override
  double get minExtent => 110;

  @override
  double get maxExtent => 110;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final theme = Theme.of(context);

    return Container(
      color: theme.scaffoldBackgroundColor,
      padding: const EdgeInsets.fromLTRB(12, 12, 12, 4),
      child: Material(
        elevation: overlapsContent ? 6 : 2,
        borderRadius: BorderRadius.circular(20),
        color: theme.colorScheme.surface,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
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
                label: 'Milk (ml)',
                value: milk,
              ),
              Stat(
                color: Colors.deepPurple,
                icon: Icons.timer,
                label: 'Breast (min)',
                value: breastMinutes,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(covariant SummaryHeaderDelegate oldDelegate) =>
      oldDelegate.poos != poos ||
      oldDelegate.pees != pees ||
      oldDelegate.milk != milk ||
      oldDelegate.breastMinutes != breastMinutes;
}
