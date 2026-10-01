import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/main.dart';

/// One day's check-in on a [SkinCondition]: how bad it looks, what was done
/// about it, and optionally a photo — the day-by-day record a parent can
/// show a doctor.
class SkinUpdate {
  final String id;
  DateTime date;

  /// 0 clear · 1 mild · 2 moderate · 3 severe · 4 very severe.
  int severity;
  String? notes;
  String? treatment;

  /// Relative to the app documents dir (see PhotoStore).
  String? photoPath;

  SkinUpdate({
    String? id,
    required this.date,
    required this.severity,
    this.notes,
    this.treatment,
    this.photoPath,
  }) : id = id ?? uuid.v4();

  Map<String, dynamic> toJson() => {
    'id': id,
    'date': date.toIso8601String(),
    'severity': severity,
    'notes': notes,
    'treatment': treatment,
    'photoPath': photoPath,
  };

  factory SkinUpdate.fromJson(Map<String, dynamic> j) => SkinUpdate(
    id: j['id'] as String,
    date: DateTime.parse(j['date'] as String),
    severity: (j['severity'] as num?)?.toInt() ?? 0,
    notes: j['notes'] as String?,
    treatment: j['treatment'] as String?,
    photoPath: j['photoPath'] as String?,
  );
}

/// A skin condition being followed over time (eczema patch, rash, cradle
/// cap, …), from the day it began until it's marked healed.
class SkinCondition {
  final String id;
  String name;
  String? bodyArea;
  DateTime startDate;

  /// Null while active; set when marked healed.
  DateTime? endDate;
  String? notes;

  /// Daily "how does it look today?" reminder while active.
  bool remindDaily;

  /// Reminder time of day, as minutes after midnight.
  int reminderMinutes;

  /// Oldest first.
  List<SkinUpdate> updates;

  SkinCondition({
    String? id,
    required this.name,
    this.bodyArea,
    required this.startDate,
    this.endDate,
    this.notes,
    this.remindDaily = true,
    this.reminderMinutes = 19 * 60,
    List<SkinUpdate>? updates,
  }) : id = id ?? uuid.v4(),
       updates = updates ?? [];

  bool get isActive => endDate == null;

  SkinUpdate? get latest => updates.isEmpty ? null : updates.last;

  bool get updatedToday {
    final today = dateKey(DateTime.now());
    return updates.any((u) => dateKey(u.date) == today);
  }

  /// The first and most recent photos, for side-by-side comparison.
  (SkinUpdate, SkinUpdate)? get firstAndLatestPhotos {
    final withPhotos = updates.where((u) => u.photoPath != null).toList();
    if (withPhotos.length < 2) return null;
    return (withPhotos.first, withPhotos.last);
  }

  void sortUpdates() => updates.sort((a, b) => a.date.compareTo(b.date));

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'bodyArea': bodyArea,
    'startDate': startDate.toIso8601String(),
    'endDate': endDate?.toIso8601String(),
    'notes': notes,
    'remindDaily': remindDaily,
    'reminderMinutes': reminderMinutes,
    'updates': updates.map((u) => u.toJson()).toList(),
  };

  factory SkinCondition.fromJson(Map<String, dynamic> j) => SkinCondition(
    id: j['id'] as String,
    name: j['name'] as String? ?? '',
    bodyArea: j['bodyArea'] as String?,
    startDate: DateTime.parse(j['startDate'] as String),
    endDate: j['endDate'] == null
        ? null
        : DateTime.parse(j['endDate'] as String),
    notes: j['notes'] as String?,
    remindDaily: j['remindDaily'] as bool? ?? true,
    reminderMinutes: (j['reminderMinutes'] as num?)?.toInt() ?? 19 * 60,
    updates: (j['updates'] as List? ?? [])
        .map((e) => SkinUpdate.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
  )..sortUpdates();
}

const skinConditionSuggestions = [
  'Eczema',
  'Diaper rash',
  'Cradle cap',
  'Baby acne',
  'Heat rash',
  'Dry skin',
  'Hives',
];

const skinBodyAreas = [
  'Face',
  'Scalp',
  'Neck',
  'Chest',
  'Back',
  'Arms',
  'Hands',
  'Diaper area',
  'Legs',
  'Feet',
];
