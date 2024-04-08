import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:solid_test_app/router/router.dart';
import 'package:solid_test_app/views/home/home_route.dart';

void main() {
  group('routerProvider', () {
    test('provides a GoRouter instance', () async {
      final container = ProviderContainer();
      final router = container.read(routerProvider);

      expect(router, isA<GoRouter>());
    });

    test('GoRouter has correct initial location', () async {
      final container = ProviderContainer();
      final router = container.read(routerProvider);

      final location = router.routeInformationProvider.value.uri.toString();

      expect(location, equals(const HomeRoute().location));
    });

    test('GoRouter has correct routes', () async {
      final container = ProviderContainer();
      final router = container.read(routerProvider);

      final routes = router.configuration.routes
          .whereType<GoRoute>()
          .map((route) => route.path);

      final location = ($homeRoute as GoRoute).path;

      expect(routes, contains(location));
    });
  });
}
