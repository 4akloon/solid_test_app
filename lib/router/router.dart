import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:solid_test_app/views/home/home_route.dart';

/// The router provider
final routerProvider = Provider.autoDispose<GoRouter>((_) {
  return GoRouter(
    initialLocation: const HomeRoute().location,
    routes: [
      $homeRoute,
    ],
  );
});
