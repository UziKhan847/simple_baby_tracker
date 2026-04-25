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
/// Each entry: { name, ageLabel, ageMonths (approximate) }.
const vaccineSchedule = <Map<String, dynamic>>[
  {'name': 'Hepatitis B (HepB)', 'ageLabel': 'Birth', 'ageMonths': 0},
  {
    'name': 'Hepatitis B (HepB) — Dose 2',
    'ageLabel': '1–2 months',
    'ageMonths': 1,
  },
  {'name': 'Rotavirus (RV)', 'ageLabel': '2 months', 'ageMonths': 2},
  {
    'name': 'DTaP (Diphtheria, Tetanus, Pertussis)',
    'ageLabel': '2 months',
    'ageMonths': 2,
  },
  {
    'name': 'Hib (Haemophilus influenzae type b)',
    'ageLabel': '2 months',
    'ageMonths': 2,
  },
  {
    'name': 'PCV13 / PCV15 (Pneumococcal)',
    'ageLabel': '2 months',
    'ageMonths': 2,
  },
  {'name': 'IPV (Polio)', 'ageLabel': '2 months', 'ageMonths': 2},
  {'name': 'Rotavirus (RV) — Dose 2', 'ageLabel': '4 months', 'ageMonths': 4},
  {'name': 'DTaP — Dose 2', 'ageLabel': '4 months', 'ageMonths': 4},
  {'name': 'Hib — Dose 2', 'ageLabel': '4 months', 'ageMonths': 4},
  {'name': 'PCV — Dose 2', 'ageLabel': '4 months', 'ageMonths': 4},
  {'name': 'IPV — Dose 2', 'ageLabel': '4 months', 'ageMonths': 4},
  {'name': 'Rotavirus (RV) — Dose 3', 'ageLabel': '6 months', 'ageMonths': 6},
  {'name': 'DTaP — Dose 3', 'ageLabel': '6 months', 'ageMonths': 6},
  {'name': 'PCV — Dose 3', 'ageLabel': '6 months', 'ageMonths': 6},
  {'name': 'Influenza (Flu)', 'ageLabel': '6 months (annual)', 'ageMonths': 6},
  {
    'name': 'Hepatitis B (HepB) — Dose 3',
    'ageLabel': '6–18 months',
    'ageMonths': 6,
  },
  {'name': 'Hib — Dose 3 or 4', 'ageLabel': '12–15 months', 'ageMonths': 12},
  {'name': 'PCV — Dose 4', 'ageLabel': '12–15 months', 'ageMonths': 12},
  {
    'name': 'MMR (Measles, Mumps, Rubella)',
    'ageLabel': '12–15 months',
    'ageMonths': 12,
  },
  {
    'name': 'Varicella (Chickenpox)',
    'ageLabel': '12–15 months',
    'ageMonths': 12,
  },
  {
    'name': 'Hepatitis A (HepA) — Dose 1',
    'ageLabel': '12–23 months',
    'ageMonths': 12,
  },
  {
    'name': 'Hepatitis A (HepA) — Dose 2',
    'ageLabel': '18–23 months',
    'ageMonths': 18,
  },
  {'name': 'DTaP — Dose 4', 'ageLabel': '15–18 months', 'ageMonths': 15},
  {'name': 'IPV — Dose 3', 'ageLabel': '6–18 months', 'ageMonths': 18},
];
