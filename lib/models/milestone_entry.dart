import 'package:simple_baby_tracker/main.dart';

/// A baby milestone — either a preset developmental one or a custom one.
class MilestoneEntry {
  final String id;
  String title;
  DateTime date;
  String? notes;

  /// If true, [title] is a preset key (e.g. 'first_smile') that should be
  /// looked up via l10n. If false, [title] is a free-form user string.
  final bool isPreset;

  MilestoneEntry({
    String? id,
    required this.title,
    required this.date,
    this.notes,
    this.isPreset = false,
  }) : id = id ?? uuid.v4();

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'date': date.toIso8601String(),
    'notes': notes,
    'isPreset': isPreset,
  };

  factory MilestoneEntry.fromJson(Map<String, dynamic> j) => MilestoneEntry(
    id: j['id'] as String,
    title: j['title'] as String,
    date: DateTime.parse(j['date'] as String),
    notes: j['notes'] as String?,
    isPreset: j['isPreset'] as bool? ?? false,
  );
}

/// All preset milestone keys in recommended order.
/// These are looked up as l10n strings in the milestones page.
const presetMilestoneKeys = [
  'first_smile',
  'first_laugh',
  'first_tooth',
  'rolled_back_to_tummy',
  'rolled_tummy_to_back',
  'sat_unsupported',
  'started_crawling',
  'pulled_to_stand',
  'first_steps',
  'first_word',
  'first_solid_food',
  'first_haircut',
  'slept_through_night',
  'waved_bye',
  'clapped_hands',
  'first_birthday',
];
