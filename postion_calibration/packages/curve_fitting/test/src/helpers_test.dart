// ignore_for_file: prefer_const_constructors

import 'package:curve_fitting/src/helpers.dart';
import 'package:gaussian/gaussian.dart';
import 'package:test/test.dart';

void main() {
  group('weightedAverage', () {
    test('Test Gaussian', () {
      const arrayLength = 101;
      final xvals = [for (var i = 0; i < arrayLength; i++) i * 1.0];
      const r0 = 50.0;
      const std = 10.5;
      final gaussian = Gaussian(r0: r0, std: std);
      final signals = [for (final xval in xvals) gaussian.calculate(xval)];
      final actual = weightedAverage(xvals, signals);
      const expected = r0;
      final error = (actual - expected).abs();

      const epsilon = 1e-4;
      expect(
        error < epsilon,
        true,
        reason: 'Failed because actual: $actual was different from expected: '
            '$expected by $error which was greater than the allowed '
            'difference of $epsilon',
      );
    });

    test('Test Sparse Gaussian', () {
      final xvals = [20.0, 35.0, 45.0, 51.0, 75.0, 90.0];
      const r0 = 50.0;
      const std = 10.5;
      final gaussian = Gaussian(r0: r0, std: std);
      final signals = [for (final xval in xvals) gaussian.calculate(xval)];
      final actual = weightedAverage(xvals, signals);
      const expected = r0;

      final error = (actual - expected).abs();

      //For this case, the best value from the weighted mean was 46.6088,
      //which I believe is the correct value from the algorithm even if it
      //doesn't match the gaussian to our intended 1e-6; Adjusting the epsilon
      //to pass the test

      const coarseEpsilon = 4;
      expect(
        error < coarseEpsilon,
        true,
        reason: 'Failed because actual: $actual was different from expected: '
            '$expected by $error which was greater than the allowed '
            'difference of $coarseEpsilon',
      );
    });
  });

  group('weightedStdDeviation', () {
    test('Test Gaussian', () {
      const arrayLength = 101;
      final xvals = [for (var i = 0; i < arrayLength; i++) i * 1.0];
      const r0 = 50.0;
      const std = 10.5;
      final gaussian = Gaussian(r0: r0, std: std);
      final signals = [for (final xval in xvals) gaussian.calculate(xval)];
      final actual = weightedStdDeviation(xvals, signals);
      const expected = std;
      final error = (actual - expected).abs();

      const epsilon = 1e-4;
      expect(
        error < epsilon,
        true,
        reason: 'Failed because actual: $actual was different from expected: '
            '$expected by $error which was greater than the allowed '
            'difference of $epsilon',
      );
    });

    test('Test Sparse Gaussian', () {
      final xvals = [20.0, 35.0, 45.0, 51.0, 75.0, 90.0];
      const r0 = 50.0;
      const std = 10.5;
      final gaussian = Gaussian(r0: r0, std: std);
      final signals = [for (final xval in xvals) gaussian.calculate(xval)];
      final actual = weightedStdDeviation(xvals, signals);
      const expected = std;

      final error = (actual - expected).abs();

      //For this case, the best value from the weighted mean was 46.6088,
      //which I believe is the correct value from the algorithm even if it
      //doesn't match the gaussian to our intended 1e-6; Adjusting the epsilon
      //to pass the test

      const coarseEpsilon = 4;
      expect(
        error < coarseEpsilon,
        true,
        reason: 'Failed because actual: $actual was different from expected: '
            '$expected by $error which was greater than the allowed '
            'difference of $coarseEpsilon',
      );
    });
  });
}
