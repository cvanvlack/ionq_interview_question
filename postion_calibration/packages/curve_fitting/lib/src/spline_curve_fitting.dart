import 'package:curve_fitting/curve_fitting.dart';
import 'package:curve_fitting/src/helpers.dart';
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
    final nodes = createNodes(xvals, yvals);
    final spline = SplineInterpolation(nodes: nodes);
    return spline.compute(x);
  }
}
