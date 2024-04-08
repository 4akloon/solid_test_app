import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:solid_test_app/app/app.dart';
import 'package:solid_test_app/router/router.dart';

void main() {
  group('App Widget', () {
    testWidgets('consumes routerProvider and passes it to MaterialApp.router',
        (WidgetTester tester) async {
      final router = GoRouter(routes: []);

      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            routerProvider.overrideWithValue(router),
          ],
          child: const App(),
        ),
      );

      final MaterialApp materialApp = tester.widget(find.byType(MaterialApp));

      expect(materialApp.routerConfig, equals(router));
    });

    testWidgets('renders MaterialApp.router', (WidgetTester tester) async {
      await tester.pumpWidget(
        const ProviderScope(child: App()),
      );

      expect(find.byType(MaterialApp), findsOneWidget);
    });
  });
}
