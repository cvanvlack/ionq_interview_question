import 'package:dartz/dartz.dart';
import 'package:positioner/positioner.dart';

/// {@template positioner}
/// This is the class responsible for positioning the the laser along a single
/// axis
/// {@endtemplate}
abstract class Positioner {
  /// {@macro positioner}
  const Positioner();

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
