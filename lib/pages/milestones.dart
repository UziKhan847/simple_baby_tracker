import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/models/milestone_entry.dart';
import 'package:simple_baby_tracker/storage.dart';

/// Human-readable titles for each preset milestone key (English fallback).
/// Replace with l10n lookup once milestone keys are added to the ARB files.
String _presetTitle(String key) {
  const titles = {
    'first_smile': '😊 First smile',
    'first_laugh': '😂 First laugh',
    'first_tooth': '🦷 First tooth',
    'rolled_back_to_tummy': '🔄 Rolled back → tummy',
    'rolled_tummy_to_back': '🔄 Rolled tummy → back',
    'sat_unsupported': '🧸 Sat unsupported',
    'started_crawling': '🐣 Started crawling',
    'pulled_to_stand': '🏋️ Pulled to stand',
    'first_steps': '👣 First steps',
    'first_word': '💬 First word',
    'first_solid_food': '🥣 First solid food',
    'first_haircut': '✂️ First haircut',
    'slept_through_night': '🌙 Slept through the night',
    'waved_bye': '👋 Waved bye-bye',
    'clapped_hands': '👏 Clapped hands',
    'first_birthday': '🎂 First birthday',
  };
  return titles[key] ?? key;
}

class MilestonesPage extends StatefulWidget {
  final String babyId;
  final String babyName;

  const MilestonesPage({
    super.key,
    required this.babyId,
    required this.babyName,
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
  Set<String> get _achievedPresets => _milestones
      .where((m) => m.isPreset)
      .map((m) => m.title)
      .toSet();

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
    final isPreset = presetKey != null;
    final titleCtrl = TextEditingController(
      text: existing?.title ?? (isPreset ? presetKey : ''),
    );
    final notesCtrl =
        TextEditingController(text: existing?.notes ?? '');
    DateTime pickedDate = existing?.date ?? DateTime.now();

    final result = await showDialog<MilestoneEntry>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, set) => AlertDialog(
          title: Text(
            existing != null
                ? 'Edit milestone'
                : isPreset
                    ? _presetTitle(presetKey)
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
                final title = isPreset
                    ? presetKey
                    : titleCtrl.text.trim();
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
              child: const Text('Cancel')),
          FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Delete')),
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
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.babyName} — Milestones'),
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabs,
          tabs: const [
            Tab(icon: Icon(Icons.star), text: 'Achieved'),
            Tab(icon: Icon(Icons.pending_outlined), text: 'Upcoming'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        heroTag: 'milestones_fab',
        onPressed: () => _showMilestoneDialog(),
        icon: const Icon(Icons.add),
        label: const Text('Custom milestone'),
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
                  onLog: (key) =>
                      _showMilestoneDialog(presetKey: key),
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
    if (milestones.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star_border,
                size: 64, color: Colors.grey.shade400),
            const SizedBox(height: 12),
            const Text('No milestones logged yet.',
                style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 8),
            const Text(
              'Tap "Upcoming" to log a preset,\nor use the + button for a custom one.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 88),
      itemCount: milestones.length,
      itemBuilder: (context, i) {
        final m = milestones[i];
        final title =
            m.isPreset ? _presetTitle(m.title) : m.title;

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
                    child: const Text('Cancel')),
                FilledButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: const Text('Delete')),
              ],
            ),
          ),
          onDismissed: (_) => onDelete(m),
          background: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(Icons.delete, color: Colors.white),
          ),
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber.withAlpha(40),
                child: const Icon(Icons.star, color: Colors.amber),
              ),
              title: Text(title,
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              subtitle: Text(fullDate(m.date)),
              trailing: IconButton(
                icon: const Icon(Icons.edit_outlined, size: 18),
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
                              Text(fullDate(m.date),
                                  style: const TextStyle(
                                      color: Colors.grey)),
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

    if (remaining.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('🎉', style: TextStyle(fontSize: 48)),
            const SizedBox(height: 12),
            const Text('All preset milestones achieved!',
                style: TextStyle(color: Colors.grey)),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 24),
      itemCount: remaining.length,
      itemBuilder: (context, i) {
        final key = remaining[i];
        return Card(
          margin: const EdgeInsets.symmetric(vertical: 4),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor:
                  Theme.of(context).colorScheme.secondaryContainer,
              child: Icon(Icons.pending_outlined,
                  color: Theme.of(context)
                      .colorScheme
                      .onSecondaryContainer,
                  size: 20),
            ),
            title: Text(_presetTitle(key)),
            trailing: FilledButton.tonal(
              onPressed: () => onLog(key),
              child: const Text('Log'),
            ),
          ),
        );
      },
    );
  }
}