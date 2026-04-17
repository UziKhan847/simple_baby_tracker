import 'package:flutter/material.dart';

/// InheritedWidget that propagates theme state. Any widget calling
/// [ThemeProvider.of] will rebuild when the theme changes.
class ThemeProvider extends InheritedWidget {
  const ThemeProvider({
    super.key,
    required this.themeMode,
    required this.toggleTheme,
    required super.child,
  });

  final ThemeMode themeMode;
  final VoidCallback toggleTheme;

  bool get isDark => themeMode == ThemeMode.dark;

  static ThemeProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<ThemeProvider>()!;

  @override
  bool updateShouldNotify(ThemeProvider old) => old.themeMode != themeMode;
}
