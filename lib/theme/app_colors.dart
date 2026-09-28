import 'package:flutter/material.dart';

/// Per-category tint colors (strong + soft variants) plus the accent tokens
/// the stock [ColorScheme] has no slot for (the solid accent used for
/// avatars/FAB fills, the CTA gradient, and the "today" card gradient).
///
/// Every value below is the sRGB conversion of an OKLCH color read straight
/// out of the design mockup — hue is shared across light/dark/OLED so the
/// three modes stay one family.
///
/// Registered on [ThemeData.extensions]; reach it with
/// `Theme.of(context).extension<AppColors>()!`.
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.feedingStrong,
    required this.feedingSoft,
    required this.diaperStrong,
    required this.diaperSoft,
    required this.sleepStrong,
    required this.sleepSoft,
    required this.weightStrong,
    required this.weightSoft,
    required this.temperatureStrong,
    required this.temperatureSoft,
    required this.growthStrong,
    required this.growthSoft,
    required this.medicationStrong,
    required this.medicationSoft,
    required this.miscStrong,
    required this.miscSoft,
    required this.noteStrong,
    required this.noteSoft,
    required this.neutralStrong,
    required this.neutralSoft,
    required this.accentSolid,
    required this.accentGradientStart,
    required this.accentGradientEnd,
    required this.todayGradientStart,
    required this.todayGradientEnd,
    required this.innerDivider,
  });

  final Color feedingStrong;
  final Color feedingSoft;
  final Color diaperStrong;
  final Color diaperSoft;
  final Color sleepStrong;
  final Color sleepSoft;
  final Color weightStrong;
  final Color weightSoft;
  final Color temperatureStrong;
  final Color temperatureSoft;
  final Color growthStrong;
  final Color growthSoft;
  final Color medicationStrong;
  final Color medicationSoft;
  final Color miscStrong;
  final Color miscSoft;
  final Color noteStrong;
  final Color noteSoft;
  final Color neutralStrong;
  final Color neutralSoft;

  /// Filled accent (avatar circles, solid pill buttons) — lighter than
  /// [ColorScheme.primary], which the mockup reserves for accent *text*.
  final Color accentSolid;

  /// 135° gradient used by the save CTA and both FABs.
  final Color accentGradientStart;
  final Color accentGradientEnd;

  /// 135° gradient behind the home screen's "Today" card.
  final Color todayGradientStart;
  final Color todayGradientEnd;

  /// Hairline rule *inside* a grouped card (fainter than the theme divider,
  /// which separates cards from the page).
  final Color innerDivider;

  /// Convenience gradient for the CTA/FAB.
  LinearGradient get accentGradient => LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [accentGradientStart, accentGradientEnd],
  );

  LinearGradient get todayGradient => LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [todayGradientStart, todayGradientEnd],
  );

  /// Category tints in mockup order — used to give day tiles a rotating
  /// badge color the way the mockup shows (pink / blue / green / …).
  List<(Color, Color)> get cycle => [
    (feedingStrong, feedingSoft),
    (weightStrong, weightSoft),
    (growthStrong, growthSoft),
    (temperatureStrong, temperatureSoft),
    (sleepStrong, sleepSoft),
    (miscStrong, miscSoft),
    (diaperStrong, diaperSoft),
  ];

  factory AppColors.light() => const AppColors(
    feedingStrong: Color(0xFFAB6595),
    feedingSoft: Color(0xFFFACFEB),
    diaperStrong: Color(0xFF9A614D),
    diaperSoft: Color(0xFFFDD4C6),
    sleepStrong: Color(0xFF8C69A7),
    sleepSoft: Color(0xFFEAD4FC),
    weightStrong: Color(0xFF296B88),
    weightSoft: Color(0xFFC1E4F7),
    temperatureStrong: Color(0xFFB07932),
    temperatureSoft: Color(0xFFF4E4B8),
    growthStrong: Color(0xFF1A6444),
    growthSoft: Color(0xFFC2E9D3),
    medicationStrong: Color(0xFF8C69A7),
    medicationSoft: Color(0xFFEAD4FC),
    miscStrong: Color(0xFF298084),
    miscSoft: Color(0xFFB2E2E4),
    noteStrong: Color(0xFFAC713E),
    noteSoft: Color(0xFFFBDAC1),
    neutralStrong: Color(0xFF988A9B),
    neutralSoft: Color(0xFFF0E8F2),
    accentSolid: Color(0xFFDD92C4),
    accentGradientStart: Color(0xFFE79BCE),
    accentGradientEnd: Color(0xFFB7A0E4),
    todayGradientStart: Color(0xFFFFD6F1),
    todayGradientEnd: Color(0xFFC4ECFF),
    innerDivider: Color(0xFFF0E8F2),
  );

  factory AppColors.dark() => const AppColors(
    feedingStrong: Color(0xFFE6A7D0),
    feedingSoft: Color(0xFF391F31),
    diaperStrong: Color(0xFFF1AA92),
    diaperSoft: Color(0xFF3E2015),
    sleepStrong: Color(0xFFD0AEEA),
    sleepSoft: Color(0xFF30223B),
    weightStrong: Color(0xFF7EC9ED),
    weightSoft: Color(0xFF072D3D),
    temperatureStrong: Color(0xFFDCB87A),
    temperatureSoft: Color(0xFF362607),
    growthStrong: Color(0xFF89D0AA),
    growthSoft: Color(0xFF0E3020),
    medicationStrong: Color(0xFFD0AEEA),
    medicationSoft: Color(0xFF30223B),
    miscStrong: Color(0xFF71D0D5),
    miscSoft: Color(0xFF003033),
    noteStrong: Color(0xFFE9B082),
    noteSoft: Color(0xFF3B220D),
    neutralStrong: Color(0xFFC4BAC6),
    neutralSoft: Color(0xFF2C272E),
    accentSolid: Color(0xFFD389BA),
    accentGradientStart: Color(0xFFD389BA),
    accentGradientEnd: Color(0xFFA28ACD),
    // Brighter/more saturated than the dark neutrals around them — the
    // "today" card is meant to pop as the mockup's hero row, and the
    // previous values (close to the page background) read as dull.
    todayGradientStart: Color(0xFF7A3A68),
    todayGradientEnd: Color(0xFF1E5670),
    innerDivider: Color(0xFF2D262F),
  );

  /// True-black variant. The `soft` tints must stay *dark* — reusing the
  /// light-mode pastels here would paint bright rectangles on an otherwise
  /// pure-black screen, undermining the point of OLED mode. `strong` values
  /// are shared with [dark]; they already read well against black.
  factory AppColors.oled() => AppColors.dark().copyWith(
    feedingSoft: const Color(0xFF230D1C),
    diaperSoft: const Color(0xFF270E06),
    sleepSoft: const Color(0xFF1C1025),
    weightSoft: const Color(0xFF001926),
    temperatureSoft: const Color(0xFF211300),
    growthSoft: const Color(0xFF001C0F),
    medicationSoft: const Color(0xFF1C1025),
    miscSoft: const Color(0xFF001C1E),
    noteSoft: const Color(0xFF241001),
    neutralSoft: const Color(0xFF191419),
    todayGradientStart: const Color(0xFF5A2049),
    todayGradientEnd: const Color(0xFF0C3A4E),
    innerDivider: const Color(0xFF1C171E),
  );

  @override
  AppColors copyWith({
    Color? feedingStrong,
    Color? feedingSoft,
    Color? diaperStrong,
    Color? diaperSoft,
    Color? sleepStrong,
    Color? sleepSoft,
    Color? weightStrong,
    Color? weightSoft,
    Color? temperatureStrong,
    Color? temperatureSoft,
    Color? growthStrong,
    Color? growthSoft,
    Color? medicationStrong,
    Color? medicationSoft,
    Color? miscStrong,
    Color? miscSoft,
    Color? noteStrong,
    Color? noteSoft,
    Color? neutralStrong,
    Color? neutralSoft,
    Color? accentSolid,
    Color? accentGradientStart,
    Color? accentGradientEnd,
    Color? todayGradientStart,
    Color? todayGradientEnd,
    Color? innerDivider,
  }) => AppColors(
    feedingStrong: feedingStrong ?? this.feedingStrong,
    feedingSoft: feedingSoft ?? this.feedingSoft,
    diaperStrong: diaperStrong ?? this.diaperStrong,
    diaperSoft: diaperSoft ?? this.diaperSoft,
    sleepStrong: sleepStrong ?? this.sleepStrong,
    sleepSoft: sleepSoft ?? this.sleepSoft,
    weightStrong: weightStrong ?? this.weightStrong,
    weightSoft: weightSoft ?? this.weightSoft,
    temperatureStrong: temperatureStrong ?? this.temperatureStrong,
    temperatureSoft: temperatureSoft ?? this.temperatureSoft,
    growthStrong: growthStrong ?? this.growthStrong,
    growthSoft: growthSoft ?? this.growthSoft,
    medicationStrong: medicationStrong ?? this.medicationStrong,
    medicationSoft: medicationSoft ?? this.medicationSoft,
    miscStrong: miscStrong ?? this.miscStrong,
    miscSoft: miscSoft ?? this.miscSoft,
    noteStrong: noteStrong ?? this.noteStrong,
    noteSoft: noteSoft ?? this.noteSoft,
    neutralStrong: neutralStrong ?? this.neutralStrong,
    neutralSoft: neutralSoft ?? this.neutralSoft,
    accentSolid: accentSolid ?? this.accentSolid,
    accentGradientStart: accentGradientStart ?? this.accentGradientStart,
    accentGradientEnd: accentGradientEnd ?? this.accentGradientEnd,
    todayGradientStart: todayGradientStart ?? this.todayGradientStart,
    todayGradientEnd: todayGradientEnd ?? this.todayGradientEnd,
    innerDivider: innerDivider ?? this.innerDivider,
  );

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    Color l(Color a, Color b) => Color.lerp(a, b, t)!;
    return AppColors(
      feedingStrong: l(feedingStrong, other.feedingStrong),
      feedingSoft: l(feedingSoft, other.feedingSoft),
      diaperStrong: l(diaperStrong, other.diaperStrong),
      diaperSoft: l(diaperSoft, other.diaperSoft),
      sleepStrong: l(sleepStrong, other.sleepStrong),
      sleepSoft: l(sleepSoft, other.sleepSoft),
      weightStrong: l(weightStrong, other.weightStrong),
      weightSoft: l(weightSoft, other.weightSoft),
      temperatureStrong: l(temperatureStrong, other.temperatureStrong),
      temperatureSoft: l(temperatureSoft, other.temperatureSoft),
      growthStrong: l(growthStrong, other.growthStrong),
      growthSoft: l(growthSoft, other.growthSoft),
      medicationStrong: l(medicationStrong, other.medicationStrong),
      medicationSoft: l(medicationSoft, other.medicationSoft),
      miscStrong: l(miscStrong, other.miscStrong),
      miscSoft: l(miscSoft, other.miscSoft),
      noteStrong: l(noteStrong, other.noteStrong),
      noteSoft: l(noteSoft, other.noteSoft),
      neutralStrong: l(neutralStrong, other.neutralStrong),
      neutralSoft: l(neutralSoft, other.neutralSoft),
      accentSolid: l(accentSolid, other.accentSolid),
      accentGradientStart: l(accentGradientStart, other.accentGradientStart),
      accentGradientEnd: l(accentGradientEnd, other.accentGradientEnd),
      todayGradientStart: l(todayGradientStart, other.todayGradientStart),
      todayGradientEnd: l(todayGradientEnd, other.todayGradientEnd),
      innerDivider: l(innerDivider, other.innerDivider),
    );
  }
}
