import 'package:freezed_annotation/freezed_annotation.dart';

part 'positioner_failure.freezed.dart';

/// {@template positioner_failure}
///This class is a sealed union representing all of the different ways
///in which positioning may fail so that the application can appropriately
///handle these failures
/// {@endtemplate}
@freezed
class PositionerFailure with _$PositionerFailure {
  /// {@template positioner_read_failure}
  /// Returned if there are any errors reading the positioners position
  /// {@endtemplate}
  const factory PositionerFailure.positionerReadFailure([String? message]) =
      PositionerReadFailure;

  /// {@template positioner_write_failure}
  /// Returned if there are any errors writing the positioners position
  /// {@endtemplate}
  const factory PositionerFailure.positionerWriteFailure([String? message]) =
      PositionerWriteFailure;

  /// {@template positioner_write_failure}
  /// Returned if there are any errors writing the positioners position
  /// {@endtemplate}
  const factory PositionerFailure.maxUpperLimit([String? message]) =
      MaxUpperLimit;

  /// {@template positioner_write_failure}
  /// Returned if there are any errors writing the positioners position
  /// {@endtemplate}
  const factory PositionerFailure.maxLowerLimit([String? message]) =
      MaxLowerLimit;

  /// {@template positioner_unknown_failure}
  /// Returned if there are any unknown errors with the positioner
  /// {@endtemplate}
  const factory PositionerFailure.unknown([String? message]) =
      UnknownPositionerFailure;
}
