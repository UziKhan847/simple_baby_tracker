import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/app_settings.dart';
import 'package:simple_baby_tracker/app_shell.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/providers/theme.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:uuid/uuid.dart';

void main() => runApp(const MyApp());

final uuid = Uuid();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;
  AppSettings _settings = const AppSettings();

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final s = await Storage.loadSettings();
    if (mounted) setState(() => _settings = s);
  }

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.dark
          ? ThemeMode.light
          : ThemeMode.dark;
    });
  }

  void _updateSettings(AppSettings s) async {
    await Storage.saveSettings(s);
    setState(() => _settings = s);
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      themeMode: _themeMode,
      toggleTheme: _toggleTheme,
      child: SettingsProvider(
        settings: _settings,
        updateSettings: _updateSettings,
        child: MaterialApp(
          title: 'Baby Tracker',
          debugShowCheckedModeBanner: false,
          themeMode: _themeMode,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.pink,
              brightness: Brightness.light,
            ),
            useMaterial3: true,
          ),
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.pink,
              brightness: Brightness.dark,
            ),
            useMaterial3: true,
          ),
          home: const AppShell(),
        ),
      ),
    );
  }
}
