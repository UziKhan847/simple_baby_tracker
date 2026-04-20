import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/providers/locale.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/providers/theme.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final themeProvider = ThemeProvider.of(context);
    final sp = SettingsProvider.of(context);
    final lp = LocaleProvider.of(context);
    final settings = sp.settings;
    final isDark = themeProvider.isDark;
    final currentCode = lp.locale.languageCode;

    return Scaffold(
      appBar: AppBar(title: Text(l.settingsTitle)),
      body: ListView(
        children: [
          // ── Appearance ───────────────────────────────────────────────────
          _SectionHeader(l.settingsAppearance),
          SwitchListTile(
            secondary: Icon(isDark ? Icons.dark_mode : Icons.light_mode),
            title: Text(l.settingsDarkMode),
            subtitle: Text(
              isDark ? l.settingsDarkActive : l.settingsLightActive,
            ),
            value: isDark,
            onChanged: (_) => themeProvider.toggleTheme(),
          ),

          const Divider(),

          // ── Language ──────────────────────────────────────────────────────
          _SectionHeader(l.settingsLanguage),
          Padding(
            padding: const .symmetric(horizontal: 16, vertical: 4),
            child: DropdownButtonFormField<String>(
              initialValue: currentCode,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.language),
                border: const OutlineInputBorder(),
                contentPadding: const .symmetric(horizontal: 12, vertical: 14),
                // Show flag + current language name as label
                labelText:
                    '${localeFlags[currentCode] ?? ''} '
                    '${localeNames[currentCode] ?? currentCode}',
              ),
              // Build one item per supported locale
              items: supportedLocales.map((locale) {
                final code = locale.languageCode;
                final flag = localeFlags[code] ?? '';
                final name = localeNames[code] ?? code;
                return DropdownMenuItem<String>(
                  value: code,
                  child: Text(
                    '$flag  $name',
                    style: TextStyle(
                      fontWeight: code == currentCode ? .bold : .normal,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (v) {
                if (v != null) lp.setLocale(Locale(v));
              },
              // Show selected value inline
              selectedItemBuilder: (context) => supportedLocales.map((locale) {
                final code = locale.languageCode;
                return Align(
                  alignment: .centerStart,
                  child: Text(
                    '${localeFlags[code] ?? ''}  ${localeNames[code] ?? code}',
                    style: const TextStyle(fontWeight: .w600),
                  ),
                );
              }).toList(),
            ),
          ),
          Padding(
            padding: const .fromLTRB(16, 4, 16, 8),
            child: Text(
              isRtl(currentCode) ? 'RTL layout active for this language' : '',
              style: TextStyle(
                fontSize: 11,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),

          const Divider(),

          // ── Units ─────────────────────────────────────────────────────────
          _SectionHeader(l.settingsUnits),
          ListTile(
            leading: const Icon(Icons.monitor_weight_outlined),
            title: Text(l.settingsWeightUnit),
            trailing: SegmentedButton<bool>(
              segments: const [
                ButtonSegment(value: true, label: Text('kg')),
                ButtonSegment(value: false, label: Text('lbs')),
              ],
              selected: {settings.useKg},
              onSelectionChanged: (s) =>
                  sp.updateSettings(settings.copyWith(useKg: s.first)),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.thermostat_outlined),
            title: Text(l.settingsTempUnit),
            trailing: SegmentedButton<bool>(
              segments: const [
                ButtonSegment(value: true, label: Text('°C')),
                ButtonSegment(value: false, label: Text('°F')),
              ],
              selected: {settings.useCelsius},
              onSelectionChanged: (s) =>
                  sp.updateSettings(settings.copyWith(useCelsius: s.first)),
            ),
          ),

          const Divider(),

          // ── Tips ──────────────────────────────────────────────────────────
          _SectionHeader(l.settingsTips),
          ListTile(
            leading: const Icon(Icons.swap_horiz_outlined),
            title: Text(l.tipSwitchBabies),
            subtitle: Text(l.tipSwitchBabiesDesc),
            isThreeLine: true,
          ),
          ListTile(
            leading: const Icon(Icons.swipe_left_outlined),
            title: Text(l.tipSwipeDelete),
            subtitle: Text(l.tipSwipeDeleteDesc),
          ),
          ListTile(
            leading: const Icon(Icons.edit_outlined),
            title: Text(l.tipTapToEdit),
          ),
          ListTile(
            leading: const Icon(Icons.add_circle_outline),
            title: Text(l.tipMultipleFeeds),
            subtitle: Text(l.tipMultipleFeedsDesc),
            isThreeLine: true,
          ),
          ListTile(
            leading: const Icon(Icons.share_outlined),
            title: Text(l.tipExportData),
            subtitle: Text(l.tipExportDataDesc),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .fromLTRB(16, 16, 16, 4),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          fontSize: 11,
          fontWeight: .bold,
          letterSpacing: 1.2,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
