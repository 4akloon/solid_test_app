import 'package:flutter/material.dart';
import 'package:solid_test_app/views/home/widgets/home_background_switcher.dart';

/// [HomeView] is a StatelessWidget that displays a centered text widget.
class HomeView extends StatelessWidget {
  /// Creates a [HomeView] instance.
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBackgroundSwitcher(
        child: Text('Hello there'),
      ),
    );
  }
}
