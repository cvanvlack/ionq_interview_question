import 'dart:math';

import 'package:equatable/equatable.dart';

/// {@template gaussian}
/// This class is responsible for calculating a Gaussian function according to
/// the formula: f(x,y) = exp(-((x-x0)^2 +(y-y0)^2) / 2 / std^2). This form is chosen such
/// that f(r0)=1.
/// {@endtemplate}
class Gaussian2D extends Equatable {
  /// {@macro gaussian}
  const Gaussian2D({
    required double x0,
    required double y0,
    required double std,
  })  : _x0 = x0,
        _y0 = y0,
        _std = std;

  ///This is the x center position of the gaussian
  final double _x0;

  ///This is the x center position of the gaussian
  final double _y0;

  ///This is the standard deviation of the gaussian
  final double _std;

  ///Calculates the value of a gaussian at position x according to
  ///f(x,y) = exp(-((x-x0)^2 +(y-y0)^2) / 2 / std^2)
  double calculate(double x, double y) {
    final xval = pow(x - _x0, 2);
    final yval = pow(y - _y0, 2);
    final stdSq = pow(_std, 2);
    return exp(-(xval + yval) / 2 / stdSq);
  }

  @override
  List<Object> get props => [_x0, _y0, _std];
}
