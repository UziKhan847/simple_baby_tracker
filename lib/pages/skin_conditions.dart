import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/baby_profile.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/models/skin_condition.dart';
import 'package:simple_baby_tracker/services/notification.dart';
import 'package:simple_baby_tracker/services/pdf_export.dart';
import 'package:simple_baby_tracker/services/photo_store.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/widgets/app_avatar.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';
import 'package:simple_baby_tracker/widgets/entry_row.dart';
import 'package:simple_baby_tracker/widgets/gradient_pill_button.dart';
import 'package:simple_baby_tracker/widgets/pill_segmented_control.dart';

String skinSeverityLabel(int s, AppLocalizations l) => switch (s) {
  0 => l.skinSeverity0,
  1 => l.skinSeverity1,
  2 => l.skinSeverity2,
  3 => l.skinSeverity3,
  _ => l.skinSeverity4,
};

/// Severity → colour, green (clear) through red (very severe).
Color skinSeverityColor(int s) => const [
  Color(0xFF4CAF50),
  Color(0xFFC0CA33),
  Color(0xFFFFA726),
  Color(0xFFF4511E),
  Color(0xFFD32F2F),
][s.clamp(0, 4)];

/// Shared load → mutate → save → re-arm-reminder helper for both pages.
class _SkinRepo {
  final String babyId;
  List<SkinCondition> conditions = [];
  _SkinRepo(this.babyId);

  Future<void> load() async =>
      conditions = await Storage.loadSkinConditions(babyId);

  Future<void> save(SkinCondition changed) async {
    await Storage.saveSkinConditions(babyId, conditions);
    if (await NotificationService.instance.init()) {
      await NotificationService.instance.scheduleSkinReminder(changed);
    }
  }
}

// ─── List ─────────────────────────────────────────────────────────────────

class SkinConditionsPage extends StatefulWidget {
  final BabyProfile profile;
  const SkinConditionsPage({super.key, required this.profile});

  @override
  State<SkinConditionsPage> createState() => _SkinConditionsPageState();
}

class _SkinConditionsPageState extends State<SkinConditionsPage>
    with SingleTickerProviderStateMixin {
  late final _repo = _SkinRepo(widget.profile.id);
  late final _tabs = TabController(length: 2, vsync: this);
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _reload();
  }

  @override
  void dispose() {
    _tabs.dispose();
    super.dispose();
  }

  Future<void> _reload() async {
    await _repo.load();
    if (mounted) setState(() => _loading = false);
  }

  Future<void> _add() async {
    final c = await showDialog<SkinCondition>(
      context: context,
      builder: (_) => const _ConditionDialog(),
    );
    if (c == null) return;
    if (c.remindDaily) await NotificationService.instance.requestPermissions();
    _repo.conditions.add(c);
    await _repo.save(c);
    if (!mounted) return;
    setState(() {});
    _open(c);
  }

  Future<void> _open(SkinCondition c) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => _SkinConditionDetailPage(
          profile: widget.profile,
          repo: _repo,
          condition: c,
        ),
      ),
    );
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final active = _repo.conditions.where((c) => c.isActive).toList();
    final healed = _repo.conditions.where((c) => !c.isActive).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(l.skinTitle),
        bottom: TabBar(
          controller: _tabs,
          tabs: [
            Tab(text: l.skinTabActive(active.length)),
            Tab(text: l.skinTabHealed(healed.length)),
          ],
        ),
      ),
      floatingActionButton: GradientFab(onPressed: _add, tooltip: l.skinNew),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _tabs,
              children: [
                _list(active, l.skinEmptyActive),
                _list(healed, l.skinEmptyHealed),
              ],
            ),
    );
  }

  Widget _list(List<SkinCondition> items, String empty) {
    final l = AppLocalizations.of(context)!;
    final colors = Theme.of(context).extension<AppColors>()!;
    if (items.isEmpty) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Text(
            empty,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
        ),
      );
    }
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
      children: [
        for (final c in items)
          EntryRow(
            icon: AppIcons.rash,
            color: colors.temperatureStrong,
            softColor: colors.temperatureSoft,
            title: c.bodyArea == null ? c.name : '${c.name} · ${c.bodyArea}',
            titleBadge: c.isActive && !c.updatedToday
                ? _DueBadge(label: l.skinUpdateDue)
                : null,
            subtitle: [
              l.skinSince(fullDate(c.startDate)),
              if (c.latest case final u?) skinSeverityLabel(u.severity, l),
            ].join('  •  '),
            trailing: const AppIcon(
              AppIcons.chevronRight,
              style: AppIconStyle.line,
              size: 18,
            ),
            onTap: () => _open(c),
          ),
      ],
    );
  }
}

