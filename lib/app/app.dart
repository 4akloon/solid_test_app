import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:solid_test_app/router/router.dart';

/// The main [App] widget
class App extends ConsumerWidget {
  /// Creates a [App] instance.
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
