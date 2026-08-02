import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';

/// Icon + strong/soft color pair for a given tracker entry [type].
///
/// Single source of truth for the entry-type → color/icon mapping, used by
/// the day list, the add-entry sheet, the day summary header, and the
/// graphs summary tiles — previously this mapping was hand-duplicated
/// (and had drifted) across those three call sites.
class CategoryStyle {
  const CategoryStyle(this.icon, this.strong, this.soft);

  final IconData icon;
  final Color strong;
  final Color soft;
}

CategoryStyle categoryStyleFor(String eventType, AppColors c) {
  switch (eventType) {
    case 'diaper':
      return CategoryStyle(Icons.baby_changing_station, c.diaperStrong, c.diaperSoft);
    case 'feeding':
      return CategoryStyle(Icons.local_drink, c.feedingStrong, c.feedingSoft);
    case 'pumping':
      return CategoryStyle(Icons.water_drop, c.miscStrong, c.miscSoft);
    case 'sleep':
      return CategoryStyle(Icons.bedtime, c.sleepStrong, c.sleepSoft);
    case 'temperature':
      return CategoryStyle(Icons.thermostat, c.temperatureStrong, c.temperatureSoft);
    case 'weight':
      return CategoryStyle(Icons.monitor_weight, c.weightStrong, c.weightSoft);
    case 'tummy_time':
      return CategoryStyle(Icons.child_care, c.growthStrong, c.growthSoft);
    case 'medication':
      return CategoryStyle(Icons.medication, c.medicationStrong, c.medicationSoft);
    case 'doctor_visit':
      return CategoryStyle(Icons.local_hospital_outlined, c.miscStrong, c.miscSoft);
    case 'note':
      return CategoryStyle(Icons.edit_note, c.noteStrong, c.noteSoft);
    case 'bath':
      return CategoryStyle(Icons.bathtub, c.miscStrong, c.miscSoft);
    default:
      return CategoryStyle(Icons.circle, c.neutralStrong, c.neutralSoft);
  }
}
