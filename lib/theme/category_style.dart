import 'package:flutter/painting.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';

/// Icon + strong/soft color pair for a given tracker entry [type].
///
/// Single source of truth for the entry-type → color/icon mapping, used by
/// the day list, the add-entry sheet, the day summary header, and the
/// graphs summary tiles — previously this mapping was hand-duplicated
/// (and had drifted) across those three call sites.
class CategoryStyle {
  const CategoryStyle(this.icon, this.strong, this.soft);

  /// An [AppIcons] name, rendered with [AppIcon].
  final String icon;
  final Color strong;
  final Color soft;
}

CategoryStyle categoryStyleFor(String eventType, AppColors c) {
  switch (eventType) {
    case 'diaper':
      return CategoryStyle(AppIcons.diaper, c.diaperStrong, c.diaperSoft);
    case 'feeding':
      return CategoryStyle(AppIcons.bottle, c.feedingStrong, c.feedingSoft);
    case 'breastfeeding':
      return CategoryStyle(
        AppIcons.breastfeeding,
        c.feedingStrong,
        c.feedingSoft,
      );
    case 'pumping':
      return CategoryStyle(AppIcons.pumping, c.miscStrong, c.miscSoft);
    case 'sleep':
      return CategoryStyle(AppIcons.sleep, c.sleepStrong, c.sleepSoft);
    case 'temperature':
      return CategoryStyle(
        AppIcons.temperature,
        c.temperatureStrong,
        c.temperatureSoft,
      );
    case 'weight':
      return CategoryStyle(AppIcons.weight, c.weightStrong, c.weightSoft);
    case 'tummy_time':
      return CategoryStyle(AppIcons.tummyTime, c.growthStrong, c.growthSoft);
    case 'medication':
      return CategoryStyle(
        AppIcons.medication,
        c.medicationStrong,
        c.medicationSoft,
      );
    case 'doctor_visit':
      return CategoryStyle(AppIcons.doctorVisit, c.miscStrong, c.miscSoft);
    case 'note':
      return CategoryStyle(AppIcons.note, c.noteStrong, c.noteSoft);
    case 'bath':
      return CategoryStyle(AppIcons.bath, c.miscStrong, c.miscSoft);
    case 'solids':
      return CategoryStyle(AppIcons.solidFood, c.growthStrong, c.growthSoft);
    case 'skin':
      return CategoryStyle(
        AppIcons.rash,
        c.temperatureStrong,
        c.temperatureSoft,
      );
    default:
      return CategoryStyle(AppIcons.other, c.neutralStrong, c.neutralSoft);
  }
}

/// A named colour pair from [AppColors] — used by [AppIcons.milestoneColor],
/// which refers to pairs by name ('feeding', 'sleep', …).
(Color, Color) colorPairNamed(String name, AppColors c) => switch (name) {
  'feeding' => (c.feedingStrong, c.feedingSoft),
  'diaper' => (c.diaperStrong, c.diaperSoft),
  'sleep' => (c.sleepStrong, c.sleepSoft),
  'weight' => (c.weightStrong, c.weightSoft),
  'temperature' => (c.temperatureStrong, c.temperatureSoft),
  'growth' => (c.growthStrong, c.growthSoft),
  'medication' => (c.medicationStrong, c.medicationSoft),
  'misc' => (c.miscStrong, c.miscSoft),
  'note' => (c.noteStrong, c.noteSoft),
  _ => (c.neutralStrong, c.neutralSoft),
};
