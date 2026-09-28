import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:simple_baby_tracker/app_settings.dart';
import 'package:simple_baby_tracker/app_shell.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/providers/locale.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/providers/theme.dart';
import 'package:simple_baby_tracker/services/notification.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/theme/app_theme.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:uuid/uuid.dart';

final uuid = Uuid();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // The timezone database backs every `zonedSchedule` call in
  // NotificationService — without it, `tz.local` throws a
  // LateInitializationError the first time a reminder is scheduled, which
  // was previously being swallowed by a catch block, silently disabling
  // every reminder. `initializeTimeZones()` seeds the IANA database; the
  // platform's local timezone is picked up automatically as the engine's
  // default local location.
  tz.initializeTimeZones();
  await NotificationService.instance.init();
  // Re-arm any reminders the user had enabled, based on the most recent
  // logged event — previously reminders only (re)scheduled when the
  // Settings toggle itself was touched, so they went dark on every app
  // restart until the user revisited Settings.
  unawaited(NotificationService.instance.rescheduleFromLatestEvents());
  runApp(const MyApp());
}

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
    setState(() {
      _settings = s;
      _themeMode = _themeModeFromOverride(s.themeModeOverride);
    });
    // Applied here, once, right after the real persisted value has loaded —
    // not from build()'s first pass, which runs synchronously against the
    // *default* AppSettings() (immersiveMode: false) before this Future
    // resolves. Doing it there consumed a "have we applied it yet" flag
    // with the wrong value, so the real setting from disk never took effect
    // on startup even though it displayed correctly as enabled in Settings.
    _applyImmersiveMode(s.immersiveMode);
  }

  ThemeMode? _themeModeFromOverride(String override) {
    switch (override) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      default:
        return null; // follow system
    }
  }

  void _toggleTheme() {
    final currentlyDark = _resolvedIsDark(context);
    final next = currentlyDark ? ThemeMode.light : ThemeMode.dark;
    setState(() => _themeMode = next);
    _updateSettings(
      _settings.copyWith(
        themeModeOverride: next == ThemeMode.dark ? 'dark' : 'light',
      ),
    );
  }

  void _toggleOled() {
    _updateSettings(_settings.copyWith(oledDarkMode: !_settings.oledDarkMode));
  }

  void _applyImmersiveMode(bool immersive) {
    SystemChrome.setEnabledSystemUIMode(
      immersive ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
    );
  }

  bool _resolvedIsDark(BuildContext context) {
    if (_themeMode == ThemeMode.dark) return true;
    if (_themeMode == ThemeMode.light) return false;
    return MediaQuery.platformBrightnessOf(context) == Brightness.dark;
  }

  Future<void> _updateSettings(AppSettings s) async {
    await Storage.saveSettings(s);
    if (!mounted) return;
    setState(() => _settings = s);
  }

  void _setLocale(Locale locale) {
    _updateSettings(_settings.copyWith(languageCode: locale.languageCode));
  }

  Locale get _locale => Locale(_settings.languageCode);

  void _syncSystemUi(bool isDark) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
        statusBarBrightness: isDark ? Brightness.dark : Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: isDark
            ? Brightness.light
            : Brightness.dark,
        systemNavigationBarContrastEnforced: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDark = _resolvedIsDark(context);
    final effectiveTheme = isDark
        ? (_settings.oledDarkMode ? AppTheme.oled() : AppTheme.dark())
        : AppTheme.light();

    _syncSystemUi(isDark);

    return MaterialApp(
      title: 'Baby Tracker',
      debugShowCheckedModeBanner: false,
      // Brightness is already fully resolved above (including
      // ThemeMode.system → platform brightness), so pin a single `theme:`
      // and lock themeMode to light — this avoids MaterialApp re-resolving
      // brightness a second time and picking the wrong one of theme/darkTheme.
      theme: effectiveTheme,
      themeMode: ThemeMode.light,
      locale: _locale,
      supportedLocales: supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // ── KEY FIX ────────────────────────────────────────────────────────────
      // Providers are placed here via `builder`, which wraps every route
      // including those created by Navigator.push. This makes ThemeProvider,
      // SettingsProvider, and LocaleProvider available in ALL pages.
      // Previously they were outside MaterialApp, so pushed routes couldn't
      // find them — causing the null-assertion crash on DayPage.
      builder: (context, child) => ThemeProvider(
        themeMode: _themeMode ?? ThemeMode.system,
        toggleTheme: _toggleTheme,
        isDarkResolved: isDark,
        oledEnabled: _settings.oledDarkMode,
        toggleOled: _toggleOled,
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
