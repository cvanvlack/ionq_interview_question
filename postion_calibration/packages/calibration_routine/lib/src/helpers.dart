import 'package:calibration_routine/calibration_routine.dart';
import 'package:calibration_routine/src/models/measurement.dart';
import 'package:dartz/dartz.dart';

import 'package:ion_response/ion_response.dart';
import 'package:positioner/positioner.dart';

/// Used to return the left of a value or the default if the left doesn't exist
A leftOrDefault<A, B>(Either<A, B> e, A defaultA) {
  return e.swap().getOrElse(
        () => defaultA,
      );
}

/// Used to make the Error handling a little easier.
extension GetMeasurement on Either<CalibrationFailure, Measurement> {
  ///Converts an Either<CalibrationFailure,Measurement> directly into a
  ///measurement.
  Measurement getMeasurement() {
    // ignore: unnecessary_this
    return this.getOrElse(
      () => const Measurement(
        x: 0,
        numPhotons: 0,
        numMeasurements: 1,
      ),
    );
  }
}

/// Maps PositionerFailure errors to CalibrationFailure errors
CalibrationFailure positionerFailureToCalibrationFailure(
  Either<PositionerFailure, double> either,
) {
  //Return a read failure if we can't figure out what the error is.
  final failure = either.swap().getOrElse(
        () => const PositionerFailure.unknown(),
      );
  return CalibrationFailure.positionerFailure(failure.toString());
}

/// Maps IonResponseFailure errors to CalibrationFailure errors
CalibrationFailure ionResponseFailureToCalibrationFailure(
  Either<IonResponseFailure, int> either,
) {
  final failure = either.swap().getOrElse(
        () => const IonResponseFailure.unknown(),
      );
  return CalibrationFailure.positionerFailure(failure.toString());
}
