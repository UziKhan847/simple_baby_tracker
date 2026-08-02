import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/app_typography.dart';

/// Builds the three [ThemeData] variants (light / dark / OLED) for the app.
///
/// Each starts from a seed-generated [ColorScheme] (so every Material field —
/// error colors, surface tints, outline variants, etc. — is present and sane)
/// and then overrides every token the mockup specifies. The overrides are not
/// optional decoration: `ColorScheme.fromSeed` produces noticeably greyer,
/// bluer neutrals than the mockup's warm pink-lavender ones.
class AppTheme {
  AppTheme._();

  static const _seed = Color(0xFFB4477F);

  static ThemeData light() => _build(
    scheme:
        ColorScheme.fromSeed(
          seedColor: _seed,
          brightness: Brightness.light,
        ).copyWith(
          surface: const Color(0xFFFBF1FE),
          surfaceContainerHighest: const Color(0xFFFFFAFF),
          surfaceContainerHigh: const Color(0xFFFFFAFF),
          onSurface: const Color(0xFF3A2E3C),
          onSurfaceVariant: const Color(0xFF867D88),
          outline: const Color(0xFFCFC4D1),
          outlineVariant: const Color(0xFFEBE1ED),
          primary: const Color(0xFF9B5686),
          onPrimary: Colors.white,
          primaryContainer: const Color(0xFFFACFEB),
          onPrimaryContainer: const Color(0xFF884B75),
          secondaryContainer: const Color(0xFFF0E8F2),
          onSecondaryContainer: const Color(0xFF3A2E3C),
          shadow: const Color(0xFF39253D),
        ),
    colors: AppColors.light(),
    cardColor: const Color(0xFFFFFAFF),
    scaffoldBackground: const Color(0xFFFBF1FE),
  );

  static ThemeData dark() => _build(
    scheme:
        ColorScheme.fromSeed(
          seedColor: _seed,
          brightness: Brightness.dark,
        ).copyWith(
          surface: const Color(0xFF100B11),
          surfaceContainerHighest: const Color(0xFF1B161D),
          surfaceContainerHigh: const Color(0xFF1B161D),
          onSurface: const Color(0xFFE8E2E9),
          onSurfaceVariant: const Color(0xFFA9A2AB),
          outline: const Color(0xFF524953),
          outlineVariant: const Color(0xFF383039),
          primary: const Color(0xFFEAA4D2),
          onPrimary: const Color(0xFF43203A),
          primaryContainer: const Color(0xFF4A233E),
          onPrimaryContainer: const Color(0xFFFACFEB),
          secondaryContainer: const Color(0xFF2C272E),
          onSecondaryContainer: const Color(0xFFE8E2E9),
          shadow: const Color(0xFF000000),
        ),
    colors: AppColors.dark(),
    cardColor: const Color(0xFF1B161D),
    scaffoldBackground: const Color(0xFF100B11),
  );

  /// True black: page background AND scaffold are pure `#000000`. Cards get a
  /// faint lift so they're still distinguishable from the page, without
  /// breaking the OLED "per-pixel off" promise for the bulk of the screen.
  static ThemeData oled() => _build(
    scheme:
        ColorScheme.fromSeed(
          seedColor: _seed,
          brightness: Brightness.dark,
        ).copyWith(
          surface: const Color(0xFF000000),
          surfaceContainerHighest: const Color(0xFF0F0C10),
          surfaceContainerHigh: const Color(0xFF0F0C10),
          onSurface: const Color(0xFFE8E2E9),
          onSurfaceVariant: const Color(0xFFA9A2AB),
          outline: const Color(0xFF3E373F),
          outlineVariant: const Color(0xFF241F25),
          primary: const Color(0xFFEAA4D2),
          onPrimary: const Color(0xFF43203A),
          primaryContainer: const Color(0xFF311228),
          onPrimaryContainer: const Color(0xFFFACFEB),
          secondaryContainer: const Color(0xFF191419),
          onSecondaryContainer: const Color(0xFFE8E2E9),
          shadow: const Color(0xFF000000),
        ),
    colors: AppColors.oled(),
    cardColor: const Color(0xFF0F0C10),
    scaffoldBackground: const Color(0xFF000000),
  );

