import 'dart:math';

import 'package:curve_fitting/curve_fitting.dart';
import 'package:equations/equations.dart';

/// {@template spline_curve_fitter}
/// This class interpolats points using a spline algorithm
/// https://en.wikipedia.org/wiki/Spline_interpolation
/// {@endtemplate}
class SplineCurveFitter extends CurveFitter {
  /// {@macro spline_curve_fitter}
  const SplineCurveFitter();

  /// {@template interpolate}
  /// The [xvals] and [yvals] are the known x and y positions. [x] is the
  /// position that we would like to find the interpolated value. [x] must be
  /// greater or equal to min(xvals) and less than or equal to max(xvals).
  /// {@endtemplate}
  @override
  double interpolate(List<double> xvals, List<double> yvals, double x) {
    final nodes = _createNodes(xvals, yvals);
    final spline = SplineInterpolation(nodes: nodes);
    return spline.compute(x);
  }

  /// Creates the list of nodes. NOTE: We currently aren't handling the
  /// following:
  ///
  /// 1. We have nothing that enforces xvals and yvals to be the same length. If
  /// one is longer than the other we take the shorter list.
  /// 2. I have no idea if the list of xvals needs to be monotonically
  /// increasing
  List<InterpolationNode> _createNodes(List<double> xvals, List<double> yvals) {
    final nodes = <InterpolationNode>[];
    final length = [xvals.length, yvals.length].reduce(min);
    for (var i = 0; i < length; i++) {
      nodes.add(InterpolationNode(x: xvals[i], y: yvals[i]));
    }
    return nodes;
  }
}
