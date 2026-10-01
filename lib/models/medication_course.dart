import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/main.dart';

/// How a course of medication turned out — set once there's enough doses to
/// judge, or when the course ends.
enum MedicationResult {
  none,
  worked,
  partlyWorked,
  didntWork,
  sideEffects;

  static MedicationResult fromName(String? name) => MedicationResult.values
      .firstWhere((r) => r.name == name, orElse: () => MedicationResult.none);
}

/// A course of medication — the "why, how much, how often, for how long, did
/// it work" record a parent asks for, as distinct from the individual dose
/// logs (still plain `TrackerEvent`s of type `'medication'`, each carrying
/// this course's [id] in `data['courseId']`) that make up "times given".
class MedicationCourse {
  final String id;
  String name;
  String? reason;
  double dose;
  String unit; // 'ml' | 'mg' | 'drops' | 'tablets'

  /// How often a dose may be repeated, e.g. every 6 hours. Null means "as
  /// needed" — no interval to warn about.
  int? intervalHours;

  /// A soft ceiling on doses per calendar day, e.g. max 4 doses of
  /// acetaminophen/day. Null means no limit tracked.
  int? maxPerDay;

  DateTime startDate;

  /// Null while the course is ongoing; set when the parent ends it.
  DateTime? endDate;

  MedicationResult result;
  String? sideEffects;
  String? notes;

  /// Whether a "next dose due" notification should be scheduled from the
  /// last logged dose + [intervalHours].
  bool remind;

  MedicationCourse({
    String? id,
    required this.name,
    this.reason,
    required this.dose,
    required this.unit,
    this.intervalHours,
    this.maxPerDay,
    DateTime? startDate,
    this.endDate,
    this.result = MedicationResult.none,
    this.sideEffects,
    this.notes,
    this.remind = false,
  }) : id = id ?? uuid.v4(),
       startDate = startDate ?? DateTime.now();

  bool get isActive => endDate == null;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'reason': reason,
    'dose': dose,
    'unit': unit,
    'intervalHours': intervalHours,
    'maxPerDay': maxPerDay,
    'startDate': startDate.toIso8601String(),
    'endDate': endDate?.toIso8601String(),
    'result': result.name,
    'sideEffects': sideEffects,
    'notes': notes,
    'remind': remind,
  };

  factory MedicationCourse.fromJson(Map<String, dynamic> j) => MedicationCourse(
    id: j['id'] as String,
    name: j['name'] as String,
    reason: j['reason'] as String?,
    dose: (j['dose'] as num?)?.toDouble() ?? 0,
    unit: j['unit'] as String? ?? 'ml',
    intervalHours: j['intervalHours'] as int?,
    maxPerDay: j['maxPerDay'] as int?,
    startDate: j['startDate'] != null
        ? DateTime.parse(j['startDate'] as String)
        : DateTime.now(),
    endDate: j['endDate'] != null
        ? DateTime.parse(j['endDate'] as String)
        : null,
    result: MedicationResult.fromName(j['result'] as String?),
    sideEffects: j['sideEffects'] as String?,
    notes: j['notes'] as String?,
    remind: j['remind'] as bool? ?? false,
  );
}

/// A handful of common over-the-counter medications, offered as quick-pick
/// chips when starting a new course.
List<String> commonMedicationNames(AppLocalizations l) => [
  'Tylenol / Panadol',
  'Advil / Nurofen',
  'Infacol',
  l.medSuggestGripeWater,
  l.medSuggestVitaminD,
  l.medSuggestIronDrops,
  l.medSuggestAntibiotic,
  l.medSuggestProbiotic,
];

const medicationDoseUnits = ['ml', 'mg', 'drops', 'tablets'];
