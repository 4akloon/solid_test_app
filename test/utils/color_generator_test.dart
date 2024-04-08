import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:solid_test_app/utils/color_generator.dart';

void main() {
  group('ColorGenerator', () {
    test('should generate a color', () {
      final colorGenerator = ColorGenerator();
      final color = colorGenerator.generate();

      expect(color, isA<Color>());
    });

    test('should generate a color with alpha value of 255', () {
      final colorGenerator = ColorGenerator();
      final color = colorGenerator.generate();

      const alpha = 255;

      expect(color.alpha, equals(alpha));
    });

    test('should generate different colors when called multiple times', () {
      final colorGenerator = ColorGenerator();
      final color1 = colorGenerator.generate();
      final color2 = colorGenerator.generate();

      expect(color1, isNot(equals(color2)));
    });

    test('should generate the same color for the same seed', () {
      const seed = 123;

      final colorGenerator1 = ColorGenerator(seed);
      final color1 = colorGenerator1.generate();

      final colorGenerator2 = ColorGenerator(seed);
      final color2 = colorGenerator2.generate();

      expect(color1, equals(color2));
    });
  });
}
