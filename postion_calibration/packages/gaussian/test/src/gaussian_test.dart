// ignore_for_file: prefer_const_constructors
import 'package:gaussian/gaussian.dart';
import 'package:test/test.dart';

void main() {
  group('Gaussian', () {
    const r0 = 1.0;
    const std = 2.0;

    const epsilon = 1e-6;

    late Gaussian defaultGaussian;
    setUp(() {
      defaultGaussian = Gaussian(
        r0: r0,
        std: std,
      );
    });
    test('can be instantiated', () {
      expect(defaultGaussian, isNotNull);
    });
    test('At exact position, should equal 1', () {
      const expected = 1.0;
      final actual = defaultGaussian.calculate(r0);

      expect((actual - expected).abs() < epsilon, true);
    });
    test('At 1 std should be 0.60653', () {
      const expected = 0.60653;
      final actual = defaultGaussian.calculate(r0 + std);

      expect((actual - expected).abs() < epsilon, true);
    });
  });
}