  static ThemeData _build({
    required ColorScheme scheme,
    required AppColors colors,
    required Color cardColor,
    required Color scaffoldBackground,
  }) {
    final textTheme = buildAppTextTheme(scheme);

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      scaffoldBackgroundColor: scaffoldBackground,
      fontFamily: 'Inter',
      textTheme: textTheme,
      extensions: [colors],
      cardTheme: CardThemeData(
        elevation: 0,
        color: cardColor,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      // The mockup opens every screen with a large soft heading rather than a
      // conventional Material toolbar title, so the app bar is styled to
      // render one — flat, left-aligned, page-colored, 28px Quicksand.
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: scaffoldBackground,
        surfaceTintColor: Colors.transparent,
        foregroundColor: scheme.onSurface,
        centerTitle: false,
        toolbarHeight: 62,
        titleSpacing: 20,
        titleTextStyle: TextStyle(
          fontFamily: 'Quicksand',
          fontWeight: FontWeight.w700,
          fontSize: 28,
          height: 1.1,
          color: scheme.onSurface,
        ),
      ),
      tabBarTheme: TabBarThemeData(
        labelColor: scheme.primary,
        unselectedLabelColor: scheme.onSurfaceVariant,
        labelStyle: textTheme.labelLarge?.copyWith(
          fontSize: 15,
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelStyle: textTheme.labelLarge?.copyWith(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
        indicatorColor: scheme.primary,
        indicatorSize: TabBarIndicatorSize.label,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(color: scheme.primary, width: 2),
        ),
        dividerColor: scheme.outlineVariant,
        dividerHeight: 1,
        overlayColor: WidgetStatePropertyAll(
          scheme.primary.withValues(alpha: 0.06),
        ),
      ),
      navigationBarTheme: NavigationBarThemeData(
        elevation: 0,
        height: 64,
        backgroundColor: scaffoldBackground,
        surfaceTintColor: Colors.transparent,
        indicatorColor: scheme.primaryContainer,
        indicatorShape: const StadiumBorder(),
        labelTextStyle: WidgetStateProperty.resolveWith((states) {
          final selected = states.contains(WidgetState.selected);
          return textTheme.labelSmall?.copyWith(
            fontSize: 11,
            color: selected ? scheme.primary : scheme.onSurfaceVariant,
            fontWeight: FontWeight.w700,
          );
        }),
        iconTheme: WidgetStateProperty.resolveWith((states) {
          final selected = states.contains(WidgetState.selected);
          return IconThemeData(
            size: 21,
            color: selected ? scheme.primary : scheme.onSurfaceVariant,
          );
        }),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          textStyle: textTheme.labelLarge,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          textStyle: textTheme.labelLarge,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape: const StadiumBorder(),
          side: BorderSide(color: scheme.outlineVariant),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          textStyle: textTheme.labelLarge,
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          shape: const StadiumBorder(),
          textStyle: textTheme.labelLarge,
        ),
      ),
      // Choice chips in the mockup (diaper size, brand) are rounded *squares*
      // with a hairline outline — not the stadium pills used elsewhere.
      chipTheme: ChipThemeData(
        backgroundColor: cardColor,
        selectedColor: scheme.primaryContainer,
        labelStyle: textTheme.labelMedium!.copyWith(color: scheme.onSurface),
        secondaryLabelStyle: textTheme.labelMedium!.copyWith(
          color: scheme.onPrimaryContainer,
        ),
        showCheckmark: false,
        side: BorderSide(color: scheme.outlineVariant),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: cardColor,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        hintStyle: textTheme.bodyMedium?.copyWith(
          color: scheme.onSurfaceVariant,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: scheme.primary, width: 1.5),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: cardColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
        ),
      ),
      dialogTheme: DialogThemeData(
        backgroundColor: cardColor,
        surfaceTintColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      listTileTheme: ListTileThemeData(
        titleTextStyle: textTheme.bodyLarge?.copyWith(
          fontSize: 15.5,
          fontWeight: FontWeight.w600,
          color: scheme.onSurface,
        ),
        subtitleTextStyle: textTheme.bodySmall?.copyWith(
          fontSize: 13,
          color: scheme.onSurfaceVariant,
        ),
      ),
      dividerTheme: DividerThemeData(color: scheme.outlineVariant, space: 1),
      switchTheme: SwitchThemeData(
        trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
        thumbColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected)
              ? Colors.white
              : scheme.surfaceContainerHighest,
        ),
        trackColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected)
              ? colors.accentSolid
              : scheme.outlineVariant,
        ),
      ),
    );
  }
}
