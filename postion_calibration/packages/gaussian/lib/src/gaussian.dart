import 'dart:math';

/// {@template gaussian}
/// This class is responsible for calculating a Gaussian function according to
/// the formula: f(x) = exp(-(x-r0)^2 / 2 / std^2). This form is chosen such
/// that f(r0)=1.
/// {@endtemplate}
class Gaussian {
  /// {@macro gaussian}
  const Gaussian({
    required double r0,
    required double std,
  })  : _r0 = r0,
        _std = std;

  ///This is the center position of the gaussian
  final double _r0;

  ///This is the standard deviation of the gaussian
  final double _std;

  ///Calculates the value of a gaussian at position x according to f(x) = exp(-(x-r0)^2 / 2 / std^2).
  double calculate(double x) {
    return exp(-pow((x - _r0) / _std, 2) / 2);
  }
}
