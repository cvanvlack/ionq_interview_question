import 'dart:math';

import 'package:curve_fitting/curve_fitting.dart';
import 'package:curve_fitting/src/helpers.dart';
import 'package:equations/equations.dart';

/// {@template spline_curve_fitter}
/// This class interpolats points using a linear algorithm
/// {@endtemplate}
class LinearCurveFitter extends CurveFitter {
  /// {@macro spline_curve_fitter}
  const LinearCurveFitter();

  /// {@template interpolate}
  /// The [xvals] and [signals] are the known x and y positions. [x] is the
  /// position that we would like to find the interpolated value. [x] must be
  /// greater or equal to min(xvals) and less than or equal to max(xvals).
  /// {@endtemplate}
  @override
  double interpolate(List<double> xvals, List<double> signals, double x) {
    final nodes = _onlyTwoNodes(xvals, signals, x);
    final linear = LinearInterpolation(nodes: nodes);
    return linear.compute(x);
  }

  /// {@template get_peak_location}
  /// The [xvals] and [signals] are the known x and y positions. Using a linear
  /// interpolation method the best that can be done is to return the max value.
  /// todo: Enforce that xvals and signals are the same length.
  /// {@endtemplate}
  @override
  double getPeakLocation(List<double> xvals, List<double> signals) {
    return signals.isEmpty ? double.nan : signals.reduce(max);
  }

  List<InterpolationNode> _onlyTwoNodes(
    List<double> xvals,
    List<double> signals,
    double x,
  ) {
    //Intentionally not doing any error checking...
    final i = xvals.indexWhere((element) => element > x);
    final newXvals = [xvals[i - 1], xvals[i]];
    final newYvals = [signals[i - 1], signals[i]];
    return createNodes(newXvals, newYvals);
  }
}
