import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_test_app/views/home/home_view.dart';
import 'package:solid_test_app/views/home/widgets/home_background_switcher.dart';

void main() {
  group('HomeView', () {
    testWidgets('should be created', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomeView()));

      expect(find.byType(HomeView), findsOneWidget);
    });

    testWidgets(
      'should contain HomeBackgroundSwitcher',
      (WidgetTester tester) async {
        await tester.pumpWidget(const MaterialApp(home: HomeView()));

        expect(find.byType(HomeBackgroundSwitcher), findsOneWidget);
      },
    );

    testWidgets('should display correct text', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomeView()));

      expect(find.text('Hello there'), findsOneWidget);
    });
  });
}
