import 'package:file_selector/file_selector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/pages/bottles.dart';
import 'package:simple_baby_tracker/providers/locale.dart';
import 'package:simple_baby_tracker/providers/settings.dart';
import 'package:simple_baby_tracker/providers/theme.dart';
import 'package:simple_baby_tracker/services/backup_service.dart';
import 'package:simple_baby_tracker/services/notification.dart';
import 'package:simple_baby_tracker/services/pdf_export.dart';
import 'package:simple_baby_tracker/services/widget_service.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';
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
                  icon: isDark ? AppIcons.darkMode : AppIcons.lightMode,
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
                  icon: AppIcons.oledMode,
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
                  icon: AppIcons.immersive,
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
                  icon: AppIcons.language,
                  color: colors.neutralStrong,
                  softColor: colors.neutralSoft,
                ),
                title: Text(
                  '${localeFlags[currentCode] ?? ''}  ${localeNames[currentCode] ?? currentCode}',
                ),
                subtitle: isRtl(currentCode) ? Text(l.settingsRtlActive) : null,
                trailing: const AppIcon(
                  AppIcons.chevronRight,
                  style: AppIconStyle.line,
                  size: 18,
                ),
                onTap: () => _pickLanguage(currentCode),
              ),
            ],
          ),

          // ── Units ─────────────────────────────────────────────────────────
          AppSectionHeader(l.settingsUnits),
          AppSettingsGroup(
            children: [
              ListTile(
                leading: _RowBadge(
                  icon: AppIcons.weightUnit,
                  color: colors.weightStrong,
                  softColor: colors.weightSoft,
                ),
                title: Text(l.settingsWeightUnit),
                subtitle: Text(l.settingsLengthUnitNote),
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
                  icon: AppIcons.tempUnit,
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
                  icon: AppIcons.milkUnit,
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

          // ── Feeding ───────────────────────────────────────────────────────
          AppSectionHeader(l.settingsFeeding),
          AppSettingsGroup(
            children: [
              SwitchListTile(
                secondary: _RowBadge(
                  icon: AppIcons.bottle,
                  color: colors.feedingStrong,
                  softColor: colors.feedingSoft,
                ),
                title: Text(l.settingsTrackBottles),
                subtitle: Text(l.settingsTrackBottlesDesc),
                value: settings.trackBottles,
                onChanged: (v) =>
                    sp.updateSettings(settings.copyWith(trackBottles: v)),
              ),
              if (settings.trackBottles)
                ListTile(
                  contentPadding: _singleLinePadding,
                  leading: _RowBadge(
                    icon: AppIcons.milkTotal,
                    color: colors.feedingStrong,
                    softColor: colors.feedingSoft,
                  ),
                  title: Text(l.bottlesTitle),
                  trailing: const AppIcon(
                    AppIcons.chevronRight,
                    style: AppIconStyle.line,
                    size: 18,
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const BottlesPage()),
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
                    icon: AppIcons.reminderFeed,
                    color: colors.feedingStrong,
                    softColor: colors.feedingSoft,
                  ),
                  title: Text(l.notifFeedingReminder),
                  subtitle: Text(
                    l.notifFeedingReminderDescInterval(
                      formatInterval(_notifSettings.feedingInterval, l),
                    ),
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
                  _IntervalRow(
                    minutes: _notifSettings.feedingMinutes,
                    onChanged: (v) => _updateNotif(
                      _notifSettings.copyWith(feedingMinutes: v),
                    ),
                  ),
                SwitchListTile(
                  secondary: _RowBadge(
                    icon: AppIcons.reminderDiaper,
                    color: colors.diaperStrong,
                    softColor: colors.diaperSoft,
                  ),
                  title: Text(l.notifDiaperReminder),
                  subtitle: Text(
                    l.notifDiaperReminderDescInterval(
                      formatInterval(_notifSettings.diaperInterval, l),
                    ),
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
                  _IntervalRow(
                    minutes: _notifSettings.diaperMinutes,
                    onChanged: (v) =>
                        _updateNotif(_notifSettings.copyWith(diaperMinutes: v)),
                  ),
              ],
            ),

          // ── Export & backup ───────────────────────────────────────────────
          AppSectionHeader(l.settingsExport),
          AppSettingsGroup(
            children: [
              ListTile(
                leading: _RowBadge(
                  icon: AppIcons.exportPdf,
                  color: colors.neutralStrong,
                  softColor: colors.neutralSoft,
                ),
                title: Text(l.exportPdf),
                subtitle: Text(l.exportPdfDesc),
                trailing: const AppIcon(
                  AppIcons.chevronRight,
                  style: AppIconStyle.line,
                  size: 18,
                ),
                onTap: () => _exportPdf(context),
              ),
              ListTile(
                leading: _RowBadge(
                  icon: AppIcons.exportJson,
                  color: colors.neutralStrong,
                  softColor: colors.neutralSoft,
                ),
                title: Text(l.exportJson),
                subtitle: Text(l.exportJsonDesc),
                trailing: const AppIcon(
                  AppIcons.chevronRight,
                  style: AppIconStyle.line,
                  size: 18,
                ),
                onTap: () => _exportJson(context),
              ),
              ListTile(
                leading: _RowBadge(
                  icon: AppIcons.importJson,
                  color: colors.neutralStrong,
                  softColor: colors.neutralSoft,
                ),
                title: Text(l.importJson),
                subtitle: Text(l.importJsonDesc),
                trailing: const AppIcon(
                  AppIcons.chevronRight,
                  style: AppIconStyle.line,
                  size: 18,
                ),
                onTap: () => _importJson(context),
              ),
            ],
          ),

          // ── Tips ──────────────────────────────────────────────────────────
          AppSectionHeader(l.settingsTips),
          AppSettingsGroup(
            children: [
              ListTile(
                leading: const AppIcon(
                  AppIcons.switchSide,
                  style: AppIconStyle.line,
                  size: 20,
                ),
                title: Text(l.tipSwitchBabies),
                subtitle: Text(l.tipSwitchBabiesDesc),
                isThreeLine: true,
              ),
              ListTile(
                leading: const AppIcon(
                  AppIcons.swipe,
                  style: AppIconStyle.line,
                  size: 20,
                ),
                title: Text(l.tipSwipeDelete),
                subtitle: Text(l.tipSwipeDeleteDesc),
              ),
              ListTile(
                leading: const AppIcon(
                  AppIcons.edit,
                  style: AppIconStyle.line,
                  size: 20,
                ),
                title: Text(l.tipTapToEdit),
              ),
              ListTile(
                leading: const AppIcon(
                  AppIcons.addCircle,
                  style: AppIconStyle.line,
                  size: 20,
                ),
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
                        ? AppIcon(
                            AppIcons.check,
                            style: AppIconStyle.line,
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
    final bottles = await Storage.loadBottles();
    final skinConditions = await Storage.loadSkinConditions(id);

    if (!context.mounted) return;
    final l = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(l.exportGenerating)));

    await PdfExportService.instance.shareReport(
      profile: profile,
      data: data,
      useKg: settings.useKg,
      useCelsius: settings.useCelsius,
      medicationCourses: medicationCourses,
      bottles: bottles,
      skinConditions: skinConditions,
    );
  }

  Future<void> _exportJson(BuildContext context) async {
    final profiles = await Storage.loadProfiles();
    if (profiles.isEmpty) return;
    final id = await Storage.getActiveProfileId() ?? profiles.first.id;
    final data = await Storage.loadAll(id);
    if (!context.mounted) return;
    await exportAndShareBackup(context, babyId: id, data: data);
  }

  Future<void> _importJson(BuildContext context) async {
    final l = AppLocalizations.of(context)!;

    final picked = await openFile(
      acceptedTypeGroups: [
        XTypeGroup(
          label: l.backupShareSubject,
          extensions: const ['zip', 'json'],
        ),
      ],
    );
    if (picked == null) return;

    final pending = await BackupService.read(
      picked.name,
      await picked.readAsBytes(),
    );
    if (pending == null) {
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
        content: Text(
          pending.photoCount == 0
              ? l.importDialogBody
              : '${l.importDialogBody}\n\n${l.importIncludesPhotos(pending.photoCount)}',
        ),
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
    await pending.restorePhotos(id, replace: !merge);
    await Storage.importData(id, pending.bundle, merge: merge);
    // Imported skin conditions may need their daily reminders armed.
    await NotificationService.instance.rescheduleFromLatestEvents();
    await widget.onDataImported?.call();
    await WidgetService.refreshActive();

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

  final String icon;
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

/// Shows a reminder's interval ("Every 2 h 30 min") and opens an hours +
/// minutes picker on tap. Replaces a 1–8 h whole-hour slider, which couldn't
/// express anything shorter than an hour, longer than 8, or in between.
class _IntervalRow extends StatelessWidget {
  final int minutes;
  final ValueChanged<int> onChanged;

  const _IntervalRow({required this.minutes, required this.onChanged});

  Future<void> _pick(BuildContext context) async {
    final picked = await showDialog<int>(
      context: context,
      builder: (_) => _IntervalPickerDialog(initialMinutes: minutes),
    );
    if (picked != null && picked != minutes) onChanged(picked);
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 64, right: 16),
      title: Text(
        l.notifIntervalEvery(formatInterval(Duration(minutes: minutes), l)),
      ),
      trailing: const AppIcon(
        AppIcons.chevronRight,
        style: AppIconStyle.line,
        size: 18,
      ),
      onTap: () => _pick(context),
    );
  }
}

class _IntervalPickerDialog extends StatefulWidget {
  final int initialMinutes;
  const _IntervalPickerDialog({required this.initialMinutes});

  @override
  State<_IntervalPickerDialog> createState() => _IntervalPickerDialogState();
}

class _IntervalPickerDialogState extends State<_IntervalPickerDialog> {
  /// Shortest interval allowed — anything below this would re-fire almost
  /// immediately after every logged event.
  static const _minMinutes = 5;

  late final _hoursCtrl = TextEditingController(
    text: (widget.initialMinutes ~/ 60).toString(),
  );
  late final _minutesCtrl = TextEditingController(
    text: (widget.initialMinutes % 60).toString(),
  );

  @override
  void dispose() {
    _hoursCtrl.dispose();
    _minutesCtrl.dispose();
    super.dispose();
  }

  int get _total =>
      (int.tryParse(_hoursCtrl.text) ?? 0) * 60 +
      (int.tryParse(_minutesCtrl.text) ?? 0);

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final valid = _total >= _minMinutes;
    return AlertDialog(
      title: Text(l.notifIntervalTitle),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _hoursCtrl,
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(labelText: l.notifIntervalHours),
                  onChanged: (_) => setState(() {}),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextField(
                  controller: _minutesCtrl,
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  decoration: InputDecoration(
                    labelText: l.notifIntervalMinutes,
                  ),
                  onChanged: (_) => setState(() {}),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            valid
                ? l.notifIntervalEvery(
                    formatInterval(Duration(minutes: _total), l),
                  )
                : l.notifIntervalTooShort(_minMinutes),
            style: TextStyle(
              fontSize: 12.5,
              color: valid
                  ? Theme.of(context).colorScheme.onSurfaceVariant
                  : Theme.of(context).colorScheme.error,
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(l.actionCancel),
        ),
        FilledButton(
          onPressed: valid ? () => Navigator.pop(context, _total) : null,
          child: Text(l.actionSave),
        ),
      ],
    );
  }
}
