// A basic smoke test for the real app. The previous version of this file
// was still the counter-app boilerplate `flutter create` generates —
// checking for a "0"/"1" counter text and a lone `Icons.add` button — which
// this app has never had, so it always failed.

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_baby_tracker/main.dart';
import 'package:simple_baby_tracker/widgets/app_icon.dart';

void main() {
  testWidgets('App launches to the home screen with an empty profile', (
    WidgetTester tester,
  ) async {
    SharedPreferences.setMockInitialValues({});
    // Loading the real icon assets means any AppIcons name without a
    // matching SVG trips AppIcon's debug assert here.
    await tester.runAsync(AppIconCache.preload);

    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    // The bottom navigation bar's four destinations confirm AppShell made
    // it past its async profile/data load and rendered normally.
    expect(find.text('Home'), findsWidgets);
    expect(find.text('Graphs'), findsOneWidget);
    expect(find.text('Memories'), findsWidgets);
    expect(find.text('Settings'), findsOneWidget);
  });
}
