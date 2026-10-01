library;

import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:simple_baby_tracker/baby_profile.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/models/bottle.dart';
import 'package:simple_baby_tracker/models/medication_course.dart';
import 'package:simple_baby_tracker/models/skin_condition.dart';
import 'package:simple_baby_tracker/services/photo_store.dart';
import 'package:simple_baby_tracker/theme/app_colors.dart';
import 'package:simple_baby_tracker/theme/category_style.dart';
import 'package:simple_baby_tracker/tracker_event.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';

class PdfExportService {
  PdfExportService._();
  static final instance = PdfExportService._();

  /// Bottle id → bottle for the report being built (bottle tracking).
  Map<String, Bottle> _bottles = {};

  // ─── Public API ───────────────────────────────────────────────────────────

  /// Generate and share/print the PDF using the system share sheet.
  Future<void> shareReport({
    required BabyProfile profile,
    required Map<String, List<TrackerEvent>> data,
    bool useKg = true,
    bool useCelsius = true,
    List<MedicationCourse> medicationCourses = const [],
    List<Bottle> bottles = const [],
    List<SkinCondition> skinConditions = const [],
  }) async {
    final bytes = await _buildPdf(
      profile: profile,
      data: data,
      useKg: useKg,
      useCelsius: useCelsius,
      medicationCourses: medicationCourses,
      bottles: bottles,
      skinConditions: skinConditions,
    );
    await Printing.sharePdf(
      bytes: bytes,
      filename: 'baby_report_${profile.name.replaceAll(' ', '_')}.pdf',
    );
  }

  /// Generate the PDF and return its raw bytes (useful for saving to disk).
  Future<Uint8List> generateBytes({
    required BabyProfile profile,
    required Map<String, List<TrackerEvent>> data,
    bool useKg = true,
    bool useCelsius = true,
    List<MedicationCourse> medicationCourses = const [],
  }) => _buildPdf(
    profile: profile,
    data: data,
    useKg: useKg,
    useCelsius: useCelsius,
    medicationCourses: medicationCourses,
  );

  // ─── Skin condition report ────────────────────────────────────────────────

  static const _weighConditionNames = {
    'naked': 'naked',
    'diaper': 'diaper only',
    'light_clothes': 'light clothes',
    'dressed': 'dressed',
  };

  /// A stored cm value in the report's unit (inches alongside lbs).
  static String _length(double cm, bool useCm) =>
      '${lengthValue(cm, useCm: useCm)} ${useCm ? 'cm' : 'in'}';

  static const _severityNames = [
    'Clear',
    'Mild',
    'Moderate',
    'Severe',
    'Very severe',
  ];

