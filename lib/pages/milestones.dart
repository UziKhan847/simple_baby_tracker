import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/models/milestone_entry.dart';
import 'package:simple_baby_tracker/pages/foods.dart';
import 'package:simple_baby_tracker/pages/vaccinations.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/entry_row.dart';
import 'package:simple_baby_tracker/widgets/gradient_pill_button.dart';

/// Human-readable, localized title for each preset milestone key. These ARB
/// keys already existed (milestoneFirstSmile, etc.) but this page was still
/// reading from a hardcoded English-only map instead of them.
String _presetTitle(String key, AppLocalizations l) => switch (key) {
  'first_smile' => l.milestoneFirstSmile,
  'first_laugh' => l.milestoneFirstLaugh,
  'first_tooth' => l.milestoneFirstTooth,
  'rolled_back_to_tummy' => l.milestoneRolledBackTummy,
  'rolled_tummy_to_back' => l.milestoneRolledTummyBack,
  'sat_unsupported' => l.milestoneSatUnsupported,
  'started_crawling' => l.milestoneStartedCrawling,
  'pulled_to_stand' => l.milestonePulledToStand,
  'first_steps' => l.milestoneFirstSteps,
  'first_word' => l.milestoneFirstWord,
  'first_solid_food' => l.milestoneFirstSolidFood,
  'first_haircut' => l.milestoneFirstHaircut,
  'slept_through_night' => l.milestoneSleptThroughNight,
  'waved_bye' => l.milestoneWavedBye,
  'clapped_hands' => l.milestoneClappedHands,
  'first_birthday' => l.milestoneFirstBirthday,
  _ => key,
};

class MilestonesPage extends StatefulWidget {
  final String babyId;
  final String babyName;
  final Map<String, List<TrackerEvent>> data;

  const MilestonesPage({
    super.key,
    required this.babyId,
    required this.babyName,
    required this.data,
  });

  @override
  State<MilestonesPage> createState() => _MilestonesPageState();
}

class _MilestonesPageState extends State<MilestonesPage>
    with SingleTickerProviderStateMixin {
  List<MilestoneEntry> _milestones = [];
  bool _loading = true;
  late final TabController _tabs;

  // Keys that have already been logged
  Set<String> get _achievedPresets =>
      _milestones.where((m) => m.isPreset).map((m) => m.title).toSet();

  @override
  void initState() {
    super.initState();
    _tabs = TabController(length: 2, vsync: this);
    _load();
  }

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  Future<void> _load() async {
    final loaded = await Storage.loadMilestones(widget.babyId);
    if (mounted) {
      setState(() {
        _milestones = loaded..sort((a, b) => b.date.compareTo(a.date));
        _loading = false;
      });
    }
  }

  Future<void> _save() async {
    await Storage.saveMilestones(widget.babyId, _milestones);
  }

  // ─── Add/edit dialog ───────────────────────────────────────────────────────

  Future<void> _showMilestoneDialog({
    MilestoneEntry? existing,
    String? presetKey,
  }) async {
    final l = AppLocalizations.of(context)!;
    final isPreset = presetKey != null;
    final titleCtrl = TextEditingController(
      text: existing?.title ?? (isPreset ? presetKey : ''),
    );
    final notesCtrl = TextEditingController(text: existing?.notes ?? '');
    DateTime pickedDate = existing?.date ?? DateTime.now();

    final result = await showDialog<MilestoneEntry>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, set) => AlertDialog(
          title: Text(
            existing != null
                ? 'Edit milestone'
                : isPreset
                ? _presetTitle(presetKey, l)
                : 'Add milestone',
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (!isPreset)
                  TextField(
                    controller: titleCtrl,
                    textCapitalization: TextCapitalization.sentences,
                    decoration: const InputDecoration(
                      labelText: 'Milestone name *',
                      border: OutlineInputBorder(),
                    ),
                  ),
                if (!isPreset) const SizedBox(height: 12),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  dense: true,
                  leading: const Icon(Icons.calendar_today, size: 20),
                  title: Text(fullDate(pickedDate)),
                  subtitle: const Text('Date achieved'),
                  onTap: () async {
                    final p = await showDatePicker(
                      context: ctx,
                      initialDate: pickedDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime.now(),
                    );
                    if (p != null) set(() => pickedDate = p);
                  },
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: notesCtrl,
                  maxLines: 3,
                  decoration: const InputDecoration(
                    labelText: 'Notes (optional)',
                    hintText: 'Any details worth remembering...',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () {
                final title = isPreset ? presetKey : titleCtrl.text.trim();
                if (title.isEmpty) return;
                Navigator.pop(
                  ctx,
                  MilestoneEntry(
                    id: existing?.id,
                    title: title,
                    date: pickedDate,
                    notes: notesCtrl.text.trim().isEmpty
                        ? null
                        : notesCtrl.text.trim(),
                    isPreset: isPreset,
                  ),
                );
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
    titleCtrl.dispose();
    notesCtrl.dispose();

    if (result != null) {
      if (existing != null) {
        final i = _milestones.indexWhere((m) => m.id == existing.id);
        if (i != -1) _milestones[i] = result;
      } else {
        _milestones.add(result);
      }
      _milestones.sort((a, b) => b.date.compareTo(a.date));
      await _save();
      if (mounted) setState(() {});
    }
  }

  Future<void> _delete(MilestoneEntry m) async {
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Delete milestone?'),
        content: const Text('This cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Delete'),
          ),
        ],
      ),
    );
    if (ok == true) {
      _milestones.removeWhere((x) => x.id == m.id);
      await _save();
      if (mounted) setState(() {});
    }
  }

  // ─── Build ────────────────────────────────────────────────────────────────

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l.navMilestones),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.restaurant_outlined),
            tooltip: l.foodsTitle,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => FoodsPage(data: widget.data),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.vaccines_outlined),
            tooltip: l.navVaccinationsEntry,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => VaccinationsPage(
                  babyId: widget.babyId,
                  babyName: widget.babyName,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
        ],
        bottom: TabBar(
          controller: _tabs,
          isScrollable: true,
          tabAlignment: TabAlignment.start,
          tabs: const [
            Tab(text: 'Achieved'),
            Tab(text: 'Upcoming'),
          ],
        ),
      ),
      floatingActionButton: GradientPillButton(
        label: 'Custom milestone',
        icon: Icons.add,
        expand: false,
        onPressed: () => _showMilestoneDialog(),
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _tabs,
              children: [
                _AchievedTab(
                  milestones: _milestones,
                  onEdit: (m) => _showMilestoneDialog(existing: m),
                  onDelete: _delete,
                ),
                _UpcomingTab(
                  achieved: _achievedPresets,
                  onLog: (key) => _showMilestoneDialog(presetKey: key),
                ),
              ],
            ),
    );
  }
}

