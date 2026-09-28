import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_baby_tracker/models/medication_course.dart';
import 'package:simple_baby_tracker/models/milestone_entry.dart';
import 'package:simple_baby_tracker/models/vaccination_entry.dart';
import 'package:simple_baby_tracker/storage.dart';
import 'package:simple_baby_tracker/tracker_event.dart';

void main() {
  setUp(() {
    SharedPreferences.setMockInitialValues({});
  });

  group('Storage.parseImportJson', () {
    test('parses a legacy (v1, bare events map) export', () {
      const raw = '''
      {
        "2026-08-02": [
          {"id": "a1", "type": "feeding", "time": "2026-08-02T08:00:00.000", "data": {"amountMl": 90}}
        ]
      }
      ''';
      final result = Storage.parseImportJson(raw);
      expect(result.events.keys, contains('2026-08-02'));
      expect(result.events['2026-08-02']!.single.type, 'feeding');
      expect(result.events['2026-08-02']!.single.data['amountMl'], 90);
      expect(result.milestones, isEmpty);
      expect(result.vaccinations, isEmpty);
      expect(result.medicationCourses, isEmpty);
    });

    test('parses a v2 envelope export, including the side tables', () {
      const raw = '''
      {
        "version": 2,
        "events": {
          "2026-08-02": [
            {"id": "a1", "type": "feeding", "time": "2026-08-02T08:00:00.000", "data": {}}
          ]
        },
        "milestones": [
          {"id": "m1", "title": "first_smile", "date": "2026-06-01T00:00:00.000", "isPreset": true}
        ],
        "vaccinations": [
          {"id": "v1", "name": "HepB", "date": "2026-01-01T00:00:00.000"}
        ],
        "medicationCourses": [
          {"id": "c1", "name": "Tylenol", "dose": 2.5, "unit": "ml", "startDate": "2026-05-01T00:00:00.000"}
        ]
      }
      ''';
      final result = Storage.parseImportJson(raw);
      expect(result.events['2026-08-02']!.single.id, 'a1');
      expect(result.milestones.single.title, 'first_smile');
      expect(result.vaccinations.single.name, 'HepB');
      expect(result.medicationCourses.single.name, 'Tylenol');
    });

    test('rejects non-JSON input', () {
      expect(
        () => Storage.parseImportJson('not json at all'),
        throwsFormatException,
      );
    });

    test('rejects a JSON array at the top level', () {
      expect(() => Storage.parseImportJson('[1, 2, 3]'), throwsFormatException);
    });

    test('rejects a date entry that is not a list', () {
      expect(
        () => Storage.parseImportJson('{"2026-08-02": "oops"}'),
        throwsFormatException,
      );
    });

    test('tryParseImportJson returns null instead of throwing', () {
      expect(Storage.tryParseImportJson('garbage'), isNull);
      expect(Storage.tryParseImportJson('{"2026-08-02": []}'), isNotNull);
    });
  });

  group('Storage.importData', () {
    const babyId = 'test-baby';

    test('replace overwrites existing data outright', () async {
      await Storage.saveAll(babyId, {
        '2026-08-01': [
          TrackerEvent(
            id: 'old',
            type: 'diaper',
            time: DateTime(2026, 8, 1),
            data: {},
          ),
        ],
      });

      final imported = ImportBundle(
        events: {
          '2026-08-02': [
            TrackerEvent(
              id: 'new',
              type: 'feeding',
              time: DateTime(2026, 8, 2),
              data: {},
            ),
          ],
        },
      );

      final result = await Storage.importData(babyId, imported, merge: false);
      expect(result.keys, ['2026-08-02']);

      final reloaded = await Storage.loadAll(babyId);
      expect(reloaded.keys, ['2026-08-02']);
    });

    test('merge keeps existing days and adds new ones', () async {
      await Storage.saveAll(babyId, {
        '2026-08-01': [
          TrackerEvent(
            id: 'existing',
            type: 'diaper',
            time: DateTime(2026, 8, 1),
            data: {},
          ),
        ],
      });

      final imported = ImportBundle(
        events: {
          '2026-08-02': [
            TrackerEvent(
              id: 'new',
              type: 'feeding',
              time: DateTime(2026, 8, 2),
              data: {},
            ),
          ],
        },
      );

      final result = await Storage.importData(babyId, imported, merge: true);
      expect(result.keys, containsAll(['2026-08-01', '2026-08-02']));
      expect(result['2026-08-01']!.single.id, 'existing');
      expect(result['2026-08-02']!.single.id, 'new');
    });

    test('merge on the same day appends without duplicating by id', () async {
      await Storage.saveAll(babyId, {
        '2026-08-01': [
          TrackerEvent(
            id: 'shared-id',
            type: 'diaper',
            time: DateTime(2026, 8, 1, 8),
            data: {'note': 'original'},
          ),
        ],
      });

      final imported = ImportBundle(
        events: {
          '2026-08-01': [
            // Same id as the existing event — re-importing the same file
            // twice must not duplicate it.
            TrackerEvent(
              id: 'shared-id',
              type: 'diaper',
              time: DateTime(2026, 8, 1, 8),
              data: {'note': 'from import, should be dropped'},
            ),
            // Different id — this one should be added.
            TrackerEvent(
              id: 'brand-new',
              type: 'feeding',
              time: DateTime(2026, 8, 1, 12),
              data: {},
            ),
          ],
        },
      );

      final result = await Storage.importData(babyId, imported, merge: true);
      expect(result['2026-08-01']!.length, 2);
      expect(
        result['2026-08-01']!.map((e) => e.id),
        containsAll(['shared-id', 'brand-new']),
      );
      // The pre-existing event's data won the id collision, not the
      // imported duplicate's.
      expect(
        result['2026-08-01']!
            .firstWhere((e) => e.id == 'shared-id')
            .data['note'],
        'original',
      );
    });

    test('merges milestones, vaccinations and medication courses by id', () async {
      await Storage.saveMilestones(babyId, [
        MilestoneEntry(
          id: 'existing-milestone',
          title: 'first_smile',
          date: DateTime(2026, 6, 1),
          isPreset: true,
        ),
      ]);

      final imported = ImportBundle(
        events: const {},
        milestones: [
          MilestoneEntry(
            id: 'existing-milestone',
            title: 'from import, should be dropped',
            date: DateTime(2026, 6, 1),
            isPreset: true,
          ),
          MilestoneEntry(
            id: 'new-milestone',
            title: 'first_steps',
            date: DateTime(2026, 9, 1),
            isPreset: true,
          ),
        ],
        vaccinations: [
          VaccinationEntry(id: 'v1', name: 'HepB', date: DateTime(2026, 1, 1)),
        ],
        medicationCourses: [
          MedicationCourse(id: 'c1', name: 'Tylenol', dose: 2.5, unit: 'ml'),
        ],
      );

      await Storage.importData(babyId, imported, merge: true);

      final milestones = await Storage.loadMilestones(babyId);
      expect(milestones.map((m) => m.id), containsAll(['existing-milestone', 'new-milestone']));
      expect(
        milestones.firstWhere((m) => m.id == 'existing-milestone').title,
        'first_smile',
      );

      expect((await Storage.loadVaccinations(babyId)).single.id, 'v1');
      expect((await Storage.loadMedicationCourses(babyId)).single.id, 'c1');
    });
  });
}
