import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/models/medication_course.dart';
import 'package:simple_baby_tracker/services/medication_stats.dart';
import 'package:simple_baby_tracker/services/notification.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';
import 'package:simple_baby_tracker/widgets/entry_row.dart';
import 'package:simple_baby_tracker/widgets/gradient_pill_button.dart';

class MedicationsPage extends StatefulWidget {
  final String babyId;
  final Map<String, List<TrackerEvent>> data;

  const MedicationsPage({super.key, required this.babyId, required this.data});

  @override
  State<MedicationsPage> createState() => _MedicationsPageState();
}

class _MedicationsPageState extends State<MedicationsPage>
    with SingleTickerProviderStateMixin {
  List<MedicationCourse> _courses = [];
  bool _loading = true;
  late final TabController _tabs;

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
    final loaded = await Storage.loadMedicationCourses(widget.babyId);
    if (mounted) {
      setState(() {
        _courses = loaded..sort((a, b) => b.startDate.compareTo(a.startDate));
        _loading = false;
      });
    }
  }

  Future<void> _save() async {
    await Storage.saveMedicationCourses(widget.babyId, _courses);
  }

  Future<void> _rescheduleReminder(MedicationCourse course) async {
    if (!course.remind || !course.isActive) {
      await NotificationService.instance.cancelMedicationReminder(course.id);
      return;
    }
    final stats = computeDoseStats(course, widget.data);
    final anchor = stats.lastGiven ?? course.startDate;
    if (course.intervalHours == null) {
      await NotificationService.instance.cancelMedicationReminder(course.id);
      return;
    }
    if (!await NotificationService.instance.init()) return;
    await NotificationService.instance.scheduleMedicationReminder(
      courseId: course.id,
      name: course.name,
      when: anchor.add(Duration(hours: course.intervalHours!)),
    );
  }

  Future<void> _showCourseDialog({MedicationCourse? existing}) async {
    final l = AppLocalizations.of(context)!;
    final nameCtrl = TextEditingController(text: existing?.name ?? '');
    final reasonCtrl = TextEditingController(text: existing?.reason ?? '');
    final doseCtrl = TextEditingController(
      text: existing != null ? existing.dose.toString() : '',
    );
    final intervalCtrl = TextEditingController(
      text: existing?.intervalHours?.toString() ?? '',
    );
    final maxCtrl = TextEditingController(
      text: existing?.maxPerDay?.toString() ?? '',
    );
    final notesCtrl = TextEditingController(text: existing?.notes ?? '');
    String unit = existing?.unit ?? 'ml';
    bool remind = existing?.remind ?? false;
    String? selectedPreset;

    final result = await showDialog<MedicationCourse>(
      context: context,
      builder: (ctx) => StatefulBuilder(
        builder: (ctx, set) => AlertDialog(
          title: Text(
            existing != null ? l.medicationEditCourse : l.medicationNewCourse,
          ),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (existing == null) ...[
                  Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: commonMedicationNames.map((name) {
                      final selected = selectedPreset == name;
                      return ChoiceChip(
                        label: Text(name, style: const TextStyle(fontSize: 12)),
                        selected: selected,
                        onSelected: (_) => set(() {
                          selectedPreset = selected ? null : name;
                          if (!selected) nameCtrl.text = name;
                        }),
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 10),
                ],
                TextField(
                  controller: nameCtrl,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: l.medicationNameRequired,
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: reasonCtrl,
                  decoration: InputDecoration(
                    labelText: l.medicationReasonOptional,
                    border: const OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: doseCtrl,
                        keyboardType: const TextInputType.numberWithOptions(
                          decimal: true,
                        ),
                        decoration: InputDecoration(
                          labelText: l.medicationDose,
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    DropdownButton<String>(
                      value: unit,
                      items: medicationDoseUnits
                          .map(
                            (u) => DropdownMenuItem(value: u, child: Text(u)),
                          )
                          .toList(),
                      onChanged: (v) => set(() => unit = v ?? 'ml'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: intervalCtrl,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: l.medicationIntervalHoursOptional,
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: maxCtrl,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: l.medicationMaxPerDayOptional,
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(l.medicationRemindNextDose),
                  value: remind,
                  onChanged: (v) => set(() => remind = v),
                ),
                TextField(
                  controller: notesCtrl,
                  maxLines: 2,
                  decoration: InputDecoration(
                    labelText: l.medicationNotesOptional,
                    border: const OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(l.actionCancel),
            ),
            FilledButton(
              onPressed: () {
                if (nameCtrl.text.trim().isEmpty) return;
                final dose = double.tryParse(doseCtrl.text) ?? 0;
                Navigator.pop(
                  ctx,
                  MedicationCourse(
                    id: existing?.id,
                    name: nameCtrl.text.trim(),
                    reason: reasonCtrl.text.trim().isEmpty
                        ? null
                        : reasonCtrl.text.trim(),
                    dose: dose,
                    unit: unit,
                    intervalHours: int.tryParse(intervalCtrl.text),
                    maxPerDay: int.tryParse(maxCtrl.text),
                    startDate: existing?.startDate ?? DateTime.now(),
                    endDate: existing?.endDate,
                    result: existing?.result ?? MedicationResult.none,
                    sideEffects: existing?.sideEffects,
                    notes: notesCtrl.text.trim().isEmpty
                        ? null
                        : notesCtrl.text.trim(),
                    remind: remind,
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
    reasonCtrl.dispose();
    doseCtrl.dispose();
    intervalCtrl.dispose();
    maxCtrl.dispose();
    notesCtrl.dispose();

    if (result != null) {
      if (existing != null) {
        final i = _courses.indexWhere((c) => c.id == existing.id);
        if (i != -1) _courses[i] = result;
      } else {
        _courses.add(result);
      }
      _courses.sort((a, b) => b.startDate.compareTo(a.startDate));
      await _save();
      await _rescheduleReminder(result);
      if (mounted) setState(() {});
    }
  }

  Future<void> _endCourse(MedicationCourse course) async {
    final l = AppLocalizations.of(context)!;
    final result = await showDialog<MedicationResult>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l.medicationEndCourseTitle(course.name)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l.medicationEndCoursePrompt),
            const SizedBox(height: 8),
            ...MedicationResult.values
                .where((r) => r != MedicationResult.none)
                .map(
                  (r) => ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(_resultLabel(r, l)),
                    onTap: () => Navigator.pop(ctx, r),
                  ),
                ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: Text(l.actionCancel),
          ),
        ],
      ),
    );
    if (result == null) return;
    course.endDate = DateTime.now();
    course.result = result;
    await _save();
    await NotificationService.instance.cancelMedicationReminder(course.id);
    if (mounted) setState(() {});
  }

  Future<void> _delete(MedicationCourse course) async {
    final l = AppLocalizations.of(context)!;
    final ok = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(l.medicationDeleteCourseTitle),
        content: Text(l.cannotUndo),
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
      _courses.removeWhere((c) => c.id == course.id);
      await _save();
      await NotificationService.instance.cancelMedicationReminder(course.id);
      if (mounted) setState(() {});
    }
  }

  String _resultLabel(MedicationResult r, AppLocalizations l) => switch (r) {
    MedicationResult.worked => l.medicationResultWorked,
    MedicationResult.partlyWorked => l.medicationResultPartlyWorked,
    MedicationResult.didntWork => l.medicationResultDidntWork,
    MedicationResult.sideEffects => l.medicationResultSideEffects,
    MedicationResult.none => l.medicationResultNone,
  };

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final active = _courses.where((c) => c.isActive).toList();
    final past = _courses.where((c) => !c.isActive).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(l.medicationsTitle),
        bottom: TabBar(
          controller: _tabs,
          tabs: [
            Tab(text: l.medicationActiveTab(active.length)),
            Tab(text: l.medicationPastTab(past.length)),
          ],
        ),
      ),
      floatingActionButton: GradientFab(
        onPressed: () => _showCourseDialog(),
        tooltip: l.medicationNewCourse,
      ),
      body: _loading
          ? const Center(child: CircularProgressIndicator())
          : TabBarView(
              controller: _tabs,
              children: [
                _CourseList(
                  courses: active,
                  data: widget.data,
                  l: l,
                  resultLabel: _resultLabel,
                  onEdit: (c) => _showCourseDialog(existing: c),
                  onEnd: _endCourse,
                  onDelete: _delete,
                  emptyIcon: AppIcons.medications,
                  emptyMessage: l.medicationNoActiveCourses,
                ),
                _CourseList(
                  courses: past,
                  data: widget.data,
                  l: l,
                  resultLabel: _resultLabel,
                  onEdit: (c) => _showCourseDialog(existing: c),
                  onEnd: null,
                  onDelete: _delete,
                  emptyIcon: AppIcons.time,
                  emptyMessage: l.medicationNoPastCourses,
                ),
              ],
            ),
    );
  }
}

class _CourseList extends StatelessWidget {
  final List<MedicationCourse> courses;
  final Map<String, List<TrackerEvent>> data;
  final AppLocalizations l;
  final String Function(MedicationResult, AppLocalizations) resultLabel;
  final void Function(MedicationCourse) onEdit;
  final void Function(MedicationCourse)? onEnd;
  final void Function(MedicationCourse) onDelete;
  final String emptyIcon;
  final String emptyMessage;

  const _CourseList({
    required this.courses,
    required this.data,
    required this.l,
    required this.resultLabel,
    required this.onEdit,
    required this.onEnd,
    required this.onDelete,
    required this.emptyIcon,
    required this.emptyMessage,
  });

  @override
  Widget build(BuildContext context) {
    if (courses.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppIcon(emptyIcon, size: 56, color: Colors.grey.shade400),
            const SizedBox(height: 12),
            Text(
              emptyMessage,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ],
        ),
      );
    }

    final colors = Theme.of(context).extension<AppColors>()!;

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 96),
      itemCount: courses.length,
      itemBuilder: (context, i) {
        final c = courses[i];
        final stats = computeDoseStats(c, data);
        final subtitleParts = <String>[
          l.medicationTimesGiven(stats.timesGiven),
          if (stats.lastGiven != null)
            l.medicationLastGivenShort(fullDate(stats.lastGiven!)),
          if (c.isActive && stats.nextDue != null)
            l.medicationNextDueShort(formatTime(stats.nextDue!)),
          if (!c.isActive) resultLabel(c.result, l),
        ];

        return Dismissible(
          key: ValueKey(c.id),
          direction: DismissDirection.endToStart,
          confirmDismiss: (_) async => showDialog<bool>(
            context: context,
            builder: (_) => AlertDialog(
              title: Text(l.medicationDeleteCourseTitle),
              content: Text(l.cannotUndo),
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
          ),
          onDismissed: (_) => onDelete(c),
          background: Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.error,
              borderRadius: BorderRadius.circular(18),
            ),
            child: AppIcon(
              AppIcons.delete,
              style: AppIconStyle.line,
              color: Theme.of(context).colorScheme.onError,
            ),
          ),
          child: EntryRow(
            margin: const EdgeInsets.symmetric(vertical: 5),
            icon: AppIcons.medication,
            color: colors.medicationStrong,
            softColor: colors.medicationSoft,
            title: c.reason != null ? '${c.name} · ${c.reason}' : c.name,
            subtitle: subtitleParts.join('  •  '),
            trailing: PopupMenuButton<String>(
              onSelected: (v) {
                if (v == 'edit') onEdit(c);
                if (v == 'end') onEnd?.call(c);
              },
              itemBuilder: (ctx) => [
                PopupMenuItem(value: 'edit', child: Text(l.actionEdit)),
                if (onEnd != null)
                  PopupMenuItem(
                    value: 'end',
                    child: Text(l.medicationEndCourse),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
