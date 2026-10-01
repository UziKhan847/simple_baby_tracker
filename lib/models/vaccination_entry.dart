import 'package:simple_baby_tracker/main.dart';

class VaccinationEntry {
  final String id;
  String name;
  DateTime date;
  String? brand;
  int? doseNumber;
  String? site;
  String? notes;

  VaccinationEntry({
    String? id,
    required this.name,
    required this.date,
    this.brand,
    this.doseNumber,
    this.site,
    this.notes,
  }) : id = id ?? uuid.v4();

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'date': date.toIso8601String(),
    'brand': brand,
    'doseNumber': doseNumber,
    'site': site,
    'notes': notes,
  };

  factory VaccinationEntry.fromJson(Map<String, dynamic> j) => VaccinationEntry(
    id: j['id'] as String,
    name: j['name'] as String,
    date: DateTime.parse(j['date'] as String),
    brand: j['brand'] as String?,
    doseNumber: j['doseNumber'] as int?,
    site: j['site'] as String?,
    notes: j['notes'] as String?,
  );
}

/// Standard vaccination schedule (WHO/CDC-aligned).
/// Each entry: { name, ageRange, ageMonths (approximate), annual? }.
/// `ageRange` is in months ('' = at birth) and is turned into a translated
/// label by `vaccineAgeLabel` in pages/vaccinations.dart. Names stay in
/// English: they're the standard vaccine names and abbreviations, and
/// logged vaccines are matched against them.
const vaccineSchedule = <Map<String, dynamic>>[
  {'name': 'Hepatitis B (HepB)', 'ageRange': '', 'ageMonths': 0},
  {'name': 'Hepatitis B (HepB) — Dose 2', 'ageRange': '1–2', 'ageMonths': 1},
  {'name': 'Rotavirus (RV)', 'ageRange': '2', 'ageMonths': 2},
  {
    'name': 'DTaP (Diphtheria, Tetanus, Pertussis)',
    'ageRange': '2',
    'ageMonths': 2,
  },
  {
    'name': 'Hib (Haemophilus influenzae type b)',
    'ageRange': '2',
    'ageMonths': 2,
  },
  {'name': 'PCV13 / PCV15 (Pneumococcal)', 'ageRange': '2', 'ageMonths': 2},
  {'name': 'IPV (Polio)', 'ageRange': '2', 'ageMonths': 2},
  {'name': 'Rotavirus (RV) — Dose 2', 'ageRange': '4', 'ageMonths': 4},
  {'name': 'DTaP — Dose 2', 'ageRange': '4', 'ageMonths': 4},
  {'name': 'Hib — Dose 2', 'ageRange': '4', 'ageMonths': 4},
  {'name': 'PCV — Dose 2', 'ageRange': '4', 'ageMonths': 4},
  {'name': 'IPV — Dose 2', 'ageRange': '4', 'ageMonths': 4},
  {'name': 'Rotavirus (RV) — Dose 3', 'ageRange': '6', 'ageMonths': 6},
  {'name': 'DTaP — Dose 3', 'ageRange': '6', 'ageMonths': 6},
  {'name': 'PCV — Dose 3', 'ageRange': '6', 'ageMonths': 6},
  {'name': 'Influenza (Flu)', 'ageRange': '6', 'annual': true, 'ageMonths': 6},
  {'name': 'Hepatitis B (HepB) — Dose 3', 'ageRange': '6–18', 'ageMonths': 6},
  {'name': 'Hib — Dose 3 or 4', 'ageRange': '12–15', 'ageMonths': 12},
  {'name': 'PCV — Dose 4', 'ageRange': '12–15', 'ageMonths': 12},
  {
    'name': 'MMR (Measles, Mumps, Rubella)',
    'ageRange': '12–15',
    'ageMonths': 12,
  },
  {'name': 'Varicella (Chickenpox)', 'ageRange': '12–15', 'ageMonths': 12},
  {'name': 'Hepatitis A (HepA) — Dose 1', 'ageRange': '12–23', 'ageMonths': 12},
  {'name': 'Hepatitis A (HepA) — Dose 2', 'ageRange': '18–23', 'ageMonths': 18},
  {'name': 'DTaP — Dose 4', 'ageRange': '15–18', 'ageMonths': 15},
  {'name': 'IPV — Dose 3', 'ageRange': '6–18', 'ageMonths': 18},
];
