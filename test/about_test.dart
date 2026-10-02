import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_baby_tracker/l10n/app_localizations.dart';
import 'package:simple_baby_tracker/labels.dart';
import 'package:simple_baby_tracker/pages/about.dart';

void main() {
  testWidgets('About page shows the disclaimer, licence and source link', (
    tester,
  ) async {
    // Tall screen: the list builds lazily and the licences button is last.
    tester.view.physicalSize = const Size(800, 2600);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.reset);

    await tester.pumpWidget(
      const MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: AboutPage(),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Not medical advice'), findsOneWidget);
    expect(find.textContaining('GNU General Public License'), findsOneWidget);
    expect(find.text(sourceCodeUrl), findsOneWidget);
    expect(find.text('Open-source licences'), findsOneWidget);
    expect(find.textContaining('no internet access'), findsOneWidget);
  });

  test('every stool-colour shade has a distinct name in every language', () {
    for (final locale in AppLocalizations.supportedLocales) {
      final l = lookupAppLocalizations(locale);
      final names = [for (var i = 1; i <= 9; i++) pooShadeName('$i', l)];
      expect(names.where((n) => n.isEmpty), isEmpty, reason: '$locale');
      expect(names.toSet(), hasLength(9), reason: 'duplicate in $locale');
    }
  });
}