  /// A one-condition report for a doctor's visit: when it began, every
  /// daily update (severity, treatment, notes), a severity trend, and the
  /// photos — shared through the system share sheet / print dialog.
  Future<void> shareSkinReport({
    required BabyProfile profile,
    required SkinCondition condition,
  }) async {
    final c = condition;
    final images = <String, pw.MemoryImage>{};
    for (final u in c.updates) {
      if (u.photoPath == null) continue;
      try {
        final f = await PhotoStore.file(u.photoPath!);
        if (await f.exists()) {
          images[u.id] = pw.MemoryImage(await f.readAsBytes());
        }
      } catch (_) {}
    }

    final doc = pw.Document(title: '${profile.name} — ${c.name}');
    final days =
        (c.endDate ?? DateTime.now()).difference(c.startDate).inDays + 1;

    doc.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(32),
        footer: (ctx) => _buildFooter(ctx),
        build: (ctx) => [
          pw.Text(
            '${c.name}${c.bodyArea != null ? ' — ${c.bodyArea}' : ''}',
            style: pw.TextStyle(fontSize: 18, fontWeight: pw.FontWeight.bold),
          ),
          pw.SizedBox(height: 4),
          pw.Text(
            [
              profile.name,
              if (profile.birthDate != null)
                'born ${fullDate(profile.birthDate!)}',
            ].join('  ·  '),
            style: const pw.TextStyle(fontSize: 10, color: PdfColors.grey700),
          ),
          pw.Text(
            'Began ${fullDate(c.startDate)}'
            '${c.endDate != null ? '  ·  healed ${fullDate(c.endDate!)}' : '  ·  ongoing'}'
            '  ·  $days day${days == 1 ? '' : 's'}  ·  ${c.updates.length} update${c.updates.length == 1 ? '' : 's'}',
            style: const pw.TextStyle(fontSize: 10, color: PdfColors.grey700),
          ),
          if (c.notes != null) ...[
            pw.SizedBox(height: 6),
            pw.Text(c.notes!, style: const pw.TextStyle(fontSize: 10)),
          ],
          pw.Divider(color: PdfColors.grey400),
          if (c.updates.isNotEmpty) ...[
            pw.Text(
              'Severity over time (0 clear – 4 very severe)',
              style: pw.TextStyle(fontSize: 11, fontWeight: pw.FontWeight.bold),
            ),
            pw.SizedBox(height: 6),
            _severityBars(c.updates),
            pw.SizedBox(height: 14),
          ],
          for (final u in c.updates.reversed)
            pw.Container(
              margin: const pw.EdgeInsets.only(bottom: 10),
              padding: const pw.EdgeInsets.all(8),
              decoration: pw.BoxDecoration(
                border: pw.Border.all(color: PdfColors.grey300),
                borderRadius: pw.BorderRadius.circular(4),
              ),
              child: pw.Row(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  pw.Expanded(
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      children: [
                        pw.Text(
                          '${fullDate(u.date)}  ·  ${_severityNames[u.severity.clamp(0, 4)]} (${u.severity}/4)',
                          style: pw.TextStyle(
                            fontSize: 10,
                            fontWeight: pw.FontWeight.bold,
                          ),
                        ),
                        if (u.treatment != null)
                          pw.Text(
                            'Treatment: ${u.treatment}',
                            style: const pw.TextStyle(fontSize: 10),
                          ),
                        if (u.notes != null)
                          pw.Text(
                            u.notes!,
                            style: const pw.TextStyle(
                              fontSize: 10,
                              color: PdfColors.grey800,
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (images[u.id] case final img?)
                    pw.Padding(
                      padding: const pw.EdgeInsets.only(left: 8),
                      child: pw.Image(
                        img,
                        width: 150,
                        height: 150,
                        fit: pw.BoxFit.cover,
                      ),
                    ),
                ],
              ),
            ),
        ],
      ),
    );

    await Printing.sharePdf(
      bytes: await doc.save(),
      filename: '${profile.name}_${c.name}_skin_report.pdf'.replaceAll(
        ' ',
        '_',
      ),
    );
  }

  pw.Widget _severityBars(List<SkinUpdate> updates) {
    const colors = [
      PdfColors.green300,
      PdfColors.yellow400,
      PdfColors.orange400,
      PdfColors.deepOrange500,
      PdfColors.red600,
    ];
    final shown = updates.length > 40
        ? updates.sublist(updates.length - 40)
        : updates;
    return pw.Row(
      crossAxisAlignment: pw.CrossAxisAlignment.end,
      children: [
        for (final u in shown)
          pw.Expanded(
            child: pw.Column(
              mainAxisSize: pw.MainAxisSize.min,
              children: [
                pw.Container(
                  height: 8.0 + u.severity.clamp(0, 4) * 14,
                  margin: const pw.EdgeInsets.symmetric(horizontal: 1),
                  color: colors[u.severity.clamp(0, 4)],
                ),
                pw.SizedBox(height: 2),
                pw.Text(
                  '${u.date.month}/${u.date.day}',
                  style: const pw.TextStyle(
                    fontSize: 6,
                    color: PdfColors.grey600,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }

  // ─── Builder ──────────────────────────────────────────────────────────────

  Future<Uint8List> _buildPdf({
    required BabyProfile profile,
    required Map<String, List<TrackerEvent>> data,
    required bool useKg,
    required bool useCelsius,
    List<MedicationCourse> medicationCourses = const [],
    List<Bottle> bottles = const [],
    List<SkinCondition> skinConditions = const [],
  }) async {
    _bottles = {for (final b in bottles) b.id: b};
    final doc = pw.Document(
      title: '${profile.name} — Baby Tracker Report',
      author: 'Baby Tracker',
    );

    // Sort days newest-first for the report
    final sortedKeys = data.keys.toList()..sort((a, b) => b.compareTo(a));

    // Build summary stats
    int totalFeeds = 0, totalDiapers = 0, totalSleepMin = 0, totalMilk = 0;
    for (final events in data.values) {
      for (final e in events) {
        if (e.type == 'feeding') {
          totalFeeds++;
          totalMilk += (e.data['amountMl'] as num?)?.toInt() ?? 0;
        }
        if (e.type == 'diaper') totalDiapers++;
        if (e.type == 'sleep') {
          totalSleepMin += (e.data['durationMin'] as num?)?.toInt() ?? 0;
        }
      }
    }

    doc.addPage(
      pw.MultiPage(
        pageFormat: PdfPageFormat.a4,
        margin: const pw.EdgeInsets.all(32),
        header: (ctx) => _buildHeader(ctx, profile),
        footer: (ctx) => _buildFooter(ctx),
        build: (ctx) => [
          // Summary card
          _summarySection(
            totalFeeds: totalFeeds,
            totalDiapers: totalDiapers,
            totalSleepMin: totalSleepMin,
            totalMilk: totalMilk,
            dayCount: data.length,
          ),
          if (medicationCourses.isNotEmpty) ...[
            pw.SizedBox(height: 16),
            _medicationsSection(medicationCourses),
          ],
          if (skinConditions.isNotEmpty) ...[
            pw.SizedBox(height: 16),
            _skinSection(skinConditions),
          ],
          pw.SizedBox(height: 16),

          // Day-by-day entries
          ...sortedKeys.expand((key) {
            final events = data[key] ?? [];
            if (events.isEmpty) return <pw.Widget>[];
            return [
              _dayHeader(key),
              ...(List<TrackerEvent>.from(events)
                    ..sort((a, b) => a.time.compareTo(b.time)))
                  .map((e) => _eventRow(e, useKg, useCelsius)),
              pw.SizedBox(height: 8),
            ];
          }),
        ],
      ),
    );

    return doc.save();
  }

  // ─── Header / footer ──────────────────────────────────────────────────────

  pw.Widget _buildHeader(pw.Context ctx, BabyProfile profile) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
          children: [
            pw.Text(
              '${profile.name} — Baby Tracker Report',
              style: pw.TextStyle(fontSize: 16, fontWeight: pw.FontWeight.bold),
            ),
            pw.Text(
              fullDate(DateTime.now()),
              style: const pw.TextStyle(fontSize: 10, color: PdfColors.grey600),
            ),
          ],
        ),
        if (profile.birthDate != null)
          pw.Text(
            'Date of birth: ${fullDate(profile.birthDate!)}  ·  ${profile.ageString}',
            style: const pw.TextStyle(fontSize: 10, color: PdfColors.grey600),
          ),
        pw.Divider(color: PdfColors.grey400),
        pw.SizedBox(height: 4),
      ],
    );
  }

  pw.Widget _buildFooter(pw.Context ctx) {
    return pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      children: [
        pw.Text(
          'Generated by Baby Tracker',
          style: const pw.TextStyle(fontSize: 9, color: PdfColors.grey500),
        ),
        pw.Text(
          'Page ${ctx.pageNumber} of ${ctx.pagesCount}',
          style: const pw.TextStyle(fontSize: 9, color: PdfColors.grey500),
        ),
      ],
    );
  }

  // ─── Summary section ──────────────────────────────────────────────────────

  pw.Widget _summarySection({
    required int totalFeeds,
    required int totalDiapers,
    required int totalSleepMin,
    required int totalMilk,
    required int dayCount,
  }) {
    final sleepH = totalSleepMin ~/ 60;
    final sleepM = totalSleepMin % 60;
    final sleepStr = sleepH > 0 ? '${sleepH}h ${sleepM}m' : '${sleepM}m';

    return pw.Container(
      padding: const pw.EdgeInsets.all(12),
      decoration: pw.BoxDecoration(
        color: PdfColors.blue50,
        borderRadius: pw.BorderRadius.circular(6),
        border: pw.Border.all(color: PdfColors.blue200),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            'Summary — $dayCount day${dayCount == 1 ? '' : 's'} of data',
            style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 12),
          ),
          pw.SizedBox(height: 8),
          pw.Row(
            children: [
              _statChip('Feeds', '$totalFeeds'),
              pw.SizedBox(width: 16),
              _statChip('Diapers', '$totalDiapers'),
              pw.SizedBox(width: 16),
              _statChip('Sleep', sleepStr),
              pw.SizedBox(width: 16),
              _statChip('Milk', formatMilkMl(totalMilk)),
            ],
          ),
        ],
      ),
    );
  }

