import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/baby_profile.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/pages/graphs.dart';
import 'package:simple_baby_tracker/pages/homepage.dart';
import 'package:simple_baby_tracker/pages/milestones.dart';
import 'package:simple_baby_tracker/pages/settings.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
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
    _init();
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
    setState(() {
      _activeId = id;
      _data = {};
      _currentIndex = 0;
    });
    await _loadData();
  }

  // ─── Profile dialog ────────────────────────────────────────────────────────

  Future<BabyProfile?> _showProfileDialog(BabyProfile? existing) async {
    final l = AppLocalizations.of(context)!;
    final nameCtrl = TextEditingController(text: existing?.name ?? '');
    DateTime? bd = existing?.birthDate;
    String? gender = existing?.gender;

    return showDialog<BabyProfile>(
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
                trailing: const Icon(Icons.calendar_today, size: 18),
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
        setState(() {});
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
                color: Colors.grey.shade400,
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
                    icon: const Icon(Icons.add, size: 16),
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
                subtitle: p.ageString.isNotEmpty ? Text(p.ageString) : null,
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (isActive)
                      Icon(
                        Icons.check_circle,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    IconButton(
                      icon: const Icon(Icons.edit_outlined, size: 18),
                      onPressed: () => _editProfile(p),
                    ),
                    if (!isActive)
                      IconButton(
                        icon: const Icon(Icons.delete_outline, size: 18),
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
    final l = AppLocalizations.of(context)!;

    if (_loading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    final profile = _activeProfile;
    final activeId = _activeId ?? '';

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 12,
        title: InkWell(
          onTap: _showProfileSheet,
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 16,
                  backgroundColor: Theme.of(
                    context,
                  ).colorScheme.primaryContainer,
                  child: Text(
                    profile?.initials ?? '?',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          profile?.name ?? 'Baby',
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 2),
                        const Icon(Icons.arrow_drop_down, size: 18),
                      ],
                    ),
                    if (profile?.ageString.isNotEmpty == true)
                      Text(
                        profile!.ageString,
                        style: TextStyle(
                          fontSize: 11,
                          color: Theme.of(
                            context,
                          ).colorScheme.onSurface.withAlpha(140),
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
            onReload: _loadData,
          ),
          GraphsPage(data: _data, profile: profile),
          MilestonesPage(babyId: activeId, babyName: profile?.name ?? 'Baby'),
          const SettingsPage(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (i) => setState(() => _currentIndex = i),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home_outlined),
            selectedIcon: const Icon(Icons.home),
            label: l.navHome,
          ),
          NavigationDestination(
            icon: const Icon(Icons.bar_chart_outlined),
            selectedIcon: const Icon(Icons.bar_chart),
            label: l.navGraphs,
          ),
          NavigationDestination(
            icon: const Icon(Icons.star_outline),
            selectedIcon: const Icon(Icons.star),
            label: 'Milestones',
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings_outlined),
            selectedIcon: const Icon(Icons.settings),
            label: l.navSettings,
          ),
        ],
      ),
    );
  }
}
