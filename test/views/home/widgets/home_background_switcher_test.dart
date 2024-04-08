// FILEPATH: /Users/genius/Development/projects/flutter/solid_test_app/test/views/home/widgets/home_background_switcher_test.dart
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_test_app/views/home/widgets/home_background_switcher.dart';

void main() {
  group('HomeBackgroundSwitcher', () {
    testWidgets('can be rendered', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: HomeBackgroundSwitcher(
            child: SizedBox(),
          ),
        ),
      );

      expect(find.byType(HomeBackgroundSwitcher), findsOneWidget);
    });

    testWidgets('changes color when tapped', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: HomeBackgroundSwitcher(
            child: SizedBox(),
          ),
        ),
      );

      final initialColor =
          tester.firstWidget<Container>(find.byType(Container)).color;
      await tester.tap(find.byType(HomeBackgroundSwitcher));
      await tester.pump();

      final newColor =
          tester.firstWidget<Container>(find.byType(Container)).color;
      expect(initialColor, isNot(equals(newColor)));
    });

    testWidgets('displays its child', (WidgetTester tester) async {
      final key = UniqueKey();

      await tester.pumpWidget(
        MaterialApp(
          home: HomeBackgroundSwitcher(
            child: SizedBox(key: key),
          ),
        ),
      );

      expect(find.byKey(key), findsOneWidget);
    });

    testWidgets('child is not rebuilt when color changes',
        (WidgetTester tester) async {
      final key = UniqueKey();

      await tester.pumpWidget(
        MaterialApp(
          home: HomeBackgroundSwitcher(
            key: key,
            child: const SizedBox(),
          ),
        ),
      );

      final initialChild =
          tester.firstWidget<HomeBackgroundSwitcher>(find.byKey(key)).child;
      await tester.tap(find.byType(HomeBackgroundSwitcher));
      await tester.pump();

      final newChild =
          tester.firstWidget<HomeBackgroundSwitcher>(find.byKey(key)).child;
      expect(initialChild, equals(newChild));
    });
  });
}
