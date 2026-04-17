import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/app_settings.dart';

class SettingsProvider extends InheritedWidget {
  const SettingsProvider({
    super.key,
    required this.settings,
    required this.updateSettings,
    required super.child,
  });

  final AppSettings settings;
  final void Function(AppSettings) updateSettings;

  static SettingsProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<SettingsProvider>()!;

  @override
  bool updateShouldNotify(SettingsProvider old) => old.settings != settings;
}