// ─── Achieved Tab ─────────────────────────────────────────────────────────

class _AchievedTab extends StatelessWidget {
  final List<MilestoneEntry> milestones;
  final void Function(MilestoneEntry) onEdit;
  final void Function(MilestoneEntry) onDelete;

  const _AchievedTab({
    required this.milestones,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l = AppLocalizations.of(context)!;
    final colors = theme.extension<AppColors>()!;

    if (milestones.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.star_border,
              size: 52,
              color: theme.colorScheme.outlineVariant,
            ),
            const SizedBox(height: 14),
            Text(
              'No milestones logged yet.',
              style: theme.textTheme.bodyLarge?.copyWith(
                fontSize: 15,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Tap "Upcoming" to log a preset,\nor use the button below for a custom one.',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontSize: 13.5,
                height: 1.5,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 96),
      itemCount: milestones.length,
      itemBuilder: (context, i) {
        final m = milestones[i];
        final title = m.isPreset ? _presetTitle(m.title, l) : m.title;

        return Dismissible(
          key: ValueKey(m.id),
          direction: DismissDirection.endToStart,
          confirmDismiss: (_) async => await showDialog<bool>(
            context: context,
            builder: (_) => AlertDialog(
              title: const Text('Delete milestone?'),
              content: const Text('This cannot be undone.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: const Text('Cancel'),
                ),
                FilledButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: const Text('Delete'),
                ),
              ],
            ),
          ),
          onDismissed: (_) => onDelete(m),
          background: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: theme.colorScheme.error,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Icon(Icons.delete, color: theme.colorScheme.onError),
          ),
          child: EntryRow(
            margin: const EdgeInsets.symmetric(vertical: 5),
            icon: Icons.check,
            color: colors.feedingStrong,
            softColor: colors.feedingSoft,
            title: title,
            subtitle: fullDate(m.date),
            trailing: IconButton(
              icon: const Icon(Icons.edit_outlined, size: 16),
              color: theme.colorScheme.onSurfaceVariant,
              onPressed: () => onEdit(m),
            ),
            onTap: m.notes != null
                ? () => showDialog(
                    context: context,
                    builder: (_) => AlertDialog(
                      title: Text(title),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            fullDate(m.date),
                            style: TextStyle(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                          if (m.notes != null) ...[
                            const SizedBox(height: 8),
                            Text(m.notes!),
                          ],
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('Close'),
                        ),
                      ],
                    ),
                  )
                : null,
          ),
        );
      },
    );
  }
}

// ─── Upcoming Tab ─────────────────────────────────────────────────────────

class _UpcomingTab extends StatelessWidget {
  final Set<String> achieved;
  final void Function(String key) onLog;

  const _UpcomingTab({required this.achieved, required this.onLog});

  @override
  Widget build(BuildContext context) {
    final remaining = presetMilestoneKeys
        .where((k) => !achieved.contains(k))
        .toList();

    final theme = Theme.of(context);
    final l = AppLocalizations.of(context)!;
    final colors = theme.extension<AppColors>()!;

    if (remaining.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('🎉', style: TextStyle(fontSize: 48)),
            const SizedBox(height: 12),
            Text(
              'All preset milestones achieved!',
              style: theme.textTheme.bodyLarge?.copyWith(
                fontSize: 15,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 96),
      itemCount: remaining.length,
      itemBuilder: (context, i) {
        final key = remaining[i];
        return EntryRow(
          margin: const EdgeInsets.symmetric(vertical: 5),
          icon: Icons.circle,
          color: colors.neutralStrong,
          softColor: colors.neutralSoft,
          title: _presetTitle(key, l),
          trailing: _LogPill(onTap: () => onLog(key)),
        );
      },
    );
  }
}

/// The mockup's "Log" affordance: an accent-soft pill, not a Material
/// tonal button (which would pick up the scheme's secondary container).
class _LogPill extends StatelessWidget {
  const _LogPill({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: theme.colorScheme.primaryContainer,
      borderRadius: BorderRadius.circular(999),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 9),
          child: Text(
            'Log',
            style: theme.textTheme.labelMedium?.copyWith(
              fontSize: 13.5,
              fontWeight: FontWeight.w700,
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ),
    );
  }
}
