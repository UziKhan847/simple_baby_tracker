import 'package:intl/intl.dart';

String dateKey(DateTime d) =>
    '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

String displayDate(DateTime d) {
  final now = DateTime.now();
  if (dateKey(now) == dateKey(d)) return 'Today';
  return '${d.year}-${d.month}-${d.day}';
}

DateTime dateFromKey(String key) {
  final parts = key.split('-');
  final y = int.parse(parts[0]);
  final m = int.parse(parts[1]);
  final d = int.parse(parts[2]);
  return DateTime(y, m, d);
}

String fullDate(DateTime d) {
  return DateFormat('MMMM d, yyyy').format(d);
}
