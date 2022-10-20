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
  /// The [xvals] and [yvals] are the known x and y positions. [x] is the
  /// position that we would like to find the interpolated value. [x] must be
  /// greater or equal to min(xvals) and less than or equal to max(xvals).
  /// {@endtemplate}
  @override
  double interpolate(List<double> xvals, List<double> yvals, double x) {
    final nodes = _onlyTwoNodes(xvals, yvals, x);
    final linear = LinearInterpolation(nodes: nodes);
    return linear.compute(x);
  }

  List<InterpolationNode> _onlyTwoNodes(
    List<double> xvals,
    List<double> yvals,
    double x,
  ) {
    //Intentionally not doing any error checking...
    final i = xvals.indexWhere((element) => element > x);
    final newXvals = [xvals[i - 1], xvals[i]];
    final newYvals = [yvals[i - 1], yvals[i]];
    return createNodes(newXvals, newYvals);
  }
}
