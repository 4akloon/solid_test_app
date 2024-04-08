import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:solid_test_app/utils/color_generator.dart';

/// [HomeBackgroundSwitcher] is a StatelessWidget that switches the background
/// color of the home view.
class HomeBackgroundSwitcher extends HookWidget {
  /// Creates a [HomeBackgroundSwitcher] instance.
  const HomeBackgroundSwitcher({
    required this.child,
    super.key,
  });

  /// The child widget
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final colorsGenerator = useMemoized(ColorGenerator.new);
    final color = useState<Color>(colorsGenerator.generate());

    return GestureDetector(
      onTap: () => color.value = colorsGenerator.generate(),
      child: Container(
        color: color.value,
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