class _DueBadge extends StatelessWidget {
  final String label;
  const _DueBadge({required this.label});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: scheme.errorContainer,
        borderRadius: BorderRadius.circular(999),
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 10.5,
          fontWeight: FontWeight.w700,
          color: scheme.onErrorContainer,
        ),
      ),
    );
  }
}

// ─── Detail ───────────────────────────────────────────────────────────────

class _SkinConditionDetailPage extends StatefulWidget {
  final BabyProfile profile;
  final SkinCondition condition;
  final _SkinRepo repo;

  const _SkinConditionDetailPage({
    required this.profile,
    required this.condition,
    required this.repo,
  });

  @override
  State<_SkinConditionDetailPage> createState() =>
      __SkinConditionDetailPageState();
}

class __SkinConditionDetailPageState extends State<_SkinConditionDetailPage> {
  SkinCondition get c => widget.condition;

  Future<void> _save() async {
    await widget.repo.save(c);
    if (mounted) setState(() {});
  }

  Future<void> _addOrEditUpdate([SkinUpdate? existing]) async {
    final result = await Navigator.push<SkinUpdate>(
      context,
      MaterialPageRoute(
        builder: (_) => _UpdateForm(
          babyId: widget.profile.id,
          existing: existing,
          previous: c.latest,
        ),
      ),
    );
    if (result == null) return;
    // One update per day: logging again on the same day replaces it.
    final sameDay = c.updates.where(
      (u) => u.id != result.id && dateKey(u.date) == dateKey(result.date),
    );
    for (final old in sameDay.toList()) {
      if (old.photoPath != result.photoPath) {
        await PhotoStore.delete(old.photoPath);
      }
      c.updates.remove(old);
    }
    final i = c.updates.indexWhere((u) => u.id == result.id);
    if (i == -1) {
      c.updates.add(result);
    } else {
      c.updates[i] = result;
    }
    c.sortUpdates();
    await _save();
  }

  Future<void> _deleteUpdate(SkinUpdate u) async {
    c.updates.remove(u);
    await PhotoStore.delete(u.photoPath);
    await _save();
  }

  Future<void> _toggleHealed() async {
    c.endDate = c.isActive ? DateTime.now() : null;
    await _save();
  }

  Future<void> _edit() async {
    final edited = await showDialog<SkinCondition>(
      context: context,
      builder: (_) => _ConditionDialog(existing: c),
    );
    if (edited == null) return;
    c
      ..name = edited.name
      ..bodyArea = edited.bodyArea
      ..startDate = edited.startDate
      ..notes = edited.notes
      ..remindDaily = edited.remindDaily
      ..reminderMinutes = edited.reminderMinutes;
    await _save();
  }

