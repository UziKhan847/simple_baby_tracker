import 'package:simple_baby_tracker/main.dart';

class BabyProfile {
  final String id;
  String name;
  DateTime? birthDate;
  String? gender; // 'male' | 'female' | null

  BabyProfile({
    String? id,
    required this.name,
    this.birthDate,
    this.gender,
  }) : id = id ?? uuid.v4();

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'birthDate': birthDate?.toIso8601String(),
        'gender': gender,
      };

  factory BabyProfile.fromJson(Map<String, dynamic> j) => BabyProfile(
        id: j['id'] as String,
        name: j['name'] as String,
        birthDate: j['birthDate'] != null
            ? DateTime.parse(j['birthDate'] as String)
            : null,
        gender: j['gender'] as String?,
      );

  String get ageString {
    if (birthDate == null) return '';
    final now = DateTime.now();
    final months = (now.year - birthDate!.year) * 12 +
        now.month -
        birthDate!.month;
    if (months < 1) {
      final days = now.difference(birthDate!).inDays;
      return '$days day${days == 1 ? '' : 's'} old';
    }
    if (months < 24) return '$months month${months == 1 ? '' : 's'} old';
    final years = months ~/ 12;
    final rem = months % 12;
    if (rem == 0) return '$years year${years == 1 ? '' : 's'} old';
    return '$years yr $rem mo old';
  }

  String get initials {
    final parts = name.trim().split(' ');
    if (parts.isEmpty) return '?';
    if (parts.length == 1) return parts.first[0].toUpperCase();
    return '${parts.first[0]}${parts.last[0]}'.toUpperCase();
  }
}