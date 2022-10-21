import 'package:freezed_annotation/freezed_annotation.dart';

part 'calibration_failure.freezed.dart';

/// {@template calibration_failure}
///This class is a sealed union representing all of the different ways
///in which calibration may fail.
/// {@endtemplate}
@freezed
class CalibrationFailure with _$CalibrationFailure {
  /// {@template calibration_failure_positioner}
  /// Returned if there are any errors with the positioner
  /// {@endtemplate}
  const factory CalibrationFailure.positionerFailure([String? message]) =
      CalibrationPositionerFailure;

  /// {@template calibration_failure_ion_response}
  /// Returned if there are any errors with the ion response
  /// {@endtemplate}
  const factory CalibrationFailure.ionResponseFailure([String? message]) =
      CalibrationIonResponseFailure;

  /// {@template calibration_failure_curve_fitting}
  /// Returned if there are any errors with the curve fitting
  /// {@endtemplate}
  const factory CalibrationFailure.curveFittingFailure([String? message]) =
      CalibrationCurveFittingFailure;

  /// {@template calibration_failure_curve_fitting}
  /// Returned if the maximum signal is not larger than the 
  /// _thresholdPercentage.
  /// {@endtemplate}
  const factory CalibrationFailure.notEnoughSignal([String? message]) =
      CalibrationNotEnoughSignal;

  /// {@template calibration_failure_unknown}
  /// Returned if there are any unknown errors with the calibration
  /// {@endtemplate}
  const factory CalibrationFailure.unknown([String? message]) =
      UnknownCalibrationFailure;
}