  Future<void> _delete() async {
    final l = AppLocalizations.of(context)!;
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.skinDeleteTitle(c.name)),
        content: Text(l.cannotUndo),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx, false),
            child: Text(l.actionCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(ctx, true),
            child: Text(l.actionDelete),
          ),
        ],
      ),
    );
    if (ok != true) return;
    for (final u in c.updates) {
      await PhotoStore.delete(u.photoPath);
    }
    widget.repo.conditions.removeWhere((x) => x.id == c.id);
    await Storage.saveSkinConditions(
      widget.repo.babyId,
      widget.repo.conditions,
    );
    await NotificationService.instance.cancelSkinReminder(c.id);
    if (mounted) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final days =
        (c.endDate ?? DateTime.now()).difference(c.startDate).inDays + 1;
    final pair = c.firstAndLatestPhotos;

    return Scaffold(
      appBar: AppBar(
        title: Text(c.name),
        titleTextStyle: theme.appBarTheme.titleTextStyle?.copyWith(
          fontSize: 20,
        ),
        actions: [
          IconButton(
            tooltip: l.skinExportPdf,
            icon: const AppIcon(AppIcons.exportPdf),
            onPressed: () => PdfExportService.instance.shareSkinReport(
              profile: widget.profile,
              condition: c,
            ),
          ),
          PopupMenuButton<String>(
            onSelected: (v) => switch (v) {
              'edit' => _edit(),
              'healed' => _toggleHealed(),
              _ => _delete(),
            },
            itemBuilder: (_) => [
              PopupMenuItem(value: 'edit', child: Text(l.actionEdit)),
              PopupMenuItem(
                value: 'healed',
                child: Text(c.isActive ? l.skinMarkHealed : l.skinReopen),
              ),
              PopupMenuItem(value: 'delete', child: Text(l.actionDelete)),
            ],
          ),
        ],
      ),
      floatingActionButton: c.isActive
          ? GradientPillButton(
              label: c.updatedToday ? l.skinEditToday : l.skinUpdateToday,
              icon: AppIcons.add,
              expand: false,
              onPressed: () => _addOrEditUpdate(
                c.updatedToday
                    ? c.updates.lastWhere(
                        (u) => dateKey(u.date) == dateKey(DateTime.now()),
                      )
                    : null,
              ),
            )
          : null,
      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 96),
        children: [
          Text(
            [
              ?c.bodyArea,
              l.skinSince(fullDate(c.startDate)),
              l.skinDays(days),
              if (!c.isActive) l.skinHealedOn(fullDate(c.endDate!)),
            ].join('  ·  '),
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          if (c.notes != null) ...[const SizedBox(height: 6), Text(c.notes!)],
          if (c.remindDaily && c.isActive) ...[
            const SizedBox(height: 6),
            Text(
              l.skinReminderAt(
                TimeOfDay(
                  hour: c.reminderMinutes ~/ 60,
                  minute: c.reminderMinutes % 60,
                ).format(context),
              ),
              style: theme.textTheme.bodySmall,
            ),
          ],
          const SizedBox(height: 16),
          if (c.updates.length >= 2)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l.skinSeverityTrend,
                      style: theme.textTheme.titleSmall,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(height: 90, child: _SeverityBars(c.updates)),
                  ],
                ),
              ),
            ),
          if (pair != null) ...[
            const SizedBox(height: 10),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(l.photoCompare, style: theme.textTheme.titleSmall),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        for (final u in [pair.$1, pair.$2])
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              child: Column(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: LocalPhoto(u.photoPath!),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    '${fullDate(u.date)} · '
                                    '${skinSeverityLabel(u.severity, l)}',
                                    style: theme.textTheme.bodySmall,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
          const SizedBox(height: 10),
          if (c.updates.isEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Text(
                l.skinNoUpdates,
                textAlign: TextAlign.center,
                style: TextStyle(color: theme.colorScheme.onSurfaceVariant),
              ),
            ),
          for (final u in c.updates.reversed) _updateTile(u, l),
        ],
      ),
    );
  }

  Widget _updateTile(SkinUpdate u, AppLocalizations l) {
    final theme = Theme.of(context);
    final color = skinSeverityColor(u.severity);
    return Dismissible(
      key: ValueKey(u.id),
      direction: DismissDirection.endToStart,
      confirmDismiss: (_) => showDialog<bool>(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text(l.skinDeleteUpdateTitle),
          content: Text(l.cannotUndo),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: Text(l.actionCancel),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(ctx, true),
              child: Text(l.actionDelete),
            ),
          ],
        ),
      ),
      onDismissed: (_) => _deleteUpdate(u),
      background: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        color: theme.colorScheme.error,
        child: AppIcon(AppIcons.delete, color: theme.colorScheme.onError),
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => _addOrEditUpdate(u),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 10,
                  height: 44,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(fullDate(u.date), style: theme.textTheme.titleSmall),
                      Text(
                        skinSeverityLabel(u.severity, l),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: color,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      if (u.treatment != null)
                        Text(
                          l.skinTreatmentValue(u.treatment!),
                          style: theme.textTheme.bodySmall,
                        ),
                      if (u.notes != null)
                        Text(u.notes!, style: theme.textTheme.bodySmall),
                    ],
                  ),
                ),
                if (u.photoPath != null)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: 64,
                      height: 64,
                      child: LocalPhoto(u.photoPath!),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SeverityBars extends StatelessWidget {
  final List<SkinUpdate> updates;
  const _SeverityBars(this.updates);

  @override
  Widget build(BuildContext context) {
    final shown = updates.length > 30
        ? updates.sublist(updates.length - 30)
        : updates;
    return LayoutBuilder(
      builder: (context, box) => Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          for (final u in shown)
            Expanded(
              child: Tooltip(
                message: '${fullDate(u.date)}: ${u.severity}/4',
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 1.5),
                  height: (box.maxHeight - 4) * (0.12 + u.severity / 4 * 0.88),
                  decoration: BoxDecoration(
                    color: skinSeverityColor(u.severity),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

// ─── New / edit condition ────────────────────────────────────────────────

class _ConditionDialog extends StatefulWidget {
  final SkinCondition? existing;
  const _ConditionDialog({this.existing});

  @override
  State<_ConditionDialog> createState() => _ConditionDialogState();
}

class _ConditionDialogState extends State<_ConditionDialog> {
  late final _nameCtrl = TextEditingController(text: widget.existing?.name);
  late final _notesCtrl = TextEditingController(text: widget.existing?.notes);
  late String? _area = widget.existing?.bodyArea;
  late DateTime _start = widget.existing?.startDate ?? DateTime.now();
  late bool _remind = widget.existing?.remindDaily ?? true;
  late int _reminderMinutes = widget.existing?.reminderMinutes ?? 19 * 60;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final reminderTime = TimeOfDay(
      hour: _reminderMinutes ~/ 60,
      minute: _reminderMinutes % 60,
    );
    return AlertDialog(
      title: Text(widget.existing == null ? l.skinNew : l.skinEdit),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.existing == null) ...[
              Wrap(
                spacing: 6,
                runSpacing: 4,
                children: [
                  for (final s in skinConditionSuggestions(l))
                    ActionChip(
                      label: Text(s, style: const TextStyle(fontSize: 12)),
                      onPressed: () => setState(() => _nameCtrl.text = s),
                    ),
                ],
              ),
              const SizedBox(height: 10),
            ],
            TextField(
              controller: _nameCtrl,
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(labelText: l.skinName),
              onChanged: (_) => setState(() {}),
            ),
            const SizedBox(height: 12),
            Text(l.skinBodyArea, style: Theme.of(context).textTheme.labelSmall),
            const SizedBox(height: 4),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: [
                for (final a in skinBodyAreas(l))
                  ChoiceChip(
                    label: Text(a, style: const TextStyle(fontSize: 12)),
                    selected: _area == a,
                    onSelected: (sel) => setState(() => _area = sel ? a : null),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const AppIcon(
                AppIcons.calendar,
                style: AppIconStyle.line,
              ),
              title: Text(l.skinBegan),
              subtitle: Text(fullDate(_start)),
              onTap: () async {
                final p = await showDatePicker(
                  context: context,
                  initialDate: _start,
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                );
                if (p != null) setState(() => _start = p);
              },
            ),
            SwitchListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(l.skinRemindDaily),
              value: _remind,
              onChanged: (v) => setState(() => _remind = v),
            ),
            if (_remind)
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const AppIcon(AppIcons.time, style: AppIconStyle.line),
                title: Text(l.skinReminderTime),
                trailing: Text(reminderTime.format(context)),
                onTap: () async {
                  final t = await showTimePicker(
                    context: context,
                    initialTime: reminderTime,
                  );
                  if (t != null) {
                    setState(() => _reminderMinutes = t.hour * 60 + t.minute);
                  }
                },
              ),
            TextField(
              controller: _notesCtrl,
              maxLines: 2,
              decoration: InputDecoration(labelText: l.milestoneNotes),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(l.actionCancel),
        ),
        FilledButton(
          onPressed: _nameCtrl.text.trim().isEmpty
              ? null
              : () => Navigator.pop(
                  context,
                  SkinCondition(
                    id: widget.existing?.id,
                    name: _nameCtrl.text.trim(),
                    bodyArea: _area,
                    startDate: _start,
                    endDate: widget.existing?.endDate,
                    notes: _notesCtrl.text.trim().isEmpty
                        ? null
                        : _notesCtrl.text.trim(),
                    remindDaily: _remind,
                    reminderMinutes: _reminderMinutes,
                    updates: widget.existing?.updates,
                  ),
                ),
          child: Text(l.actionSave),
        ),
      ],
    );
  }
}

// ─── Daily update form ───────────────────────────────────────────────────

class _UpdateForm extends StatefulWidget {
  final String babyId;
  final SkinUpdate? existing;

  /// Pre-fills severity and treatment from the last update, since they
  /// usually carry over day to day.
  final SkinUpdate? previous;

  const _UpdateForm({required this.babyId, this.existing, this.previous});

  @override
  State<_UpdateForm> createState() => _UpdateFormState();
}

class _UpdateFormState extends State<_UpdateForm> {
  late final _notesCtrl = TextEditingController(text: widget.existing?.notes);
  late final _treatmentCtrl = TextEditingController(
    text: widget.existing?.treatment ?? widget.previous?.treatment,
  );
  late int _severity =
      widget.existing?.severity ?? widget.previous?.severity ?? 1;
  late DateTime _date = widget.existing?.date ?? DateTime.now();
  late String? _photo = widget.existing?.photoPath;

  /// Photos added in this session but not (yet) saved — deleted on cancel.
  final _unsavedPhotos = <String>[];
  bool _saved = false;

  @override
  void dispose() {
    _notesCtrl.dispose();
    _treatmentCtrl.dispose();
    if (!_saved) {
      for (final p in _unsavedPhotos) {
        PhotoStore.delete(p);
      }
    }
    super.dispose();
  }

  Future<void> _pickPhoto() async {
    final rel = await PhotoStore.pickAndStore(
      context,
      babyId: widget.babyId,
      kind: 'skin',
    );
    if (rel == null) return;
    setState(() {
      _unsavedPhotos.add(rel);
      _photo = rel;
    });
  }

  void _save() {
    _saved = true;
    // Photos replaced during this edit (other than the one kept) are dropped.
    for (final p in _unsavedPhotos) {
      if (p != _photo) PhotoStore.delete(p);
    }
    final previousPhoto = widget.existing?.photoPath;
    if (previousPhoto != null && previousPhoto != _photo) {
      PhotoStore.delete(previousPhoto);
    }
    String? opt(TextEditingController c) =>
        c.text.trim().isEmpty ? null : c.text.trim();
    Navigator.pop(
      context,
      SkinUpdate(
        id: widget.existing?.id,
        date: _date,
        severity: _severity,
        notes: opt(_notesCtrl),
        treatment: opt(_treatmentCtrl),
        photoPath: _photo,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final colors = Theme.of(context).extension<AppColors>()!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l.skinUpdateTitle),
        titleTextStyle: Theme.of(
          context,
        ).appBarTheme.titleTextStyle?.copyWith(fontSize: 20),
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const AppIcon(AppIcons.calendar, style: AppIconStyle.line),
            title: Text(fullDate(_date)),
            onTap: () async {
              final p = await showDatePicker(
                context: context,
                initialDate: _date,
                firstDate: DateTime(2000),
                lastDate: DateTime.now(),
              );
              if (p != null) setState(() => _date = p);
            },
          ),
          const SizedBox(height: 8),
          Text(l.skinSeverity, style: Theme.of(context).textTheme.labelLarge),
          const SizedBox(height: 6),
          PillSegmentedControl<int>(
            options: [
              for (var i = 0; i <= 4; i++)
                PillSegmentedOption(value: i, label: '$i'),
            ],
            selected: _severity,
            onChanged: (v) => setState(() => _severity = v),
          ),
          const SizedBox(height: 4),
          Text(
            skinSeverityLabel(_severity, l),
            style: TextStyle(
              color: skinSeverityColor(_severity),
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _treatmentCtrl,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              labelText: l.skinTreatment,
              hintText: l.skinTreatmentHint,
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _notesCtrl,
            maxLines: 3,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(labelText: l.milestoneNotes),
          ),
          const SizedBox(height: 16),
          if (_photo != null)
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: LocalPhoto(_photo!),
                  ),
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: IconButton.filledTonal(
                    tooltip: l.actionDelete,
                    icon: const AppIcon(
                      AppIcons.close,
                      style: AppIconStyle.line,
                    ),
                    onPressed: () => setState(() => _photo = null),
                  ),
                ),
              ],
            ),
          const SizedBox(height: 8),
          OutlinedButton.icon(
            onPressed: _pickPhoto,
            icon: AppAvatar(
              AppIcons.rash,
              strong: colors.temperatureStrong,
              soft: colors.temperatureSoft,
              size: 24,
            ),
            label: Text(_photo == null ? l.skinAddPhoto : l.photoReplace),
          ),
          const SizedBox(height: 24),
          GradientPillButton(label: l.actionSave, onPressed: _save),
        ],
      ),
    );
  }
}
