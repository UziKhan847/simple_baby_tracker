import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_baby_tracker/app_settings.dart';
import 'package:simple_baby_tracker/baby_profile.dart';
import 'package:simple_baby_tracker/models/medication_course.dart';
import 'package:simple_baby_tracker/models/milestone_entry.dart';
import 'package:simple_baby_tracker/models/vaccination_entry.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class Storage {
  static const _kDataPrefix = 'baby_tracker_data_v3_';
  static const _kMilestonesPrefix = 'baby_tracker_milestones_';
  static const _kVaccinesPrefix = 'baby_tracker_vaccines_';
  static const _kMedicationsPrefix = 'baby_tracker_medication_courses_';
  static const _kLegacyKey = 'baby_tracker_data_v2';
  static const _kProfiles = 'baby_profiles';
  static const _kActiveProfile = 'active_baby_id';
  static const _kSettings = 'app_settings';

  // ─── Profiles ─────────────────────────────────────────────────────────────

  static Future<List<BabyProfile>> loadProfiles() async {
    final sp = await SharedPreferences.getInstance();
    final raw = sp.getString(_kProfiles);
    if (raw == null) return [];
    return (json.decode(raw) as List)
        .map((e) => BabyProfile.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
  }

  static Future<void> saveProfiles(List<BabyProfile> profiles) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString(
      _kProfiles,
      json.encode(profiles.map((p) => p.toJson()).toList()),
    );
  }

  static Future<String?> getActiveProfileId() async {
    final sp = await SharedPreferences.getInstance();
    return sp.getString(_kActiveProfile);
  }

  static Future<void> setActiveProfileId(String id) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString(_kActiveProfile, id);
  }

  // ─── Migration from v2 ────────────────────────────────────────────────────

  static Future<BabyProfile?> migrateIfNeeded() async {
    final sp = await SharedPreferences.getInstance();
    final legacy = sp.getString(_kLegacyKey);
    if (legacy == null) return null;

    final existing = await loadProfiles();
    if (existing.isNotEmpty) {
      await sp.remove(_kLegacyKey);
      return null;
    }

    final profile = BabyProfile(name: 'Baby');
    await saveProfiles([profile]);
    await setActiveProfileId(profile.id);
    await sp.setString('$_kDataPrefix${profile.id}', legacy);
    await sp.remove(_kLegacyKey);
    return profile;
  }

  // ─── Event data ───────────────────────────────────────────────────────────

  static Future<Map<String, List<TrackerEvent>>> loadAll(String babyId) async {
    final sp = await SharedPreferences.getInstance();
    final raw = sp.getString('$_kDataPrefix$babyId');
    if (raw == null) return {};

    final decoded = json.decode(raw) as Map<String, dynamic>;
    final out = <String, List<TrackerEvent>>{};
    for (final entry in decoded.entries) {
      out[entry.key] = (entry.value as List)
          .map(
            (e) => TrackerEvent.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList();
    }
    return out;
  }

  static Future<void> saveAll(
    String babyId,
    Map<String, List<TrackerEvent>> map,
  ) async {
    final sp = await SharedPreferences.getInstance();
    final encoded = map.map(
      (k, v) => MapEntry(k, v.map((e) => e.toJson()).toList()),
    );
    await sp.setString('$_kDataPrefix$babyId', json.encode(encoded));
  }

  /// Writes the full backup envelope — events *and* milestones, vaccinations
  /// and medication courses — so a JSON export/import round trip doesn't
  /// silently drop anything. The events themselves stay at the top level in
  /// the original `{dateKey: [event, ...]}` shape (under `"events"`) for
  /// compatibility with older exports, which [parseImportJson] below still
  /// reads directly as a bare `{dateKey: [...]}` map.
  static Future<File> exportToFile(
    String babyId,
    Map<String, List<TrackerEvent>> data,
  ) async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/baby_tracker_export_$babyId.json');
    final milestones = await loadMilestones(babyId);
    final vaccines = await loadVaccinations(babyId);
    final medications = await loadMedicationCourses(babyId);
    final envelope = {
      'version': 2,
      'events': data.map((k, v) => MapEntry(k, v.map((e) => e.toJson()).toList())),
      'milestones': milestones.map((m) => m.toJson()).toList(),
      'vaccinations': vaccines.map((v) => v.toJson()).toList(),
      'medicationCourses': medications.map((m) => m.toJson()).toList(),
    };
    await file.writeAsString(json.encode(envelope));
    return file;
  }

  /// Parses either shape a Baby Tracker export can be in: the legacy bare
  /// `{dateKey: [event, ...]}` map, or the `{"version": 2, "events": {...},
  /// "milestones": [...], ...}` envelope [exportToFile] now writes. Throws
  /// [FormatException] if [raw] is shaped like neither — callers should
  /// catch that and show the user an "invalid file" message rather than
  /// letting a raw parse exception surface.
  static ImportBundle parseImportJson(String raw) {
    final Object? decoded;
    try {
      decoded = json.decode(raw);
    } on FormatException {
      throw const FormatException('Not valid JSON');
    }
    if (decoded is! Map) {
      throw const FormatException('Expected a JSON object of date → events');
    }

    final isEnvelope = decoded.containsKey('events') && decoded['version'] != null;
    final eventsRaw = isEnvelope ? decoded['events'] : decoded;
    if (eventsRaw is! Map) {
      throw const FormatException('Expected a JSON object of date → events');
    }

    final events = <String, List<TrackerEvent>>{};
    for (final entry in eventsRaw.entries) {
      final value = entry.value;
      if (value is! List) {
        throw const FormatException('Expected a list of events per date');
      }
      events[entry.key as String] = value
          .map(
            (e) => TrackerEvent.fromJson(Map<String, dynamic>.from(e as Map)),
          )
          .toList();
    }

    if (!isEnvelope) return ImportBundle(events: events);

    final milestones = (decoded['milestones'] as List? ?? [])
        .map((e) => MilestoneEntry.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
    final vaccinations = (decoded['vaccinations'] as List? ?? [])
        .map((e) => VaccinationEntry.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList();
    final medicationCourses = (decoded['medicationCourses'] as List? ?? [])
        .map(
          (e) =>
              MedicationCourse.fromJson(Map<String, dynamic>.from(e as Map)),
        )
        .toList();

    return ImportBundle(
      events: events,
      milestones: milestones,
      vaccinations: vaccinations,
      medicationCourses: medicationCourses,
    );
  }

  /// Like [parseImportJson] but returns null instead of throwing — lets
  /// call sites branch on success/failure without needing a `try`/`catch`
  /// of their own or an import of [TrackerEvent] just to spell out the
  /// return type.
  static ImportBundle? tryParseImportJson(String raw) {
    try {
      return parseImportJson(raw);
    } on FormatException {
      return null;
    } catch (_) {
      return null;
    }
  }

  /// Applies [imported] to [babyId]'s stored data and returns the resulting
  /// events map.
  ///
  /// When [merge] is true, days already present keep their existing events
  /// and only gain events whose [TrackerEvent.id] isn't already there —
  /// re-importing the same file twice is a no-op rather than a duplicate —
  /// and milestones/vaccinations/medication courses are combined the same
  /// way, by id. When false, [imported] replaces the existing data outright
  /// in every one of those categories.
  static Future<Map<String, List<TrackerEvent>>> importData(
    String babyId,
    ImportBundle imported, {
    required bool merge,
  }) async {
    if (!merge) {
      await saveAll(babyId, imported.events);
      await saveMilestones(babyId, imported.milestones);
      await saveVaccinations(babyId, imported.vaccinations);
      await saveMedicationCourses(babyId, imported.medicationCourses);
      return imported.events;
    }

    final existingEvents = await loadAll(babyId);
    final mergedEvents = Map<String, List<TrackerEvent>>.from(existingEvents);
    for (final entry in imported.events.entries) {
      final current = mergedEvents[entry.key] ?? [];
      final existingIds = current.map((e) => e.id).toSet();
      mergedEvents[entry.key] = [
        ...current,
        ...entry.value.where((e) => !existingIds.contains(e.id)),
      ];
    }
    await saveAll(babyId, mergedEvents);

    Future<void> mergeById<T>(
      Future<List<T>> Function() load,
      Future<void> Function(List<T>) save,
      List<T> incoming,
      String Function(T) idOf,
    ) async {
      if (incoming.isEmpty) return;
      final current = await load();
      final existingIds = current.map(idOf).toSet();
      await save([
        ...current,
        ...incoming.where((e) => !existingIds.contains(idOf(e))),
      ]);
    }

    await mergeById<MilestoneEntry>(
      () => loadMilestones(babyId),
      (v) => saveMilestones(babyId, v),
      imported.milestones,
      (m) => m.id,
    );
    await mergeById<VaccinationEntry>(
      () => loadVaccinations(babyId),
      (v) => saveVaccinations(babyId, v),
      imported.vaccinations,
      (v) => v.id,
    );
    await mergeById<MedicationCourse>(
      () => loadMedicationCourses(babyId),
      (v) => saveMedicationCourses(babyId, v),
      imported.medicationCourses,
      (m) => m.id,
    );

    return mergedEvents;
  }

  static Future<void> deleteData(String babyId) async {
    final sp = await SharedPreferences.getInstance();
    await sp.remove('$_kDataPrefix$babyId');
    await sp.remove('$_kMilestonesPrefix$babyId');
    await sp.remove('$_kVaccinesPrefix$babyId');
    await sp.remove('$_kMedicationsPrefix$babyId');
  }

  // ─── Milestones ───────────────────────────────────────────────────────────

  static Future<List<MilestoneEntry>> loadMilestones(String babyId) async {
    final sp = await SharedPreferences.getInstance();
    final raw = sp.getString('$_kMilestonesPrefix$babyId');
    if (raw == null) return [];
    return (json.decode(raw) as List)
        .map(
          (e) => MilestoneEntry.fromJson(Map<String, dynamic>.from(e as Map)),
        )
        .toList();
  }

  static Future<void> saveMilestones(
    String babyId,
    List<MilestoneEntry> milestones,
  ) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString(
      '$_kMilestonesPrefix$babyId',
      json.encode(milestones.map((m) => m.toJson()).toList()),
    );
  }

  // ─── Vaccinations ─────────────────────────────────────────────────────────

  static Future<List<VaccinationEntry>> loadVaccinations(String babyId) async {
    final sp = await SharedPreferences.getInstance();
    final raw = sp.getString('$_kVaccinesPrefix$babyId');
    if (raw == null) return [];
    return (json.decode(raw) as List)
        .map(
          (e) => VaccinationEntry.fromJson(Map<String, dynamic>.from(e as Map)),
        )
        .toList();
  }

  static Future<void> saveVaccinations(
    String babyId,
    List<VaccinationEntry> vaccines,
  ) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString(
      '$_kVaccinesPrefix$babyId',
      json.encode(vaccines.map((v) => v.toJson()).toList()),
    );
  }

  // ─── Medication courses ───────────────────────────────────────────────────

  static Future<List<MedicationCourse>> loadMedicationCourses(
    String babyId,
  ) async {
    final sp = await SharedPreferences.getInstance();
    final raw = sp.getString('$_kMedicationsPrefix$babyId');
    if (raw == null) return [];
    return (json.decode(raw) as List)
        .map(
          (e) =>
              MedicationCourse.fromJson(Map<String, dynamic>.from(e as Map)),
        )
        .toList();
  }

  static Future<void> saveMedicationCourses(
    String babyId,
    List<MedicationCourse> courses,
  ) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString(
      '$_kMedicationsPrefix$babyId',
      json.encode(courses.map((c) => c.toJson()).toList()),
    );
  }

  // ─── Settings ─────────────────────────────────────────────────────────────

  static Future<AppSettings> loadSettings() async {
    final sp = await SharedPreferences.getInstance();
    final raw = sp.getString(_kSettings);
    if (raw == null) return const AppSettings();
    return AppSettings.fromJson(json.decode(raw) as Map<String, dynamic>);
  }

  static Future<void> saveSettings(AppSettings settings) async {
    final sp = await SharedPreferences.getInstance();
    await sp.setString(_kSettings, json.encode(settings.toJson()));
  }
}

/// Everything a JSON export/import round trip carries: events plus the three
/// side tables (milestones, vaccinations, medication courses) that a bare
/// `{dateKey: [...]}` events map — the only thing the app's backup used to
/// include — silently left out of every export.
class ImportBundle {
  final Map<String, List<TrackerEvent>> events;
  final List<MilestoneEntry> milestones;
  final List<VaccinationEntry> vaccinations;
  final List<MedicationCourse> medicationCourses;

  const ImportBundle({
    required this.events,
    this.milestones = const [],
    this.vaccinations = const [],
    this.medicationCourses = const [],
  });
}
