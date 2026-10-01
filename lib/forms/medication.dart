import 'package:flutter/material.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/labels.dart';
import 'package:simple_baby_tracker/models/medication_course.dart';
import 'package:simple_baby_tracker/services/medication_stats.dart';
import 'package:simple_baby_tracker/theme/app_icons.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_form_scaffold.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';
import 'package:simple_baby_tracker/widgets/pill_segmented_control.dart';

class MedicationForm extends StatefulWidget {
  final DateTime initialDate;
  final TrackerEvent? existingEvent;

  /// Ongoing courses, offered as quick-pick chips so a routine dose takes
  /// one tap instead of retyping the name/dose/unit every time.
  final List<MedicationCourse> activeCourses;

  /// The full (all-days) event map, used only to show "last given Xh ago"
  /// and today's dose count against whichever course is selected.
  final Map<String, List<TrackerEvent>> data;

  final VoidCallback? onManageCourses;

  const MedicationForm({
    super.key,
    required this.initialDate,
    this.existingEvent,
    this.activeCourses = const [],
    this.data = const {},
    this.onManageCourses,
  });

  @override
  State<MedicationForm> createState() => _MedicationFormState();
}

class _MedicationFormState extends State<MedicationForm> {
  final _nameCtrl = TextEditingController();
  final _doseCtrl = TextEditingController();
  final _notesCtrl = TextEditingController();
  String _unit = 'ml';
  TimeOfDay _time = TimeOfDay.now();
  String? _courseId;
  bool get _isEditing => widget.existingEvent != null;

  @override
  void initState() {
    super.initState();
    final e = widget.existingEvent;
    if (e != null) {
      _nameCtrl.text = e.data['name'] as String? ?? '';
      _doseCtrl.text = e.data['dose']?.toString() ?? '';
      _unit = e.data['unit'] as String? ?? 'ml';
      _notesCtrl.text = e.data['notes'] as String? ?? '';
      _courseId = e.data['courseId'] as String?;
      _time = TimeOfDay(hour: e.time.hour, minute: e.time.minute);
    }
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _doseCtrl.dispose();
    _notesCtrl.dispose();
    super.dispose();
  }

  MedicationCourse? get _selectedCourse {
    if (_courseId == null) return null;
    for (final c in widget.activeCourses) {
      if (c.id == _courseId) return c;
    }
    return null;
  }

  void _pickCourse(MedicationCourse course) {
    setState(() {
      _courseId = course.id;
      _nameCtrl.text = course.name;
      _doseCtrl.text = _formatDose(course.dose);
      _unit = course.unit;
    });
  }

  static String _formatDose(double d) =>
      d == d.roundToDouble() ? d.toInt().toString() : d.toString();

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    final course = _selectedCourse;
    final stats = course == null ? null : computeDoseStats(course, widget.data);

    return AppFormScaffold(
      title: _isEditing ? l.medicationEditTitle : l.medicationLogTitle,
      time: _time,
      onTimeChanged: (t) => setState(() => _time = t),
      ctaLabel: _isEditing ? l.actionUpdate : l.actionSave,
      onSubmit: _save,
      ctaEnabled: _nameCtrl.text.trim().isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.activeCourses.isNotEmpty) ...[
            Row(
              children: [
                Text(
                  l.medicationYourCourses,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const Spacer(),
                if (widget.onManageCourses != null)
                  TextButton(
                    onPressed: widget.onManageCourses,
                    child: Text(l.medicationManageCourses),
                  ),
              ],
            ),
            const SizedBox(height: 4),
            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: widget.activeCourses.map((c) {
                final selected = c.id == _courseId;
                return ChoiceChip(
                  label: Text(
                    '${c.name} · ${_formatDose(c.dose)}${c.unit}',
                    style: const TextStyle(fontSize: 12),
                  ),
                  selected: selected,
                  onSelected: (_) => _pickCourse(c),
                );
              }).toList(),
            ),
            const SizedBox(height: 12),
          ],