  pw.Widget _statChip(String label, String value) {
    return pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.start,
      children: [
        pw.Text(
          label,
          style: const pw.TextStyle(fontSize: 9, color: PdfColors.grey600),
        ),
        pw.Text(
          value,
          style: pw.TextStyle(fontSize: 13, fontWeight: pw.FontWeight.bold),
        ),
      ],
    );
  }

  // ─── Medications ──────────────────────────────────────────────────────────

  pw.Widget _medicationsSection(List<MedicationCourse> courses) {
    String resultLabel(MedicationResult r) => switch (r) {
      MedicationResult.worked => 'Worked',
      MedicationResult.partlyWorked => 'Partly worked',
      MedicationResult.didntWork => "Didn't work",
      MedicationResult.sideEffects => 'Side effects',
      MedicationResult.none => 'Not rated',
    };

    return pw.Container(
      padding: const pw.EdgeInsets.all(12),
      decoration: pw.BoxDecoration(
        color: PdfColors.purple50,
        borderRadius: pw.BorderRadius.circular(6),
        border: pw.Border.all(color: PdfColors.purple200),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            'Medications',
            style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 12),
          ),
          pw.SizedBox(height: 6),
          for (final c in courses)
            pw.Padding(
              padding: const pw.EdgeInsets.symmetric(vertical: 2),
              child: pw.RichText(
                text: pw.TextSpan(
                  children: [
                    pw.TextSpan(
                      text: '${c.name}  ',
                      style: pw.TextStyle(
                        fontSize: 10,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.TextSpan(
                      text: [
                        '${c.dose} ${c.unit}',
                        if (c.reason != null) c.reason!,
                        if (c.intervalHours != null)
                          'every ${c.intervalHours}h',
                        fullDate(c.startDate),
                        c.isActive ? 'ongoing' : resultLabel(c.result),
                      ].join('  ·  '),
                      style: const pw.TextStyle(
                        fontSize: 10,
                        color: PdfColors.grey700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  // ─── Skin conditions ──────────────────────────────────────────────────────

  /// One line per condition — the full timeline with photos is the separate
  /// per-condition report (Graphs → Health → Skin conditions).
  pw.Widget _skinSection(List<SkinCondition> conditions) {
    final sorted = [...conditions]
      ..sort((a, b) {
        if (a.isActive != b.isActive) return a.isActive ? -1 : 1;
        return b.startDate.compareTo(a.startDate);
      });
    return pw.Container(
      padding: const pw.EdgeInsets.all(12),
      decoration: pw.BoxDecoration(
        color: PdfColors.orange50,
        borderRadius: pw.BorderRadius.circular(6),
        border: pw.Border.all(color: PdfColors.orange200),
      ),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.Text(
            'Skin conditions',
            style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 12),
          ),
          pw.SizedBox(height: 6),
          for (final c in sorted)
            pw.Padding(
              padding: const pw.EdgeInsets.symmetric(vertical: 2),
              child: pw.RichText(
                text: pw.TextSpan(
                  children: [
                    pw.TextSpan(
                      text:
                          '${c.name}${c.bodyArea != null ? ' (${c.bodyArea})' : ''}  ',
                      style: pw.TextStyle(
                        fontSize: 10,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.TextSpan(
                      text: [
                        'since ${fullDate(c.startDate)}',
                        c.endDate != null
                            ? 'healed ${fullDate(c.endDate!)}'
                            : 'ongoing',
                        if (c.latest case final u?)
                          'latest: ${_severityNames[u.severity.clamp(0, 4)].toLowerCase()} '
                              '(${u.severity}/4) on ${fullDate(u.date)}',
                        if (c.latest?.treatment case final t?) 'treatment: $t',
                        '${c.updates.length} update${c.updates.length == 1 ? '' : 's'}',
                      ].join('  ·  '),
                      style: const pw.TextStyle(
                        fontSize: 10,
                        color: PdfColors.grey700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  // ─── Day header ───────────────────────────────────────────────────────────

  pw.Widget _dayHeader(String dateKey) {
    return pw.Container(
      margin: const pw.EdgeInsets.only(top: 4, bottom: 4),
      padding: const pw.EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: pw.BoxDecoration(
        color: PdfColors.grey200,
        borderRadius: pw.BorderRadius.circular(4),
      ),
      child: pw.Text(
        fullDate(dateFromKey(dateKey)),
        style: pw.TextStyle(fontWeight: pw.FontWeight.bold, fontSize: 11),
      ),
    );
  }

  // ─── Event row ────────────────────────────────────────────────────────────

  /// The entry type's duo icon from the custom icon pack, as vector SVG.
  /// Replaces per-row emoji, which the PDF's built-in font can't render (they
  /// came out as empty boxes).
  pw.Widget _typeIcon(String type) {
    final style = categoryStyleFor(type, AppColors.light());
    final svg = AppIconCache.colored(
      style.icon,
      color: style.strong,
      fill: style.soft,
    );
    if (svg == null) return pw.SizedBox();
    return pw.Padding(
      padding: const pw.EdgeInsets.only(top: 1, right: 4),
      child: pw.SvgImage(svg: svg, width: 11, height: 11),
    );
  }

  pw.Widget _eventRow(TrackerEvent e, bool useKg, bool useCelsius) {
    final time = formatTime(e.time);
    final (icon, title, detail) = _eventContent(e, useKg, useCelsius);

    return pw.Padding(
      padding: const pw.EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      child: pw.Row(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          pw.SizedBox(
            width: 42,
            child: pw.Text(
              time,
              style: const pw.TextStyle(fontSize: 9, color: PdfColors.grey600),
            ),
          ),
          pw.SizedBox(width: 16, child: _typeIcon(icon)),
          pw.Expanded(
            child: pw.RichText(
              text: pw.TextSpan(
                children: [
                  pw.TextSpan(
                    text: '$title  ',
                    style: pw.TextStyle(
                      fontSize: 10,
                      fontWeight: pw.FontWeight.bold,
                    ),
                  ),
                  pw.TextSpan(
                    text: detail,
                    style: const pw.TextStyle(
                      fontSize: 10,
                      color: PdfColors.grey700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  (String icon, String title, String detail) _eventContent(
    TrackerEvent e,
    bool useKg,
    bool useCelsius,
  ) {
    switch (e.type) {
      case 'diaper':
        final pee = e.data['pee'] == true;
        final poo = e.data['poo'] == true;
        final rash = e.data['rash'] == true;
        final contents = [if (pee) 'pee', if (poo) 'poo'].join(' + ');
        final rashStr = rash ? '  · rash' : '';
        final size = e.data['size'] as String?;
        final brand = e.data['brand'] as String?;
        final extra = [if (size != null) 'Size $size', ?brand].join('  ·  ');
        return (
          'diaper',
          'Diaper${contents.isNotEmpty ? ' ($contents)' : ''}$rashStr',
          extra,
        );

      case 'feeding':
        final isBottle = (e.data['isBottle'] as bool?) ?? true;
        if (isBottle) {
          final ml = (e.data['amountMl'] as num?) ?? 0;
          final method = e.data['method'] == 'formula'
              ? 'Formula'
              : 'Breast milk';
          final brand = e.data['formulaBrand'] as String?;
          final prepared = e.data['preparedMl'] as num?;
          final bottle = _bottles[e.data['bottleId']];
          return (
            'feeding',
            'Bottle ($method)',
            [
              formatMilkMl(ml),
              if (prepared != null) 'of $prepared ml prepared',
              ?bottle?.displayName,
              ?brand,
            ].join('  ·  '),
          );
        }
        final dur = e.data['durationMin'] ?? 0;
        return ('breastfeeding', 'Breastfeeding', '$dur min');

      case 'sleep':
        final min = (e.data['durationMin'] as num?)?.toInt() ?? 0;
        final h = min ~/ 60;
        final rem = min % 60;
        final dur = h > 0 ? '${h}h ${rem}m' : '${rem}m';
        final notes = e.data['notes'] as String?;
        return ('sleep', 'Sleep ($dur)', notes ?? '');

      case 'temperature':
        final c = (e.data['valueCelsius'] as num?)?.toDouble() ?? 0;
        final sev = tempSeverity(c);
        final dot = switch (sev) {
          'fever' => '(fever)',
          'elevated' => '(elevated)',
          'low' => '(low)',
          _ => '(normal)',
        };
        return (
          'temperature',
          'Temperature $dot',
          formatTemp(c, useCelsius: useCelsius),
        );

      case 'weight':
        // A growth entry can hold any of weight, height and head.
        final kg = (e.data['valueKg'] as num?)?.toDouble();
        final heightCm = (e.data['heightCm'] as num?)?.toDouble();
        final headCm = (e.data['headCm'] as num?)?.toDouble();
        final condition = e.data['condition'] as String?;
        return (
          'weight',
          'Growth',
          [
            if (kg != null)
              '${formatWeight(kg, useKg: useKg)}'
                  '${condition != null ? ' (${_weighConditionNames[condition] ?? condition})' : ''}',
            if (heightCm != null) '${_length(heightCm, useKg)} height',
            if (headCm != null) '${_length(headCm, useKg)} head',
          ].join('  ·  '),
        );

      case 'tummy_time':
        final min = (e.data['durationMin'] as num?)?.toInt() ?? 0;
        return ('tummy_time', 'Tummy time', '$min min');

      case 'medication':
        final name = e.data['name'] as String? ?? '';
        final dose = e.data['dose'];
        final unit = e.data['unit'] ?? '';
        return (
          'medication',
          'Medication: $name',
          dose != null ? '$dose $unit' : '',
        );

      case 'doctor_visit':
        final reason = e.data['reason'] as String? ?? '';
        final doctor = e.data['doctorName'] as String?;
        final weightKg = (e.data['weightKg'] as num?)?.toDouble();
        final heightCm = (e.data['heightCm'] as num?)?.toDouble();
        final headCm = (e.data['headCm'] as num?)?.toDouble();
        final measurements = [
          if (weightKg != null) formatWeight(weightKg, useKg: useKg),
          if (heightCm != null) '${_length(heightCm, useKg)} height',
          if (headCm != null) '${_length(headCm, useKg)} head',
        ].join('  ·  ');
        return (
          'doctor_visit',
          'Doctor visit — $reason',
          [?doctor, measurements].where((s) => s.isNotEmpty).join('  ·  '),
        );

      case 'pumping':
        final total =
            ((e.data['leftMl'] as num? ?? 0) + (e.data['rightMl'] as num? ?? 0))
                .toInt();
        final stored = e.data['stored'] == true ? '  (stored)' : '';
        return ('pumping', 'Pumping', '${formatMilkMl(total)}$stored');

      case 'bath':
        final type = e.data['bathType'] as String? ?? 'tub';
        return (
          'bath',
          'Bath (${type[0].toUpperCase()}${type.substring(1)})',
          '',
        );

      case 'note':
        final title = e.data['title'] as String?;
        final text = e.data['text'] as String? ?? '';
        final preview = text.length > 80 ? '${text.substring(0, 80)}…' : text;
        return ('note', title ?? 'Note', preview);

      case 'solids':
        final foods = (e.data['foods'] as List?)?.cast<String>() ?? [];
        final reaction = e.data['reaction'] as String?;
        final reactionStr = (reaction != null && reaction != 'none')
            ? '  · reaction: $reaction'
            : '';
        return ('solids', 'Solids$reactionStr', foods.join(', '));

      default:
        return ('other', e.type, '');
    }
  }
}
