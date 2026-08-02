import 'package:flutter/material.dart';

/// Builds the app [TextTheme]: 'Quicksand' for headings/titles/big numbers
/// (matches the mockup's soft, rounded display type), 'Inter' for
/// everything else (body copy, labels, buttons).
TextTheme buildAppTextTheme(ColorScheme scheme) {
  final base = ThemeData(colorScheme: scheme, useMaterial3: true).textTheme;

  TextStyle quicksand(TextStyle? style, {FontWeight weight = FontWeight.w600}) =>
      (style ?? const TextStyle()).copyWith(
        fontFamily: 'Quicksand',
        fontWeight: weight,
      );

  TextStyle inter(TextStyle? style, {FontWeight weight = FontWeight.w400}) =>
      (style ?? const TextStyle()).copyWith(
        fontFamily: 'Inter',
        fontWeight: weight,
      );

  return base.copyWith(
    displayLarge: quicksand(base.displayLarge, weight: FontWeight.w700),
    displayMedium: quicksand(base.displayMedium, weight: FontWeight.w700),
    displaySmall: quicksand(base.displaySmall, weight: FontWeight.w700),
    headlineLarge: quicksand(base.headlineLarge, weight: FontWeight.w700),
    headlineMedium: quicksand(base.headlineMedium, weight: FontWeight.w700),
    headlineSmall: quicksand(base.headlineSmall, weight: FontWeight.w600),
    titleLarge: quicksand(base.titleLarge, weight: FontWeight.w600),
    titleMedium: quicksand(base.titleMedium, weight: FontWeight.w600),
    titleSmall: quicksand(base.titleSmall, weight: FontWeight.w600),
    bodyLarge: inter(base.bodyLarge),
    bodyMedium: inter(base.bodyMedium),
    bodySmall: inter(base.bodySmall),
    labelLarge: inter(base.labelLarge, weight: FontWeight.w600),
    labelMedium: inter(base.labelMedium, weight: FontWeight.w600),
    labelSmall: inter(base.labelSmall, weight: FontWeight.w500),
  );
}
