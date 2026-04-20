import 'package:flutter/material.dart';

/// All supported locales in alphabetical order by language code.
const supportedLocales = [
  Locale('ar'), // Arabic
  Locale('bn'), // Bengali
  Locale('de'), // German
  Locale('en'), // English
  Locale('es'), // Spanish
  Locale('fa'), // Persian / Farsi
  Locale('fr'), // French
  Locale('hi'), // Hindi
  Locale('id'), // Indonesian
  Locale('it'), // Italian
  Locale('ja'), // Japanese
  Locale('ko'), // Korean
  Locale('ms'), // Malay
  Locale('pt'), // Portuguese
  Locale('ru'), // Russian
  Locale('sv'), // Swedish
  Locale('th'), // Thai
  Locale('tr'), // Turkish
  Locale('ur'), // Urdu
  Locale('zh'), // Chinese
];

/// Native name shown in the language picker.
const localeNames = {
  'ar': 'العربية',
  'bn': 'বাংলা',
  'de': 'Deutsch',
  'en': 'English',
  'es': 'Español',
  'fa': 'فارسی',
  'fr': 'Français',
  'hi': 'हिन्दी',
  'id': 'Bahasa Indonesia',
  'it': 'Italiano',
  'ja': '日本語',
  'ko': '한국어',
  'ms': 'Bahasa Melayu',
  'pt': 'Português',
  'ru': 'Русский',
  'sv': 'Svenska',
  'th': 'ภาษาไทย',
  'tr': 'Türkçe',
  'ur': 'اردو',
  'zh': '中文',
};

/// Flag emoji for visual identification.
const localeFlags = {
  'ar': '🇸🇦',
  'bn': '🇧🇩',
  'de': '🇩🇪',
  'en': '🇬🇧',
  'es': '🇪🇸',
  'fa': '🇮🇷',
  'fr': '🇫🇷',
  'hi': '🇮🇳',
  'id': '🇮🇩',
  'it': '🇮🇹',
  'ja': '🇯🇵',
  'ko': '🇰🇷',
  'ms': '🇲🇾',
  'pt': '🇧🇷',
  'ru': '🇷🇺',
  'sv': '🇸🇪',
  'th': '🇹🇭',
  'tr': '🇹🇷',
  'ur': '🇵🇰',
  'zh': '🇨🇳',
};

/// Whether a locale is RTL (right-to-left).
bool isRtl(String code) => const {'ar', 'fa', 'ur'}.contains(code);

class LocaleProvider extends InheritedWidget {
  const LocaleProvider({
    super.key,
    required this.locale,
    required this.setLocale,
    required super.child,
  });

  final Locale locale;
  final void Function(Locale) setLocale;

  static LocaleProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<LocaleProvider>()!;

  @override
  bool updateShouldNotify(LocaleProvider old) => old.locale != locale;
}
