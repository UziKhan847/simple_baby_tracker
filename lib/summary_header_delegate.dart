import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/stat.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';

class SummaryHeaderDelegate extends SliverPersistentHeaderDelegate {
  final int poos;
  final int pees;
  final int milk;
  final bool useMl;
  final int breastMinutes;
  final int sleepMinutes;

  const SummaryHeaderDelegate({
    required this.poos,
    required this.pees,
    required this.milk,
    required this.useMl,
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
    final l = AppLocalizations.of(context)!;
    final colors = theme.extension<AppColors>()!;

    return Container(
      color: theme.scaffoldBackgroundColor,
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 4),
      child: Material(
        elevation: 0,
        borderRadius: BorderRadius.circular(20),
        color: theme.cardTheme.color ?? theme.colorScheme.surface,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stat(
                color: colors.diaperStrong,
                icon: AppIcons.poo,
                label: l.summaryPoosLabel,
                value: poos,
              ),
              Stat(
                color: colors.diaperStrong,
                icon: AppIcons.pee,
                label: l.summaryPeesLabel,
                value: pees,
              ),
              StatLabel(
                color: colors.feedingStrong,
                icon: AppIcons.bottle,
                label: useMl ? l.summaryMilkLabelMl : l.summaryMilkLabelOz,
                text: useMl
                    ? '$milk'
                    : mlToOz(milk.toDouble()).toStringAsFixed(1),
              ),
              Stat(
                color: colors.miscStrong,
                icon: AppIcons.breastfeeding,
                label: l.summaryBreastLabel,
                value: breastMinutes,
              ),
              StatLabel(
                color: colors.sleepStrong,
                icon: AppIcons.sleep,
                label: l.summarySleepLabel,
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
      old.useMl != useMl ||
      old.breastMinutes != breastMinutes ||
      old.sleepMinutes != sleepMinutes;
}
