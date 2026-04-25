import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/providers/locale.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/providers/theme.dart';
import 'package:simple_baby_tracker/services/notification.dart';
import 'package:simple_baby_tracker/services/pdf_export.dart';
import 'package:simple_baby_tracker/storage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  NotifSettings _notifSettings = const NotifSettings();
  bool _notifLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadNotifSettings();
  }

  Future<void> _loadNotifSettings() async {
    final s = await NotificationService.instance.loadSettings();
    if (mounted) {
      setState(() {
        _notifSettings = s;
        _notifLoaded = true;
      });
    }
  }

  Future<void> _updateNotif(NotifSettings s) async {
    await NotificationService.instance.saveSettings(s);
    setState(() => _notifSettings = s);
  }

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
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: DropdownButtonFormField<String>(
              initialValue: currentCode,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.language),
                border: const OutlineInputBorder(),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 14,
                ),
                labelText:
                    '${localeFlags[currentCode] ?? ''}  ${localeNames[currentCode] ?? currentCode}',
              ),
              items: supportedLocales.map((locale) {
                final code = locale.languageCode;
                return DropdownMenuItem<String>(
                  value: code,
                  child: Text(
                    '${localeFlags[code] ?? ''}  ${localeNames[code] ?? code}',
                    style: TextStyle(
                      fontWeight: code == currentCode
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                );
              }).toList(),
              selectedItemBuilder: (context) => supportedLocales.map((locale) {
                final code = locale.languageCode;
                return Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    '${localeFlags[code] ?? ''}  ${localeNames[code] ?? code}',
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                );
              }).toList(),
              onChanged: (v) {
                if (v != null) lp.setLocale(Locale(v));
              },
            ),
          ),
          if (isRtl(currentCode))
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 2, 16, 4),
              child: Text(
                'RTL layout active',
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

          // ── Notifications ─────────────────────────────────────────────────
          _SectionHeader(l.settingsNotifications),
          if (!_notifLoaded)
            const Padding(
              padding: EdgeInsets.all(16),
              child: CircularProgressIndicator(),
            )
          else ...[
            SwitchListTile(
              secondary: const Icon(Icons.local_drink_outlined),
              title: Text(l.notifFeedingReminder),
              subtitle: Text(
                l.notifFeedingReminderDesc(_notifSettings.feedingHours),
              ),
              value: _notifSettings.feedingEnabled,
              onChanged: (v) async {
                if (v) {
                  final ok = await NotificationService.instance
                      .requestPermissions();
                  if (!ok && context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(l.notifPermissionRequired)),
                    );
                    return;
                  }
                }
                _updateNotif(_notifSettings.copyWith(feedingEnabled: v));
              },
            ),
            if (_notifSettings.feedingEnabled)
              _HoursSlider(
                value: _notifSettings.feedingHours,
                onChanged: (v) =>
                    _updateNotif(_notifSettings.copyWith(feedingHours: v)),
              ),
            SwitchListTile(
              secondary: const Icon(Icons.baby_changing_station),
              title: Text(l.notifDiaperReminder),
              subtitle: Text(
                l.notifDiaperReminderDesc(_notifSettings.diaperHours),
              ),
              value: _notifSettings.diaperEnabled,
              onChanged: (v) async {
                if (v) {
                  final ok = await NotificationService.instance
                      .requestPermissions();
                  if (!ok && context.mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(l.notifPermissionRequired)),
                    );
                    return;
                  }
                }
                _updateNotif(_notifSettings.copyWith(diaperEnabled: v));
              },
            ),
            if (_notifSettings.diaperEnabled)
              _HoursSlider(
                value: _notifSettings.diaperHours,
                onChanged: (v) =>
                    _updateNotif(_notifSettings.copyWith(diaperHours: v)),
              ),
          ],

          const Divider(),

          // ── Export & backup ───────────────────────────────────────────────
          _SectionHeader(l.settingsExport),
          ListTile(
            leading: const Icon(Icons.picture_as_pdf),
            title: Text(l.exportPdf),
            subtitle: Text(l.exportPdfDesc),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _exportPdf(context),
          ),
          ListTile(
            leading: const Icon(Icons.code),
            title: Text(l.exportJson),
            subtitle: const Text('Raw data for backup'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () => _exportJson(context),
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
        ],
      ),
    );
  }

  Future<void> _exportPdf(BuildContext context) async {
    final settings = SettingsProvider.of(context).settings;
    final profiles = await Storage.loadProfiles();
    if (profiles.isEmpty) return;
    final id = await Storage.getActiveProfileId() ?? profiles.first.id;
    final profile = profiles.firstWhere(
      (p) => p.id == id,
      orElse: () => profiles.first,
    );
    final data = await Storage.loadAll(id);

    if (!context.mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Generating PDF…')));

    await PdfExportService.instance.shareReport(
      profile: profile,
      data: data,
      useKg: settings.useKg,
      useCelsius: settings.useCelsius,
    );
  }

  Future<void> _exportJson(BuildContext context) async {
    final profiles = await Storage.loadProfiles();
    if (profiles.isEmpty) return;
    final id = await Storage.getActiveProfileId() ?? profiles.first.id;
    final data = await Storage.loadAll(id);
    final file = await Storage.exportToFile(id, data);

    if (!context.mounted) return;

    if (Theme.of(context).platform == TargetPlatform.linux) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Export saved'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('File saved to:'),
              const SizedBox(height: 8),
              SelectableText(
                file.path,
                style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Close'),
            ),
          ],
        ),
      );
      return;
    }

    await SharePlus.instance.share(
      ShareParams(
        files: [XFile(file.path)],
        subject: 'Baby Tracker JSON export',
      ),
    );
  }
}

// ─── Helper widgets ────────────────────────────────────────────────────────

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}

class _HoursSlider extends StatelessWidget {
  final int value;
  final ValueChanged<int> onChanged;

  const _HoursSlider({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Text('1h', style: TextStyle(fontSize: 12)),
          Expanded(
            child: Slider(
              value: value.toDouble(),
              min: 1,
              max: 8,
              divisions: 7,
              label: '${value}h',
              onChanged: (v) => onChanged(v.round()),
            ),
          ),
          const Text('8h', style: TextStyle(fontSize: 12)),
          const SizedBox(width: 8),
          Text(
            '${value}h',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
