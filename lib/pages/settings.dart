import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/providers/locale.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/providers/theme.dart';
import 'package:simple_baby_tracker/services/notification.dart';
import 'package:simple_baby_tracker/services/pdf_export.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/widgets/category_icon_badge.dart';
import 'package:simple_baby_tracker/widgets/pill_segmented_control.dart';
import 'package:simple_baby_tracker/widgets/section_header.dart';
import 'package:simple_baby_tracker/widgets/settings_group.dart';

/// Extra vertical padding for rows with no subtitle (Language, Weight/
/// Temperature unit). Material sizes a subtitle-less [ListTile] to 56dp vs.
/// 72dp for a two-line one, so without this the 34px icon badge fills a
/// visibly bigger share of the shorter tile than it does in the switch
/// rows above, and reads as cramped even though the horizontal inset is
/// identical. This is a small top-up over the theme's own contentPadding,
/// not a replacement for it — keep it modest, since ListTile's minimum-
/// inset behavior means padding here layers on top of the tile's existing
/// sizing rather than overriding it.
const _singleLinePadding = EdgeInsets.symmetric(horizontal: 16, vertical: 6);

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key, this.onDataImported});

  /// Called after a JSON import completes, so the caller can reload the
  /// active baby's in-memory data — [SettingsPage] writes straight to
  /// [Storage] and has no way to tell [AppShell]'s already-loaded [Map] to
  /// refresh itself otherwise.
  final Future<void> Function()? onDataImported;

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
    if (!mounted) return;
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
    final colors = Theme.of(context).extension<AppColors>()!;

    return Scaffold(
      appBar: AppBar(title: Text(l.settingsTitle)),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 28),
        children: [
          // ── Appearance ───────────────────────────────────────────────────
          AppSectionHeader(l.settingsAppearance),
          AppSettingsGroup(
            children: [
              SwitchListTile(
                secondary: _RowBadge(
                  icon: isDark ? Icons.dark_mode : Icons.light_mode,
                  color: colors.temperatureStrong,
                  softColor: colors.temperatureSoft,
                ),
                title: Text(l.settingsDarkMode),
                subtitle: Text(
                  isDark ? l.settingsDarkActive : l.settingsLightActive,
                ),
                value: isDark,
                onChanged: (_) => themeProvider.toggleTheme(),
              ),
              SwitchListTile(
                secondary: _RowBadge(
                  icon: Icons.nightlight_round,
                  color: colors.sleepStrong,
                  softColor: colors.sleepSoft,
                ),
                title: Text(l.settingsOledMode),
                subtitle: Text(l.settingsOledModeDesc),
                value: themeProvider.oledEnabled,
                onChanged: (_) => themeProvider.toggleOled(),
              ),
              SwitchListTile(
                secondary: _RowBadge(
                  icon: Icons.fullscreen,
                  color: colors.miscStrong,
                  softColor: colors.miscSoft,
                ),
                title: Text(l.settingsImmersiveMode),
                subtitle: Text(l.settingsImmersiveModeDesc),
                value: settings.immersiveMode,
                onChanged: (v) {
                  SystemChrome.setEnabledSystemUIMode(
                    v ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
                  );
                  sp.updateSettings(settings.copyWith(immersiveMode: v));
                },
              ),
            ],
          ),

          // ── Language ──────────────────────────────────────────────────────
          AppSectionHeader(l.settingsLanguage),
          AppSettingsGroup(
            children: [
              ListTile(
                contentPadding: isRtl(currentCode) ? null : _singleLinePadding,
                leading: _RowBadge(
                  icon: Icons.language,
                  color: colors.neutralStrong,
                  softColor: colors.neutralSoft,
                ),
                title: Text(
                  '${localeFlags[currentCode] ?? ''}  ${localeNames[currentCode] ?? currentCode}',
                ),
                subtitle: isRtl(currentCode)
                    ? const Text('RTL layout active')
                    : null,
                trailing: const Icon(Icons.chevron_right, size: 18),
                onTap: () => _pickLanguage(currentCode),
              ),
            ],
          ),

          // ── Units ─────────────────────────────────────────────────────────
          AppSectionHeader(l.settingsUnits),
          AppSettingsGroup(
            children: [
              ListTile(
                contentPadding: _singleLinePadding,
                leading: _RowBadge(
                  icon: Icons.monitor_weight_outlined,
                  color: colors.weightStrong,
                  softColor: colors.weightSoft,
                ),
                title: Text(l.settingsWeightUnit),
                trailing: SizedBox(
                  width: 130,
                  child: PillSegmentedControl<bool>(
                    options: const [
                      PillSegmentedOption(value: true, label: 'kg'),
                      PillSegmentedOption(value: false, label: 'lbs'),
                    ],
                    selected: settings.useKg,
                    onChanged: (v) =>
                        sp.updateSettings(settings.copyWith(useKg: v)),
                  ),
                ),
              ),
              ListTile(
                contentPadding: _singleLinePadding,
                leading: _RowBadge(
                  icon: Icons.thermostat_outlined,
                  color: colors.temperatureStrong,
                  softColor: colors.temperatureSoft,
                ),
                title: Text(l.settingsTempUnit),
                trailing: SizedBox(
                  width: 130,
                  child: PillSegmentedControl<bool>(
                    options: const [
                      PillSegmentedOption(value: true, label: '°C'),
                      PillSegmentedOption(value: false, label: '°F'),
                    ],
                    selected: settings.useCelsius,
                    onChanged: (v) =>
                        sp.updateSettings(settings.copyWith(useCelsius: v)),
                  ),
                ),
              ),
              ListTile(
                contentPadding: _singleLinePadding,
                leading: _RowBadge(
                  icon: Icons.local_drink_outlined,
                  color: colors.feedingStrong,
                  softColor: colors.feedingSoft,
                ),
                title: Text(l.settingsVolumeUnit),
                trailing: SizedBox(
                  width: 130,
                  child: PillSegmentedControl<bool>(
                    options: const [
                      PillSegmentedOption(value: true, label: 'ml'),
                      PillSegmentedOption(value: false, label: 'oz'),
                    ],
                    selected: settings.useMl,
                    onChanged: (v) =>
                        sp.updateSettings(settings.copyWith(useMl: v)),
                  ),
                ),
              ),
            ],
          ),

          // ── Notifications ─────────────────────────────────────────────────
          AppSectionHeader(l.settingsNotifications),
          if (!_notifLoaded)
            const Padding(
              padding: EdgeInsets.all(20),
              child: Center(child: CircularProgressIndicator()),
            )
          else
            AppSettingsGroup(
              children: [
                SwitchListTile(
                  secondary: _RowBadge(
                    icon: Icons.local_drink_outlined,
                    color: colors.feedingStrong,
                    softColor: colors.feedingSoft,
                  ),
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
                  secondary: _RowBadge(
                    icon: Icons.baby_changing_station,
                    color: colors.diaperStrong,
                    softColor: colors.diaperSoft,
                  ),
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
            ),

          // ── Export & backup ───────────────────────────────────────────────
          AppSectionHeader(l.settingsExport),
          AppSettingsGroup(
            children: [
              ListTile(
                leading: _RowBadge(
                  icon: Icons.picture_as_pdf,
                  color: colors.neutralStrong,
                  softColor: colors.neutralSoft,
                ),
                title: Text(l.exportPdf),
                subtitle: Text(l.exportPdfDesc),
                trailing: const Icon(Icons.chevron_right, size: 18),
                onTap: () => _exportPdf(context),
              ),
              ListTile(
                leading: _RowBadge(
                  icon: Icons.code,
                  color: colors.neutralStrong,
                  softColor: colors.neutralSoft,
                ),
                title: Text(l.exportJson),
                subtitle: Text(l.exportJsonDesc),
                trailing: const Icon(Icons.chevron_right, size: 18),
                onTap: () => _exportJson(context),
              ),
              ListTile(
                leading: _RowBadge(
                  icon: Icons.file_upload_outlined,
                  color: colors.neutralStrong,
                  softColor: colors.neutralSoft,
                ),
                title: Text(l.importJson),
                subtitle: Text(l.importJsonDesc),
                trailing: const Icon(Icons.chevron_right, size: 18),
                onTap: () => _importJson(context),
              ),
            ],
          ),

          // ── Tips ──────────────────────────────────────────────────────────
          AppSectionHeader(l.settingsTips),
          AppSettingsGroup(
            children: [
              ListTile(
                leading: const Icon(Icons.swap_horiz_outlined, size: 20),
                title: Text(l.tipSwitchBabies),
                subtitle: Text(l.tipSwitchBabiesDesc),
                isThreeLine: true,
              ),
              ListTile(
                leading: const Icon(Icons.swipe_left_outlined, size: 20),
                title: Text(l.tipSwipeDelete),
                subtitle: Text(l.tipSwipeDeleteDesc),
              ),
              ListTile(
                leading: const Icon(Icons.edit_outlined, size: 20),
                title: Text(l.tipTapToEdit),
              ),
              ListTile(
                leading: const Icon(Icons.add_circle_outline, size: 20),
                title: Text(l.tipMultipleFeeds),
                subtitle: Text(l.tipMultipleFeedsDesc),
                isThreeLine: true,
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Language picker as a bottom sheet. A [DropdownButtonFormField] was used
  /// here before, but its floating label repeated the selected value above
  /// the field and it couldn't be styled as one of the mockup's card rows.
  Future<void> _pickLanguage(String currentCode) async {
    final lp = LocaleProvider.of(context);
    final l = AppLocalizations.of(context)!;

    final picked = await showModalBottomSheet<String>(
      context: context,
      isScrollControlled: true,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 12),
            Container(
              width: 38,
              height: 4,
              decoration: BoxDecoration(
                color: Theme.of(ctx).colorScheme.outlineVariant,
                borderRadius: BorderRadius.circular(999),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 4),
              child: Align(
                alignment: AlignmentDirectional.centerStart,
                child: Text(
                  l.settingsLanguage,
                  style: Theme.of(ctx).textTheme.titleMedium,
                ),
              ),
            ),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: supportedLocales.map((locale) {
                  final code = locale.languageCode;
                  final selected = code == currentCode;
                  return ListTile(
                    title: Text(
                      '${localeFlags[code] ?? ''}  ${localeNames[code] ?? code}',
                      style: TextStyle(
                        fontWeight: selected
                            ? FontWeight.w700
                            : FontWeight.w500,
                        color: selected
                            ? Theme.of(ctx).colorScheme.primary
                            : null,
                      ),
                    ),
                    trailing: selected
                        ? Icon(
                            Icons.check,
                            size: 18,
                            color: Theme.of(ctx).colorScheme.primary,
                          )
                        : null,
                    onTap: () => Navigator.pop(ctx, code),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );

    if (picked != null) lp.setLocale(Locale(picked));
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
    final medicationCourses = await Storage.loadMedicationCourses(id);

    if (!context.mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Generating PDF…')));

    await PdfExportService.instance.shareReport(
      profile: profile,
      data: data,
      useKg: settings.useKg,
      useCelsius: settings.useCelsius,
      medicationCourses: medicationCourses,
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

  Future<void> _importJson(BuildContext context) async {
    final l = AppLocalizations.of(context)!;

    final picked = await openFile(
      acceptedTypeGroups: const [
        XTypeGroup(label: 'JSON', extensions: ['json']),
      ],
    );
    if (picked == null) return;

    final raw = await picked.readAsString();
    final imported = Storage.tryParseImportJson(raw);
    if (imported == null) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(l.importInvalidFile)));
      return;
    }

    if (!context.mounted) return;
    final merge = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.importDialogTitle),
        content: Text(l.importDialogBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l.actionCancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(l.importReplaceAll),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(l.importMerge),
          ),
        ],
      ),
    );
    if (merge == null) return;

    final profiles = await Storage.loadProfiles();
    if (profiles.isEmpty) return;
    final id = await Storage.getActiveProfileId() ?? profiles.first.id;
    await Storage.importData(id, imported, merge: merge);
    await widget.onDataImported?.call();

    if (!context.mounted) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(l.importSuccess)));
  }
}

// ─── Helper widgets ────────────────────────────────────────────────────────

/// Leading icon for a settings row: the mockup's 34px rounded-square tinted
/// badge. Wrapped in a [SizedBox] so [ListTile] doesn't stretch it.
class _RowBadge extends StatelessWidget {
  const _RowBadge({
    required this.icon,
    required this.color,
    required this.softColor,
  });

  final IconData icon;
  final Color color;
  final Color softColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: CategoryIconBadge(
        icon: icon,
        color: color,
        softColor: softColor,
        size: 34,
        squircle: true,
      ),
    );
  }
}

