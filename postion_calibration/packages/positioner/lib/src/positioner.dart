import 'package:dartz/dartz.dart';
import 'package:positioner/positioner.dart';

/// {@template positioner}
/// This is the class responsible for positioning the the laser along a single
/// axis. The positioner can travel between 0 and 1 inclusive.
/// {@endtemplate}
abstract class Positioner {
  /// {@macro positioner}
  const Positioner();

  /// {@template min_position}
  ///The minimum position the positioner can be commanded to without causing an
  /// out of range condition
  /// {@endtemplate}
  static const minPosition = 0.0;

  /// {@template max_position}
  ///The maximum position the positioner can be commanded to without causing an
  /// out of range condition
  /// {@endtemplate}
  static const maxPosition = 1.0;

  /// {@template move_mirror_to_position}
  /// This function moves the mirror to the correct position. It returns the
  /// commanded position upon success or returns a [PositionerFailure] if there
  /// are any problems
  /// {@endtemplate}
  Either<PositionerFailure, double> moveMirrorToPosition(double position);

  /// {@template position}
  /// Gets the current position of the positioner.
  /// {@endtemplate}
  double get position;
}
