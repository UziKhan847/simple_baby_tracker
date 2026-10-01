import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations_de.dart';
import 'package:simple_baby_tracker/l10n/app_localizations_en.dart';
import 'package:simple_baby_tracker/labels.dart';
import 'package:simple_baby_tracker/models/vaccination_entry.dart';
import 'package:simple_baby_tracker/pages/vaccinations.dart';
import 'package:simple_baby_tracker/services/notification.dart';

/// `{name}` / `{count, plural, …}` placeholders, ignoring plural branches
/// like `=0{Birthday}`.
Set<String> _placeholders(String s) {
  final out = <String>{};
  for (final m in RegExp(r'\{(\w+)[,}]').allMatches(s)) {
    final before = s.substring(0, m.start);
    if (RegExp(r'(=\d+|zero|one|two|few|many|other)$').hasMatch(before)) {
      continue;
    }
    out.add(m.group(1)!);
  }
  return out;
}

void main() {
  group('Translations', () {
    final en =
        json.decode(File('lib/l10n/app_en.arb').readAsStringSync())
            as Map<String, dynamic>;
    final keys = en.keys.where((k) => !k.startsWith('@')).toList();
    final locales = Directory('lib/l10n')
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.arb') && !f.path.endsWith('_en.arb'))
        .toList();

    test('there are 19 other languages', () {
      expect(locales, hasLength(19));
    });

    for (final file in locales) {
      final name = file.uri.pathSegments.last;
      test('$name has every key, with the same placeholders', () {
        final arb =
            json.decode(file.readAsStringSync()) as Map<String, dynamic>;
        final missing = keys.where((k) => !arb.containsKey(k)).toList();
        expect(missing, isEmpty, reason: 'missing in $name');
        for (final k in keys) {
          expect(
            _placeholders(arb[k] as String),
            _placeholders(en[k] as String),
            reason: '$k in $name',
          );
        }
      });
    }
  });

  group('Stored-value labels', () {
    final de = AppLocalizationsDe();

    test('known ids are translated, typed-in values pass through', () {
      expect(foodLabel('Peanut', de), 'Erdnuss');
      expect(foodLabel('peanut', de), 'Erdnuss');
      expect(foodLabel('Mango', de), 'Mango');
      expect(visitReasonLabel('Routine check-up', de), 'Vorsorgeuntersuchung');
      expect(visitReasonLabel('Ear infection', de), 'Ear infection');
      expect(doseUnitLabel('drops', de), 'Tropfen');
      expect(doseUnitLabel('ml', de), 'ml');
      expect(bottleMaterialLabel('Glass', de), 'Glas');
      expect(brandLabel('Store brand', de), 'Eigenmarke');
      expect(brandLabel('Pampers', de), 'Pampers');
    });

    test('vaccine schedule ages', () {
      final en = AppLocalizationsEn();
      expect(vaccineAgeLabel(vaccineSchedule.first, en), 'Birth');
      expect(
        vaccineAgeLabel(
          vaccineSchedule.firstWhere((v) => v['annual'] == true),
          en,
        ),
        '6 months (yearly)',
      );
      expect(vaccineAgeLabel(vaccineSchedule[1], de), '1–2 Monate');
    });

    test('formatInterval in another language', () {
      expect(
        formatInterval(const Duration(minutes: 150), de),
        '2 Std. 30 Min.',
      );
      expect(formatInterval(const Duration(minutes: 45), de), '45 Min.');
    });
  });

  group('Length units', () {
    test('cm ↔ inches', () {
      expect(lengthValue(50.8, useCm: false), '20.0');
      expect(lengthValue(50.8, useCm: true), '50.8');
      expect(inToCm(20), closeTo(50.8, 1e-9));
    });
  });
}
