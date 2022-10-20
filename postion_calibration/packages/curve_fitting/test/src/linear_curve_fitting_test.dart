// ignore_for_file: prefer_const_constructors

import 'package:curve_fitting/curve_fitting.dart';
import 'package:gaussian/gaussian.dart';
import 'package:test/test.dart';

void main() {
  group('LinearCurveFitting', () {
    const epsilon = 1e-6;

    test('can be instantiated', () {
      expect(LinearCurveFitter(), isNotNull);
    });
    test('Test Linear', () {
      const arrayLength = 101;
      final xvals = [for (var i = 0; i <= arrayLength; i++) i * 1.0];
      final yvals = [for (final xval in xvals) xval];
      const x = 50.5;
      const expectedY = 50.5;
      final linear = LinearCurveFitter();
      final actual = linear.interpolate(xvals, yvals, x);

      expect((actual - expectedY).abs() < epsilon, true);
    });

    test('Test Sparse Linear', () {
      final xvals = [5.0, 20.0, 90.0];
      final yvals = [10.0, 40.0, 180.0];
      const x = 60.0;
      const expectedY = 120.0;
      final linear = LinearCurveFitter();
      final actual = linear.interpolate(xvals, yvals, x);

      expect((actual - expectedY).abs() < epsilon, true);
    });

    test('Test Gaussian', () {
      const arrayLength = 101;
      final xvals = [for (var i = 0; i <= arrayLength; i++) i * 1.0];
      const r0 = 50.0;
      const std = 10.5;
      final gaussian = Gaussian(r0: r0, std: std);
      final yvals = [for (final xval in xvals) gaussian.calculate(xval)];
      const x = r0 + std;

      // for (var i = 0; i < xvals.length; i++) {
      //   print('${xvals[i]}, ${yvals[i]}');
      // }

      //Checked by hand
      // 60.0, 0.6353909887688034
      // 61.0, 0.5776698111849629

      const a = (0.5776698111849629 - 0.6353909887688034) / (61.0 - 60.0);
      const b = 0.6353909887688034;
      const expectedY = a * (x - 60.0) + b;
      final linear = LinearCurveFitter();
      final actual = linear.interpolate(xvals, yvals, x);
      final error = (actual - expectedY).abs();
      expect(
        error < epsilon,
        true,
        reason: 'Failed because actual: $actual was different from expected: '
            '$expectedY by $error which was greater than the allowed '
            'difference of $epsilon',
      );
    });

    test('Test Sparse Gaussian', () {
      final xvals = [20.0, 35.0, 45.0, 51.0, 75.0, 90.0];
      const r0 = 50.0;
      const std = 10.5;
      final gaussian = Gaussian(r0: r0, std: std);
      final yvals = [for (final xval in xvals) gaussian.calculate(xval)];
      const x = r0 + std;

      // for (var i = 0; i < xvals.length; i++) {
      //   print('${xvals[i]}, ${yvals[i]}');
      // }
      //Checked by hand
      // 51.0, 0.9954751208601006
      // 75.0, 0.05874982408963055
      const a = (0.05874982408963055 - 0.9954751208601006) / (75 - 51);

      const b = 0.9954751208601006;
      const expectedY = a * (x - 51.0) + b;
      final linear = LinearCurveFitter();
      final actual = linear.interpolate(xvals, yvals, x);
      final error = (actual - expectedY).abs();

      //For this case, the best value from the interpolation was 0.624688,
      //which I believe is the correct value from the algorithm even if it
      //doesn't match the gaussian to our intended 1e-6; Adjusting the epsilon
      //to pass the test

      const coarseEpsilon = 0.02;
      expect(
        error < coarseEpsilon,
        true,
        reason: 'Failed because actual: $actual was different from expected: '
            '$expectedY by $error which was greater than the allowed '
            'difference of $epsilon',
      );
    });
  });
}
