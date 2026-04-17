import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_baby_tracker/app_settings.dart';
import 'package:simple_baby_tracker/baby_profile.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class Storage {
  static const _kDataPrefix = 'baby_tracker_data_v3_';
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
        _kProfiles, json.encode(profiles.map((p) => p.toJson()).toList()));
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
          .map((e) =>
              TrackerEvent.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList();
    }
    return out;
  }

  static Future<void> saveAll(
      String babyId, Map<String, List<TrackerEvent>> map) async {
    final sp = await SharedPreferences.getInstance();
    final encoded =
        map.map((k, v) => MapEntry(k, v.map((e) => e.toJson()).toList()));
    await sp.setString('$_kDataPrefix$babyId', json.encode(encoded));
  }

  static Future<File> exportToFile(
      String babyId, Map<String, List<TrackerEvent>> data) async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/baby_tracker_export_$babyId.json');
    final encoded =
        data.map((k, v) => MapEntry(k, v.map((e) => e.toJson()).toList()));
    await file.writeAsString(json.encode(encoded));
    return file;
  }

  static Future<void> deleteData(String babyId) async {
    final sp = await SharedPreferences.getInstance();
    await sp.remove('$_kDataPrefix$babyId');
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