/// Slider for the feeding/diaper reminder interval.
///
/// Dragging updates its own local state (so the track and "Nh" label track
/// the finger live), but [onChanged] — which persists to SharedPreferences
/// *and* re-schedules the OS notification — only fires once, from
/// `onChangeEnd`. Wiring it to `Slider.onChanged` instead (as this used to
/// do) meant every intermediate tick during a single drag did a handful of
/// SharedPreferences writes plus a cancel-and-reschedule round trip to the
/// notifications plugin.
class _HoursSlider extends StatefulWidget {
  final int value;
  final ValueChanged<int> onChanged;

  const _HoursSlider({required this.value, required this.onChanged});

  @override
  State<_HoursSlider> createState() => _HoursSliderState();
}

class _HoursSliderState extends State<_HoursSlider> {
  late double _dragValue = widget.value.toDouble();

  @override
  void didUpdateWidget(covariant _HoursSlider old) {
    super.didUpdateWidget(old);
    if (old.value != widget.value) _dragValue = widget.value.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    final display = _dragValue.round();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Text('1h', style: TextStyle(fontSize: 12)),
          Expanded(
            child: Slider(
              value: _dragValue,
              min: 1,
              max: 8,
              divisions: 7,
              label: '${display}h',
              onChanged: (v) => setState(() => _dragValue = v),
              onChangeEnd: (v) => widget.onChanged(v.round()),
            ),
          ),
          const Text('8h', style: TextStyle(fontSize: 12)),
          const SizedBox(width: 8),
          Text(
            '${display}h',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
