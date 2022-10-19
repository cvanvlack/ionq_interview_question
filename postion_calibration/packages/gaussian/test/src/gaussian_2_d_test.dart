// ignore_for_file: prefer_const_constructors
import 'package:gaussian/gaussian.dart';
import 'package:test/test.dart';

void main() {
  group('Gaussian2D', () {
    const x0 = 1.0;
    const y0 = 1.0;
    const std = 2.0;

    const epsilon = 1e-6;

    late Gaussian2D defaultGaussian;
    setUp(() {
      defaultGaussian = Gaussian2D(
        x0: x0,
        y0: y0,
        std: std,
      );
    });
    test('can be instantiated', () {
      expect(defaultGaussian, isNotNull);
    });
    test('At exact position, should equal 1', () {
      const expected = 1.0;
      expect(
        (defaultGaussian.calculate(x0, y0) - expected) < epsilon,
        true,
      );
    });
    test('At 1 std in x should be 0.60653', () {
      const expected = 0.60653;
      expect(
        (defaultGaussian.calculate(x0 + std, y0) - expected) < epsilon,
        true,
      );
    });

    test('At 1 std in y should be 0.60653', () {
      const expected = 0.60653;
      expect(
        (defaultGaussian.calculate(x0, y0 + std) - expected) < epsilon,
        true,
      );
    });
  });
}
