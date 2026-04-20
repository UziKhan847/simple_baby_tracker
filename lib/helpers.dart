import 'package:intl/intl.dart';

// ─── Date ─────────────────────────────────────────────────────────────────

String dateKey(DateTime d) =>
    '${d.year.toString().padLeft(4, '0')}-'
    '${d.month.toString().padLeft(2, '0')}-'
    '${d.day.toString().padLeft(2, '0')}';

String displayDate(DateTime d) {
  if (dateKey(DateTime.now()) == dateKey(d)) return 'Today';
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

/// Month name only, locale-aware (e.g. "January" / "janvier" / "يناير").
String fullMonthName(DateTime d) => DateFormat('MMMM').format(d);

String formatTime(DateTime t) =>
    '${t.hour.toString().padLeft(2, '0')}:'
    '${t.minute.toString().padLeft(2, '0')}';

// ─── Weight ───────────────────────────────────────────────────────────────

double kgToLbs(double kg) => kg * 2.20462;
double lbsToKg(double lbs) => lbs / 2.20462;

String formatWeight(double kg, {required bool useKg}) {
  if (useKg) return '${kg.toStringAsFixed(2)} kg';
  return '${kgToLbs(kg).toStringAsFixed(1)} lbs';
}

// ─── Temperature ──────────────────────────────────────────────────────────

double celsiusToFahrenheit(double c) => c * 9 / 5 + 32;
double fahrenheitToCelsius(double f) => (f - 32) * 5 / 9;

String formatTemp(double celsius, {required bool useCelsius}) {
  if (useCelsius) return '${celsius.toStringAsFixed(1)} °C';
  return '${celsiusToFahrenheit(celsius).toStringAsFixed(1)} °F';
}

/// Returns a severity label + color hint for a given temperature in Celsius.
/// Returns 'normal', 'low', 'elevated', or 'fever'.
String tempSeverity(double celsius) {
  if (celsius < 36.0) return 'low';
  if (celsius <= 37.4) return 'normal';
  if (celsius <= 38.4) return 'elevated';
  return 'fever';
}
