import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/models/medication_course.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

/// Everything the Medications page and the dose form need about how a
/// [MedicationCourse] has actually been used — computed from the plain
/// `'medication'` dose-log events that carry the course's id in
/// `data['courseId']`, rather than kept as separate counters that could
/// drift out of sync with the logged doses themselves.
class MedicationDoseStats {
  final int timesGiven;
  final DateTime? lastGiven;
  final DateTime? nextDue;
  final int dosesToday;

  const MedicationDoseStats({
    required this.timesGiven,
    required this.lastGiven,
    required this.nextDue,
    required this.dosesToday,
  });

  bool get isOverdue => nextDue != null && nextDue!.isBefore(DateTime.now());

  bool overMaxToday(MedicationCourse course) =>
      course.maxPerDay != null && dosesToday >= course.maxPerDay!;
}

/// All dose events (across every day) logged against [course], oldest first.
List<TrackerEvent> dosesFor(
  MedicationCourse course,
  Map<String, List<TrackerEvent>> data,
) {
  final doses =
      data.values
          .expand((events) => events)
          .where((e) => e.type == 'medication' && e.data['courseId'] == course.id)
          .toList()
        ..sort((a, b) => a.time.compareTo(b.time));
  return doses;
}

MedicationDoseStats computeDoseStats(
  MedicationCourse course,
  Map<String, List<TrackerEvent>> data,
) {
  final doses = dosesFor(course, data);
  final lastGiven = doses.isEmpty ? null : doses.last.time;
  final nextDue = (lastGiven != null && course.intervalHours != null)
      ? lastGiven.add(Duration(hours: course.intervalHours!))
      : null;
  final todayKey = dateKey(DateTime.now());
  final dosesToday = doses.where((d) => dateKey(d.time) == todayKey).length;
  return MedicationDoseStats(
    timesGiven: doses.length,
    lastGiven: lastGiven,
    nextDue: nextDue,
    dosesToday: dosesToday,
  );
}
