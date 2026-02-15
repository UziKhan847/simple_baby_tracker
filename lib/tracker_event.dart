import 'package:simple_baby_tracker/main.dart';

class TrackerEvent {
  String id;
  String type; 
  Map<String, dynamic> data;
  DateTime time;

  TrackerEvent({
    String? id,
    required this.type,
    required this.time,
    required this.data,
  }) : id = id ?? uuid.v4();

  Map<String, dynamic> toJson() => {
    'id': id,
    'type': type,
    'time': time.toIso8601String(),
    'data': data,
  };

  static TrackerEvent fromJson(Map<String, dynamic> j) => TrackerEvent(
    id: j['id'],
    type: j['type'],
    time: DateTime.parse(j['time']),
    data: Map<String, dynamic>.from(j['data']),
  );
}