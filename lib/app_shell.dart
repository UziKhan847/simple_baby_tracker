import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/baby_profile.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/pages/graphs.dart';
import 'package:simple_baby_tracker/pages/homepage.dart';
import 'package:simple_baby_tracker/pages/milestones.dart';
import 'package:simple_baby_tracker/pages/settings.dart';
import 'package:simple_baby_tracker/services/photo_store.dart';
import 'package:simple_baby_tracker/services/timer_service.dart';
import 'package:simple_baby_tracker/services/widget_service.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> with WidgetsBindingObserver {
  int _currentIndex = 0;
  List<BabyProfile> _profiles = [];
  String? _activeId;
  Map<String, List<TrackerEvent>> _data = {};
  bool _loading = true;

  BabyProfile? get _activeProfile {
    if (_profiles.isEmpty || _activeId == null) return null;
    try {
      return _profiles.firstWhere((p) => p.id == _activeId);
    } catch (_) {
      return _profiles.first;
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _init();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  /// The home-screen widget and quick-add popup log entries and start/stop
  /// timers from separate engines, writing straight to disk. Reload on
  /// resume so anything they did while the app was in the background shows
  /// up immediately — including the TimerService singleton, whose in-memory
  /// state in *this* isolate would otherwise still show the old timer.
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state != AppLifecycleState.resumed || _activeId == null) return;
    _reloadAfterResume();
  }

  Future<void> _reloadAfterResume() async {
    await Storage.reloadFromDisk();
    await _loadData();
    if (_activeId != null) await TimerService.instance.load(_activeId!);
  }

  Future<void> _init() async {
    await Storage.migrateIfNeeded();
    _profiles = await Storage.loadProfiles();

    if (_profiles.isEmpty) {
      final p = BabyProfile(name: 'Baby');
      _profiles = [p];
      await Storage.saveProfiles(_profiles);
      await Storage.setActiveProfileId(p.id);
      _activeId = p.id;
    } else {
      _activeId = await Storage.getActiveProfileId() ?? _profiles.first.id;
    }

    await _loadData();
    if (mounted) setState(() => _loading = false);
  }

  Future<void> _loadData() async {
    if (_activeId == null) return;
    final raw = await Storage.loadAll(_activeId!);
    if (mounted) setState(() => _data = raw);
  }

  void _onDataChanged(Map<String, List<TrackerEvent>> d) =>
      setState(() => _data = d);

  Future<void> _switchProfile(String id) async {
    await Storage.setActiveProfileId(id);
    if (!mounted) return;
    setState(() {
      _activeId = id;
      _data = {};
      _currentIndex = 0;
    });
    await _loadData();
    // The widget always shows whichever baby is active in the app.
    unawaited(WidgetService.refresh(babyId: id, data: _data));
  }

  // ─── Profile dialog ────────────────────────────────────────────────────────

  Future<BabyProfile?> _showProfileDialog(BabyProfile? existing) async {
    final l = AppLocalizations.of(context)!;
    final nameCtrl = TextEditingController(text: existing?.name ?? '');
    DateTime? bd = existing?.birthDate;
    String? gender = existing?.gender;

    final result = await showDialog<BabyProfile>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, set) => AlertDialog(
          title: Text(existing == null ? l.addBaby : l.editProfile),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameCtrl,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(
                  labelText: l.babyNameRequired,
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              ListTile(
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(
                  bd == null
                      ? l.babyDobOptional
                      : l.babyBornOn('${bd!.day}/${bd!.month}/${bd!.year}'),
                ),
                trailing: const AppIcon(
                  AppIcons.calendar,
                  style: AppIconStyle.line,
                  size: 18,
                ),
                onTap: () async {
                  final p = await showDatePicker(
                    context: ctx,
                    initialDate: bd ?? DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime.now(),
                  );
                  if (p != null) set(() => bd = p);
                },
              ),
              const SizedBox(height: 8),
              SegmentedButton<String?>(
                emptySelectionAllowed: true,
                segments: [
                  ButtonSegment(value: null, label: Text(l.genderUnknown)),
                  ButtonSegment(value: 'male', label: Text(l.genderBoy)),
                  ButtonSegment(value: 'female', label: Text(l.genderGirl)),
                ],
                selected: {gender},
                onSelectionChanged: (s) => set(() => gender = s.first),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(l.actionCancel),
            ),
            FilledButton(
              onPressed: () {
                if (nameCtrl.text.trim().isEmpty) return;
                Navigator.pop(
                  ctx,
                  BabyProfile(
                    id: existing?.id,
                    name: nameCtrl.text.trim(),
                    birthDate: bd,
                    gender: gender,
                  ),
                );
              },
              child: Text(l.actionSave),
            ),
          ],
        ),
      ),
    );
    nameCtrl.dispose();
    return result;
  }

  Future<void> _addProfile() async {
    Navigator.pop(context);
    final p = await _showProfileDialog(null);
    if (p != null) {
      _profiles.add(p);
      await Storage.saveProfiles(_profiles);
      _switchProfile(p.id);
    }
  }

  Future<void> _editProfile(BabyProfile p) async {
    Navigator.pop(context);
    final updated = await _showProfileDialog(p);
    if (updated != null) {
      final i = _profiles.indexWhere((x) => x.id == p.id);
      if (i != -1) {
        _profiles[i] = updated;
        await Storage.saveProfiles(_profiles);
        if (mounted) setState(() {});
      }
    }
  }

  Future<void> _deleteProfile(BabyProfile p) async {
    Navigator.pop(context);
    final l = AppLocalizations.of(context)!;

    if (_profiles.length == 1) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l.cannotDeleteOnlyProfile)));
      }
      return;
    }

    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(l.deleteProfileTitle(p.name)),
        content: Text(l.deleteProfileContent),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l.actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l.actionDelete),
          ),
        ],
      ),
    );

    if (ok == true) {
      await Storage.deleteData(p.id);
      await PhotoStore.deleteBaby(p.id);
      _profiles.removeWhere((x) => x.id == p.id);
      await Storage.saveProfiles(_profiles);
      await _switchProfile(_profiles.first.id);
    }
  }

  void _showProfileSheet() {
    final l = AppLocalizations.of(context)!;

    showModalBottomSheet(
      context: context,
      builder: (_) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 8),
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.outlineVariant,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 8, 4),
              child: Row(
                children: [
                  Text(
                    l.babiesTitle,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Spacer(),
                  FilledButton.icon(
                    onPressed: _addProfile,
                    icon: const AppIcon(
                      AppIcons.add,
                      style: AppIconStyle.line,
                      size: 16,
                    ),
                    label: Text(l.addBaby),
                  ),
                ],
              ),
            ),
            ..._profiles.map((p) {
              final isActive = p.id == _activeId;
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: isActive
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondaryContainer,
                  child: Text(
                    p.initials,
                    style: TextStyle(
                      fontSize: 13,
                      color: isActive
                          ? Theme.of(context).colorScheme.onPrimary
                          : Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                  ),
                ),
                title: Text(
                  p.name,
                  style: TextStyle(
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
                subtitle: p.ageLabel(l).isNotEmpty ? Text(p.ageLabel(l)) : null,
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (isActive)
                      AppIcon(
                        AppIcons.given,
                        style: AppIconStyle.line,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    IconButton(
                      icon: const AppIcon(
                        AppIcons.edit,
                        style: AppIconStyle.line,
                        size: 18,
                      ),
                      onPressed: () => _editProfile(p),
                    ),
                    if (!isActive)
                      IconButton(
                        icon: const AppIcon(
                          AppIcons.delete,
                          style: AppIconStyle.line,
                          size: 18,
                        ),
                        onPressed: () => _deleteProfile(p),
                      ),
                  ],
                ),
                onTap: isActive
                    ? null
                    : () {
                        Navigator.pop(context);
                        _switchProfile(p.id);
                      },
              );
            }),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final l = AppLocalizations.of(context)!;
    final profile = _activeProfile;
    // Solid nav icons cut their details out in the colour behind them —
    // the selected tab's indicator pill.
    final navPill = Theme.of(context).colorScheme.primaryContainer;
    final activeId = _activeId ?? '';

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 16,
        toolbarHeight: 52,
        title: InkWell(
          onTap: _showProfileSheet,
          borderRadius: BorderRadius.circular(999),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 36,
                  height: 36,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(
                      context,
                    ).extension<AppColors>()!.accentSolid,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    profile?.initials ?? '?',
                    style: const TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          profile?.name ?? 'Baby',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                        ),
                        const SizedBox(width: 2),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 18,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ],
                    ),
                    if (profile?.ageLabel(l).isNotEmpty == true)
                      Text(
                        profile!.ageLabel(l),
                        style: TextStyle(
                          fontSize: 11.5,
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomePage(
            babyId: activeId,
            data: _data,
            onDataChanged: _onDataChanged,
          ),
          GraphsPage(data: _data, profile: profile),
          MilestonesPage(
            babyId: activeId,
            babyName: profile?.name ?? 'Baby',
            data: _data,
            birthDate: profile?.birthDate,
          ),
          SettingsPage(onDataImported: _loadData),
        ],
      ),
      // NavigationBar does not itself consume the bottom system-gesture
      // inset, and Scaffold.bottomNavigationBar does not auto-wrap its
      // child in a SafeArea — without this, destination labels can sit
      // under/behind the Android system nav bar.
      bottomNavigationBar: SafeArea(
        top: false,
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Theme.of(context).dividerColor),
            ),
          ),
          child: NavigationBar(
            selectedIndex: _currentIndex,
            onDestinationSelected: (i) => setState(() => _currentIndex = i),
            destinations: [
              NavigationDestination(
                icon: const AppIcon(AppIcons.home, style: AppIconStyle.line),
                selectedIcon: AppIcon(
                  AppIcons.home,
                  style: AppIconStyle.solid,
                  knockout: navPill,
                ),
                label: l.navHome,
              ),
              NavigationDestination(
                icon: const AppIcon(AppIcons.graphs, style: AppIconStyle.line),
                selectedIcon: AppIcon(
                  AppIcons.graphs,
                  style: AppIconStyle.solid,
                  knockout: navPill,
                ),
                label: l.navGraphs,
              ),
              NavigationDestination(
                icon: const AppIcon(
                  AppIcons.milestones,
                  style: AppIconStyle.line,
                ),
                selectedIcon: AppIcon(
                  AppIcons.milestones,
                  style: AppIconStyle.solid,
                  knockout: navPill,
                ),
                label: l.navMemories,
              ),
              NavigationDestination(
                icon: const AppIcon(
                  AppIcons.settings,
                  style: AppIconStyle.line,
                ),
                selectedIcon: AppIcon(
                  AppIcons.settings,
                  style: AppIconStyle.solid,
                  knockout: navPill,
                ),
                label: l.navSettings,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
