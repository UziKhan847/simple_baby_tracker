import 'package:intl/intl.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';

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

// ─── Length (height / head) ───────────────────────────────────────────────
// Stored in cm. Shown in inches when the weight unit is lbs — there's no
// separate length setting.

double cmToIn(double cm) => cm / 2.54;
double inToCm(double inches) => inches * 2.54;

/// The number only, in the unit to show ("52.0" / "20.5") — callers add
/// the unit through a localized label.
String lengthValue(double cm, {required bool useCm}) =>
    (useCm ? cm : cmToIn(cm)).toStringAsFixed(1);

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

// ─── Milk volume ──────────────────────────────────────────────────────────

const double _mlPerOz = 29.5735;

double mlToOz(double ml) => ml / _mlPerOz;
double ozToMl(double oz) => oz * _mlPerOz;

/// Formats a milk amount given in ml, with the equivalent oz shown alongside
/// in brackets, e.g. "150 ml (5.1 oz)".
String formatMilkMl(num ml) =>
    '$ml ml (${mlToOz(ml.toDouble()).toStringAsFixed(1)} oz)';

/// Formats a milk amount given in ml, showing only the unit the user picked
/// in Settings (ml or oz) rather than always both — used everywhere an
/// amount is a headline value rather than a reference conversion.
String formatMilk(num ml, {required bool useMl}) {
  if (useMl) return '${ml.round()} ml';
  return '${mlToOz(ml.toDouble()).toStringAsFixed(1)} oz';
}

// ─── Relative time ────────────────────────────────────────────────────────

/// A human "X ago" string — shared by the Home "since last" strip and the
/// medication dose form/list, so both describe elapsed time the same way.
String timeAgo(DateTime t, AppLocalizations l) {
  final diff = DateTime.now().difference(t);
  if (diff.inMinutes < 1) return l.timeAgoJustNow;
  if (diff.inMinutes < 60) return l.timeAgoMinutes(diff.inMinutes);
  if (diff.inHours < 24) return l.timeAgoHours(diff.inHours);
  return l.timeAgoDays(diff.inDays);
}

/// A human "in X" string for a moment in the future (e.g. next dose due),
/// or "overdue"/"now" once it's passed.
String timeUntil(DateTime t, AppLocalizations l) {
  final diff = t.difference(DateTime.now());
  if (diff.inMinutes <= 0) return l.timeUntilOverdue;
  if (diff.inMinutes < 60) return l.timeUntilMinutes(diff.inMinutes);
  if (diff.inHours < 24) return l.timeUntilHours(diff.inHours);
  return l.timeUntilDays(diff.inDays);
}

/// A compact "Hh MMm" / "MMm" duration label, e.g. for a running timer.
String formatDuration(Duration d) {
  final h = d.inHours;
  final m = d.inMinutes % 60;
  if (h == 0) return '${m}m';
  return '${h}h ${m.toString().padLeft(2, '0')}m';
}

/// The baby's age on [date], e.g. "12 days", "3 mo 2 d", "1 yr 2 mo" —
/// shown on every photo in the growth timeline.
String ageAt(DateTime birth, DateTime date, AppLocalizations l) {
  final b = DateTime(birth.year, birth.month, birth.day);
  final d = DateTime(date.year, date.month, date.day);
  if (d.isBefore(b)) return l.ageBeforeBirth;
  var months = (d.year - b.year) * 12 + d.month - b.month;
  if (d.day < b.day) months--;
  if (months <= 0) return l.ageDays(d.difference(b).inDays);
  final monthAnniversary = DateTime(b.year, b.month + months, b.day);
  final days = d.difference(monthAnniversary).inDays;
  if (months < 24) return l.ageMonthsDays(months, days);
  return l.ageYearsMonths(months ~/ 12, months % 12);
}
