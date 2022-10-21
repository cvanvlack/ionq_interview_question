import 'package:calibration_routine/calibration_routine.dart';
import 'package:calibration_routine/src/helpers.dart';
import 'package:calibration_routine/src/models/calibration_1d.dart';
import 'package:calibration_routine/src/models/measurement.dart';
import 'package:curve_fitting/curve_fitting.dart';
import 'package:dartz/dartz.dart';
import 'package:ion_response/ion_response.dart';
import 'package:positioner/positioner.dart';

/// {@template line_calibration_routine}
/// Finds the optimal position for a single positioner, given a particular
/// curve fitting algorithm. The positioner is moved to [start] and then moved
/// by [step] [numSteps] times. Returns an error if the response is not above
/// [percentThreshold].
/// {@endtemplate}
class LineCalibrationRoutine {
  /// {@macro line_calibration_routine}
  const LineCalibrationRoutine({
    required CurveFitter curveFitter,
    required IonResponse ionResponse,
    required Positioner positioner,
    required double start,
    required int numSteps,
    required double step,
    double? percentThreshold,
  })  : _curveFitter = curveFitter,
        _ionResponse = ionResponse,
        _positioner = positioner,
        _start = start,
        _numSteps = numSteps,
        _step = step,
        _percentThreshold = percentThreshold;

  final CurveFitter _curveFitter;
  final IonResponse _ionResponse;
  final Positioner _positioner;
  final double _start;
  final int _numSteps;
  final double _step;
  final double? _percentThreshold;

  ///Gets the start position
  double get start => _start;

  ///Gets the step size
  double get step => _step;

  ///Gets the number of steps
  int get numSteps => _numSteps;

  ///Gets the percentThreshold
  double? get percentThreshold => _percentThreshold;

  /// {@template calibrate}
  /// This fuction performs a calibration routine.
  /// {@endtemplate}
  Either<CalibrationFailure, Calibration1D> calibrate() {
    //Create the arrays to populate.
    final xvals = <double>[];
    final signals = <double>[];

    //Create variables to hold the location of the peak
    var xMax = double.negativeInfinity;
    var xMaxIndex = -1;
    var signalMax = double.negativeInfinity;
    for (var i = 0; i < _numSteps; i++) {
      final position = _start + i * _step;
      //Go to the location and measure
      final measurementEither = _measureLocation(position);
      //If there are any failures then return.
      if (measurementEither.isLeft()) {
        return left(
          leftOrDefault(measurementEither, const CalibrationFailure.unknown()),
        );
      }
      //Convert back to the 1D arrays
      final measurement = measurementEither.getMeasurement();
      _addMeasurementToArrays(
        xvals,
        signals,
        measurement,
      );
      //Store the new maximum
      if (measurement.percentage > signalMax) {
        signalMax = measurement.percentage;
        xMax = measurement.x;
        xMaxIndex = i;
      }
    }

    //Fail if not enough signal
    if (percentThreshold != null) {
      if (signalMax < _percentThreshold!) {
        return left(
          CalibrationFailure.notEnoughSignal(
              'Signal was not higher than percentThreshold '
              '(${_percentThreshold!}). Largest signal was $signalMax'),
        );
      }
    }
    //Fit to the peak
    final peak = _curveFitter.getPeakLocation(xvals, signals);
    final calibration1d = Calibration1D(
      xMax: xMax,
      xMaxIndex: xMaxIndex,
      signalMax: signalMax,
      peakX: peak.peakX,
      peakSignal: peak.peakSignal,
      peakStd: peak.peakStd,
    );

    return right(calibration1d);
  }

  void _addMeasurementToArrays(
    List<double> xvals,
    List<double> signals,
    Measurement measurement,
  ) {
    xvals.add(measurement.x);
    signals.add(measurement.percentage);
  }

  Either<CalibrationFailure, Measurement> _measureLocation(double position) {
    final eitherPosition = _positioner.moveMirrorToPosition(position);
    final eitherResponse = _ionResponse.measureIonResponse();
    if (eitherPosition.isLeft()) {
      return left(positionerFailureToCalibrationFailure(eitherPosition));
    }
    if (eitherResponse.isLeft()) {
      return left(ionResponseFailureToCalibrationFailure(eitherResponse));
    }
    return right(
      Measurement(
        x: position,
        numPhotons: eitherResponse.getOrElse(() => 0),
        numMeasurements: _ionResponse.numMeasurements,
      ),
    );
  }
}
