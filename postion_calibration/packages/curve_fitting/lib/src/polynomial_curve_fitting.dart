import 'dart:math';

import 'package:curve_fitting/curve_fitting.dart';
import 'package:curve_fitting/src/helpers.dart';
import 'package:equations/equations.dart';

/// {@template polynomial_curve_fitter}
/// This class interpolates points using a polynomial.
/// https://en.wikipedia.org/wiki/Spline_interpolation
/// {@endtemplate}
class PolyNomialCurveFitter extends CurveFitter {
  /// {@macro polynomial_curve_fitter}
  const PolyNomialCurveFitter();

  /// {@template interpolate}
  /// The [xvals] and [signals] are the known x and y positions. [x] is the
  /// position that we would like to find the interpolated value. [x] must be
  /// greater or equal to min(xvals) and less than or equal to max(xvals).
  /// {@endtemplate}
  @override
  double interpolate(List<double> xvals, List<double> signals, double x) {
    final nodes = createNodes(xvals, signals);
    final poly = PolynomialInterpolation(nodes: nodes);
    return poly.compute(x);
  }

  /// {@template get_peak_location}
  /// Finds the peak location using polynomial fitting
  /// {@endtemplate}
  @override
  double getPeakLocation(List<double> xvals, List<double> signals) {
    //Fit to a polynomial
    final nodes = createNodes(xvals, signals);
    final polyInterp = PolynomialInterpolation(nodes: nodes);
    final poly = polyInterp.buildPolynomial();
    //Find the roots of the polynomial to get the locations of the first
    //derivatives. I.e. the peaks.
    final roots = poly.solutions().map((e) => e.real).toList();

    //Only use the root that is in the vicinity of the maxima. There can be
    //crazy roots elsewhere.
    final maxYVal = signals.isEmpty ? double.nan : signals.reduce(max);
    final indexOfMaxYVal = signals.indexWhere((element) => element == maxYVal);
    final xValOfMaxYVal = xvals[indexOfMaxYVal];

    final rootsInRange = _findRootsInRange(xvals.first, xvals.last, roots);

    //If more than one root in range return the root closest to the maximum.
    if (rootsInRange.length == 1) {
      return rootsInRange[0];
    }
    if (rootsInRange.length > 1) {
      //Use the root closest to the location of the maximum
      return _findClosestRoot(roots, xValOfMaxYVal);
    }
    //If there are no roots in the range return nan
    return double.nan;
  }

  //finds the root closest to the xvalue
  double _findClosestRoot(List<double> roots, double xval) {
    final closestRoots = <double>[];
    for (final root in roots) {
      closestRoots.add((root - xval).abs());
    }
    return closestRoots.reduce(min);
  }

  //Only use the roots that are in range
  List<double> _findRootsInRange(
      double minRange, double maxRange, List<double> roots,) {
    final rootsInRange = <double>[];
    for (final root in roots) {
      if (root >= minRange && root <= maxRange) {
        rootsInRange.add(root);
      }
    }
    return rootsInRange;
  }
}
