/// {@template curve_fitter}
/// This is the class which provides the interface to curve fitting objects. 
/// {@endtemplate}
abstract class CurveFitter {
  /// {@macro curve_fitter}
  const CurveFitter();

  /// {@template interpolate}
  /// The [xvals] and [yvals] are the known x and y positions. [x] is the 
  /// position that we would like to find the interpolated value. [x] must be 
  /// greater or equal to min(xvals) and less than or equal to max(xvals).
  /// 
  /// todo: Enforce that xvals and yvals are the same length. 
  /// {@endtemplate}
  double interpolate(List<double> xvals, List<double> yvals, double x);
}
