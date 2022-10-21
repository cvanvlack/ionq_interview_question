import 'package:equatable/equatable.dart';

/// {@template curve_fitter}
/// This is the class which provides the interface to curve fitting objects.
/// {@endtemplate}
abstract class CurveFitter extends Equatable {
  /// {@macro curve_fitter}
  const CurveFitter();

  /// {@template interpolate}
  /// The [xvals] and [signals] are the known x positions and signals. [x] is
  /// the position that we would like to find the interpolated value. [x] must
  /// be greater or equal to min(xvals) and less than or equal to max(xvals).
  ///
  /// todo: Enforce that xvals and signals are the same length.
  /// {@endtemplate}
  double interpolate(List<double> xvals, List<double> signals, double x);

  /// {@template get_peak_location}
  /// This returns the x location of the peak of the fit. To find the y
  /// location, run interpolate.
  /// todo: Enforce that xvals and signals are the same length.
  /// {@endtemplate}
  double getPeakLocation(List<double> xvals, List<double> signals);

  @override
  List<Object> get props => [];
}