          // Custom name field
          TextField(
            controller: _nameCtrl,
            textCapitalization: TextCapitalization.sentences,
            decoration: InputDecoration(
              labelText: l.medicationNameRequired,
              border: const OutlineInputBorder(),
              isDense: true,
            ),
            onChanged: (v) {
              setState(() {
                // A hand-edited name no longer matches the picked course,
                // so stop attributing this dose (and its warnings) to it.
                if (course != null && v != course.name) _courseId = null;
              });
            },
          ),

          const SizedBox(height: 12),

          // Dose + unit
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: TextField(
                  controller: _doseCtrl,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  decoration: InputDecoration(
                    labelText: l.medicationDose,
                    border: const OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                flex: 3,
                child: PillSegmentedControl<String>(
                  options: medicationDoseUnits
                      .map(
                        (u) => PillSegmentedOption(
                          value: u,
                          label: doseUnitLabel(u, l),
                        ),
                      )
                      .toList(),
                  selected: _unit,
                  onChanged: (v) => setState(() => _unit = v),
                ),
              ),
            ],
          ),

          if (stats != null) ...[
            const SizedBox(height: 12),
            _DoseStatusCard(course: course!, stats: stats, l: l),
          ],

          const SizedBox(height: 12),

          // Warning banner for common OTC pain relievers
          if (_nameCtrl.text.toLowerCase().contains('tylenol') ||
              _nameCtrl.text.toLowerCase().contains('panadol') ||
              _nameCtrl.text.toLowerCase().contains('advil') ||
              _nameCtrl.text.toLowerCase().contains('nurofen') ||
              _nameCtrl.text.toLowerCase().contains('ibuprofen'))
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Colors.orange.withAlpha(30),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.orange.withAlpha(80)),
              ),
              child: Row(
                children: [
                  const AppIcon(
                    AppIcons.warning,
                    style: AppIconStyle.line,
                    color: Colors.orange,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      l.medicationDosageWarning,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.orange,
                      ),
                    ),
                  ),
                ],
              ),
            ),

          TextField(
            controller: _notesCtrl,
            decoration: InputDecoration(
              labelText: l.medicationNotesOptional,
              hintText: l.medicationNotesHint,
              border: const OutlineInputBorder(),
              isDense: true,
            ),
          ),
        ],
      ),
    );
  }

  void _save() {
    final d = widget.initialDate;
    final dt = DateTime(d.year, d.month, d.day, _time.hour, _time.minute);
    Navigator.pop(
      context,
      TrackerEvent(
        id: widget.existingEvent?.id,
        type: 'medication',
        time: dt,
        data: {
          'name': _nameCtrl.text.trim(),
          'dose': double.tryParse(_doseCtrl.text) ?? 0,
          'unit': _unit,
          'courseId': ?_courseId,
          'notes': _notesCtrl.text.trim().isEmpty
              ? null
              : _notesCtrl.text.trim(),
        },
      ),
    );
  }
}

/// "Last given" / next-due / today's-count read-out shown once a dose is
/// tied to a course — the same numbers a warning about dosing too soon or
/// too often is based on.
class _DoseStatusCard extends StatelessWidget {
  final MedicationCourse course;
  final MedicationDoseStats stats;
  final AppLocalizations l;

  const _DoseStatusCard({
    required this.course,
    required this.stats,
    required this.l,
  });

  @override
  Widget build(BuildContext context) {
    final warnEarly =
        course.intervalHours != null &&
        stats.lastGiven != null &&
        DateTime.now().isBefore(
          stats.lastGiven!.add(Duration(hours: course.intervalHours!)),
        );
    final warnMax = stats.overMaxToday(course);
    final warn = warnEarly || warnMax;

    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: (warn ? Colors.orange : Theme.of(context).colorScheme.primary)
            .withAlpha(warn ? 30 : 18),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: (warn ? Colors.orange : Theme.of(context).colorScheme.primary)
              .withAlpha(80),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (stats.lastGiven != null)
            Text(l.medicationLastGivenAgo(timeAgo(stats.lastGiven!, l)))
          else
            Text(l.medicationNeverGiven),
          Text(l.medicationDosesToday(stats.dosesToday)),
          if (warnEarly)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                l.medicationTooSoonWarning(course.intervalHours!),
                style: const TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          if (warnMax)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                l.medicationMaxPerDayWarning(course.maxPerDay!),
                style: const TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
