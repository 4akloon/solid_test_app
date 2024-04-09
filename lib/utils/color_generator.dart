import 'dart:math';
import 'dart:ui';

/// [ColorGenerator] is a class that generates random colors.
class ColorGenerator {
  final Random _random;

  /// Generates a random color.
  ColorGenerator([int? seed]) : _random = Random(seed);

  /// Generates a random color.
  Color generate() {
    const a = 255;
    final r = _random.nextInt(256);
    final g = _random.nextInt(256);
    final b = _random.nextInt(256);

    return Color.fromARGB(a, r, g, b);
  }
}
