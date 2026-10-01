import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_baby_tracker/helpers.dart';
import 'package:simple_baby_tracker/l10n/app_localizations_en.dart';
import 'package:simple_baby_tracker/models/bottle.dart';
import 'package:simple_baby_tracker/models/photo_entry.dart';
import 'package:simple_baby_tracker/models/skin_condition.dart';
import 'package:simple_baby_tracker/services/notification.dart';
import 'package:simple_baby_tracker/storage.dart';

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  group('Backup envelope', () {
    test('round-trips bottles, photos and skin conditions', () async {
      const baby = 'baby-a';
      await Storage.saveBottles([
        Bottle(id: 'b1', label: '#1', capacityMl: 240),
      ]);
      await Storage.savePhotos(baby, [
        PhotoEntry(
          id: 'p1',
          date: DateTime(2026, 9, 1),
          relativePath: 'photos/$baby/daily/x.jpg',
        ),
      ]);
      await Storage.saveSkinConditions(baby, [
        SkinCondition(
          id: 's1',
          name: 'Eczema',
          startDate: DateTime(2026, 9, 1),
          updates: [
            SkinUpdate(
              id: 'u1',
              date: DateTime(2026, 9, 2),
              severity: 3,
              photoPath: 'photos/$baby/skin/y.jpg',
            ),
          ],
        ),
      ]);

      final envelope = await Storage.buildBackupEnvelope(baby, {});
      final bundle = Storage.parseImportJson(json.encode(envelope));

      expect(bundle.bottles.single.capacityMl, 240);
      expect(bundle.photos.single.id, 'p1');
      expect(bundle.skinConditions.single.updates.single.severity, 3);
      expect(bundle.photoPaths, [
        'photos/$baby/daily/x.jpg',
        'photos/$baby/skin/y.jpg',
      ]);
    });

    test('retargetPhotos moves photo paths to another baby', () {
      final bundle = ImportBundle(
        events: const {},
        photos: [
          PhotoEntry(
            date: DateTime(2026),
            relativePath: 'photos/old/daily/a.jpg',
          ),
        ],
        skinConditions: [
          SkinCondition(
            name: 'Rash',
            startDate: DateTime(2026),
            updates: [
              SkinUpdate(
                date: DateTime(2026),
                severity: 1,
                photoPath: 'photos/old/skin/b.jpg',
              ),
            ],
          ),
        ],
      );
      bundle.retargetPhotos('new');
      expect(bundle.photoPaths, [
        'photos/new/daily/a.jpg',
        'photos/new/skin/b.jpg',
      ]);
    });

    test(
      'merge import keeps existing bottles and adds new ones by id',
      () async {
        await Storage.saveBottles([Bottle(id: 'keep', label: '#1')]);
        await Storage.importData(
          'baby',
          ImportBundle(
            events: const {},
            bottles: [
              Bottle(id: 'keep', label: 'should not overwrite'),
              Bottle(id: 'new', label: '#2'),
            ],
          ),
          merge: true,
        );
        final bottles = await Storage.loadBottles();
        expect(bottles.map((b) => b.id), ['keep', 'new']);
        expect(bottles.first.label, '#1');
      },
    );
  });

  group('Reminder intervals', () {
    test('legacy whole-hour settings migrate to minutes', () async {
      SharedPreferences.setMockInitialValues({
        'notif_feeding_hours': 2,
        'notif_diaper_hours': 5,
      });
      final s = await NotificationService.instance.loadSettings();
      expect(s.feedingMinutes, 120);
      expect(s.diaperMinutes, 300);
    });

    test('formatInterval', () {
      expect(formatInterval(const Duration(minutes: 45)), '45 min');
      expect(formatInterval(const Duration(hours: 3)), '3 h');
      expect(formatInterval(const Duration(minutes: 150)), '2 h 30 min');
    });
  });

  group('Skin conditions', () {
    test('updatedToday and first/latest photo pair', () {
      final c = SkinCondition(
        name: 'Eczema',
        startDate: DateTime(2026, 1, 1),
        updates: [
          SkinUpdate(date: DateTime(2026, 1, 1), severity: 3, photoPath: 'a'),
          SkinUpdate(date: DateTime(2026, 1, 2), severity: 2),
          SkinUpdate(date: DateTime.now(), severity: 1, photoPath: 'c'),
        ],
      );
      expect(c.updatedToday, isTrue);
      final pair = c.firstAndLatestPhotos!;
      expect(pair.$1.photoPath, 'a');
      expect(pair.$2.photoPath, 'c');
    });
  });

  group('ageAt', () {
    final l = AppLocalizationsEn();
    final birth = DateTime(2026, 1, 15);

    test('days in the first month', () {
      expect(ageAt(birth, DateTime(2026, 1, 15), l), 'Birth day');
      expect(ageAt(birth, DateTime(2026, 1, 25), l), '10 days old');
    });

    test('months and days', () {
      expect(ageAt(birth, DateTime(2026, 4, 17), l), '3 mo 2 d');
      // Day before the month anniversary is still the previous month.
      expect(ageAt(birth, DateTime(2026, 4, 14), l), '2 mo 30 d');
    });

    test('years and months after 2 years', () {
      expect(ageAt(birth, DateTime(2028, 3, 20), l), '2 yr 2 mo');
    });
  });
}
