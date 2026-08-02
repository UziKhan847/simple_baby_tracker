import 'package:flutter/material.dart';

class ThemeProvider extends InheritedWidget {
  const ThemeProvider({
    super.key,
    required this.themeMode,
    required this.toggleTheme,
    required this.isDarkResolved,
    required this.oledEnabled,
    required this.toggleOled,
    required super.child,
  });

  final ThemeMode themeMode;
  final VoidCallback toggleTheme;

  /// Pre-resolved dark/light bool from [_MyAppState], which accounts for
  /// [ThemeMode.system] by reading the platform brightness. Use this instead
  /// of checking [themeMode] directly — the toggle will always match what
  /// the user actually sees on screen.
  final bool isDarkResolved;

  /// Whether true-black (OLED) styling should be used while in dark mode.
  final bool oledEnabled;
  final VoidCallback toggleOled;

  bool get isDark => isDarkResolved;

  static ThemeProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeProvider>()!;

  @override
  bool updateShouldNotify(ThemeProvider old) =>
      old.themeMode != themeMode ||
      old.isDarkResolved != isDarkResolved ||
      old.oledEnabled != oledEnabled;
}
