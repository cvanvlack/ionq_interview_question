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
  /// The [xvals] and [signals] are the known x and y positions. [x] is the
  /// position that we would like to find the interpolated value. [x] must be
  /// greater or equal to min(xvals) and less than or equal to max(xvals).
  /// {@endtemplate}
  @override
  double interpolate(List<double> xvals, List<double> signals, double x) {
    final nodes = createNodes(xvals, signals);
    final spline = SplineInterpolation(nodes: nodes);
    return spline.compute(x);
  }

  /// {@template get_peak_location}
  /// The [xvals] and [signals] are the known x and y positions. Using a spline
  /// interpolation method the best that can be done is to return the max value.
  /// todo: Enforce that xvals and signals are the same length.
  /// {@endtemplate}
  @override
  PeakInfo getPeakLocation(List<double> xvals, List<double> signals) {
    if (signals.isEmpty) {
      return PeakInfo.empty();
    }
    var peakX = double.negativeInfinity;
    var peakSignal = double.negativeInfinity;
    for (var i = 0; i < xvals.length; i++) {
      if (signals[i] > peakSignal) {
        peakX = xvals[i];
        peakSignal = signals[i];
      }
    }
    final peakStd = weightedStdDeviation(xvals, signals);
    final peakInfo = PeakInfo(
      peakX: peakX,
      peakSignal: peakSignal,
      peakStd: peakStd,
    );

    return peakInfo;
  }
}
