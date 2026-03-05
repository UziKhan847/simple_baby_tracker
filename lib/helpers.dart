import 'package:intl/intl.dart';

String dateKey(DateTime d) =>
    '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

String displayDate(DateTime d) {
  final now = DateTime.now();
  if (dateKey(now) == dateKey(d)) return 'Today';
  return fullDate(d);
}

DateTime dateFromKey(String key) {
  final parts = key.split('-');
  return DateTime(
    int.parse(parts[0]),
    int.parse(parts[1]),
    int.parse(parts[2]),
  );
}

String fullDate(DateTime d) => DateFormat('MMMM d, yyyy').format(d);

String formatTime(DateTime t) =>
    '${t.hour.toString().padLeft(2, '0')}:${t.minute.toString().padLeft(2, '0')}';