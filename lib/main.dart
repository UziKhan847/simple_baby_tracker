import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:simple_baby_tracker/app_settings.dart';
import 'package:simple_baby_tracker/app_shell.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/providers/locale.dart';
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

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  ThemeMode? _themeMode;
  AppSettings _settings = const AppSettings();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _loadSettings();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    if (_themeMode == null) setState(() {});
  }

  Future<void> _loadSettings() async {
    final s = await Storage.loadSettings();
    if (!mounted) return;
    setState(() => _settings = s);
  }

  void _toggleTheme() {
    final currentlyDark = _resolvedIsDark(context);
    setState(() {
      _themeMode = currentlyDark ? ThemeMode.light : ThemeMode.dark;
    });
  }

  bool _resolvedIsDark(BuildContext context) {
    if (_themeMode == ThemeMode.dark) return true;
    if (_themeMode == ThemeMode.light) return false;
    return MediaQuery.platformBrightnessOf(context) == Brightness.dark;
  }

  void _updateSettings(AppSettings s) async {
    await Storage.saveSettings(s);
    setState(() => _settings = s);
  }

  void _setLocale(Locale locale) {
    _updateSettings(_settings.copyWith(languageCode: locale.languageCode));
  }

  Locale get _locale => Locale(_settings.languageCode);

  @override
  Widget build(BuildContext context) {
    final effectiveMode = _themeMode ?? ThemeMode.system;
    final isDark = _resolvedIsDark(context);

    return MaterialApp(
      title: 'Baby Tracker',
      debugShowCheckedModeBanner: false,
      themeMode: effectiveMode,
      locale: _locale,
      supportedLocales: supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
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
      // ── KEY FIX ────────────────────────────────────────────────────────────
      // Providers are placed here via `builder`, which wraps every route
      // including those created by Navigator.push. This makes ThemeProvider,
      // SettingsProvider, and LocaleProvider available in ALL pages.
      // Previously they were outside MaterialApp, so pushed routes couldn't
      // find them — causing the null-assertion crash on DayPage.
      builder: (context, child) => ThemeProvider(
        themeMode: effectiveMode,
        toggleTheme: _toggleTheme,
        isDarkResolved: isDark,
        child: SettingsProvider(
          settings: _settings,
          updateSettings: _updateSettings,
          child: LocaleProvider(
            locale: _locale,
            setLocale: _setLocale,
            child: child!,
          ),
        ),
      ),
      home: const AppShell(),
    );
  }
}
