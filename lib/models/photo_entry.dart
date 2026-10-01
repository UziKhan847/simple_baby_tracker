import 'package:simple_baby_tracker/main.dart';

/// A daily "watch them grow" photo. The image itself lives on disk under the
/// app's documents directory; [relativePath] is relative to that directory so
/// backups can move photos between devices without breaking the link.
class PhotoEntry {
  final String id;

  /// Calendar day this photo belongs to (one photo per day).
  DateTime date;
  String relativePath;
  String? caption;

  PhotoEntry({
    String? id,
    required this.date,
    required this.relativePath,
    this.caption,
  }) : id = id ?? uuid.v4();

  Map<String, dynamic> toJson() => {
    'id': id,
    'date': date.toIso8601String(),
    'relativePath': relativePath,
    'caption': caption,
  };

  factory PhotoEntry.fromJson(Map<String, dynamic> j) => PhotoEntry(
    id: j['id'] as String,
    date: DateTime.parse(j['date'] as String),
    relativePath: j['relativePath'] as String,
    caption: j['caption'] as String?,
  );
}
