import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

class Storage {
  static const _kKey = 'baby_tracker_data_v2';

  static Future<Map<String, List<TrackerEvent>>> loadAll() async {
    final sp = await SharedPreferences.getInstance();
    final raw = sp.getString(_kKey);
    if (raw == null) return {};

    final decoded = json.decode(raw) as Map<String, dynamic>;
    final out = <String, List<TrackerEvent>>{};
    decoded.forEach((k, v) {
      out[k] = (v as List)
          .map((e) => TrackerEvent.fromJson(Map<String, dynamic>.from(e)))
          .toList();
    });
    return out;
  }

  static Future<void> saveAll(Map<String, List<TrackerEvent>> map) async {
    final sp = await SharedPreferences.getInstance();

    final encoded = map.map(
      (k, v) => MapEntry(k, v.map((e) => e.toJson()).toList()),
    );
    await sp.setString(_kKey, json.encode(encoded));
  }

  static Future exportToFile(Map<String, List> data) async {
    final dir = await getApplicationDocumentsDirectory();
    final file = File('${dir.path}/baby_tracker_export.json');

    final encoded = data.map(
      (k, v) => MapEntry(k, v.map((e) => e.toJson()).toList()),
    );
    await file.writeAsString(json.encode(encoded));
    return file;
  }
}
