import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:mockito/annotations.dart';
import 'package:solid_test_app/views/home/home_route.dart';
import 'package:solid_test_app/views/home/home_view.dart';

@GenerateMocks([BuildContext, GoRouterState])
import 'home_route_test.mocks.dart';

void main() {
  group('HomeRoute', () {
    test('should create correct location', () {
      const route = HomeRoute();

      expect(route.location, equals('/'));
    });

    testWidgets('should build HomeView widget', (tester) async {
      final mockContext = MockBuildContext();
      final mockState = MockGoRouterState();
      const route = HomeRoute();

      final widget = route.build(mockContext, mockState);

      expect(widget, isA<HomeView>());

      await tester.pumpWidget(MaterialApp(home: widget));

      expect(find.byType(HomeView), findsOneWidget);
    });
  });
}
