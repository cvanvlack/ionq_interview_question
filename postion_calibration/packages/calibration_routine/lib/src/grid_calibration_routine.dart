import 'package:calibration_routine/calibration_routine.dart';
import 'package:calibration_routine/src/helpers.dart';
import 'package:calibration_routine/src/models/calibration_1d.dart';
import 'package:calibration_routine/src/models/calibration_2d.dart';
import 'package:calibration_routine/src/models/measurement.dart';
import 'package:curve_fitting/curve_fitting.dart';
import 'package:dartz/dartz.dart';
import 'package:ion_response/ion_response.dart' as ion;
import 'package:positioner/positioner.dart' as pos;

/// {@template grid_calibration_routine}
/// Finds the optimal position for a pair of positioners, given a particular
/// curve fitting algorithm. The positioner is moved to [xStart] and then moved
/// by [xStep] [xNumSteps] times. Similarly for y. Returns an error if the
/// response is not above
/// [percentThreshold].
/// {@endtemplate}
class GridCalibrationRoutine {
  /// {@macro line_calibration_routine}
  const GridCalibrationRoutine({
    required CurveFitter curveFitter,
    required ion.IonResponse ionResponse,
    required pos.Positioner xPositioner,
    required pos.Positioner yPositioner,
    required double xStart,
    required int xNumSteps,
    required double xStep,
    required double yStart,
    required int yNumSteps,
    required double yStep,
    double? percentThreshold,
  })  : _curveFitter = curveFitter,
        _ionResponse = ionResponse,
        _xPositioner = xPositioner,
        _xStart = xStart,
        _xNumSteps = xNumSteps,
        _xStep = xStep,
        _yPositioner = yPositioner,
        _yStart = yStart,
        _yNumSteps = yNumSteps,
        _yStep = yStep,
        _percentThreshold = percentThreshold;

  final CurveFitter _curveFitter;
  final ion.IonResponse _ionResponse;
  final pos.Positioner _xPositioner;
  final double _xStart;
  final int _xNumSteps;
  final double _xStep;
  final pos.Positioner _yPositioner;
  final double _yStart;
  final int _yNumSteps;
  final double _yStep;
  final double? _percentThreshold;

  ///Gets the X start position
  double get xStart => _xStart;

  ///Gets the Y start position
  double get yStart => _yStart;

  ///Gets the X step size
  double get xStep => _xStep;

  ///Gets the Y step size
  double get yStep => _yStep;

  ///Gets the number of steps in X
  int get xNumSteps => _xNumSteps;

  ///Gets the number of steps in Y
  int get yNumSteps => _yNumSteps;

  ///Gets the percentThreshold
  double? get percentThreshold => _percentThreshold;

  /// {@template calibrate}
  /// This fuction performs a calibration routine.
  /// {@endtemplate}
  Either<CalibrationFailure, Calibration2D> calibrate() {
    //Create the arrays to populate.
    final xvals = List.generate(_xNumSteps, (_) => 0.0, growable: false);
    final yvals = List.generate(_yNumSteps, (_) => 0.0, growable: false);
    final signals = List.generate(
      _xNumSteps,
      (_) => List.generate(_yNumSteps, (_) => 0.0),
      growable: false,
    );

    //Create variables to hold the location of the peak
    var xMax = double.negativeInfinity;
    var xMaxIndex = -1;
    var yMax = double.negativeInfinity;
    var yMaxIndex = -1;
    var signalMax = double.negativeInfinity;
    for (var i = 0; i < _xNumSteps; i++) {
      final xPosition = _xStart + i * _xStep;
      for (var j = 0; j < _yNumSteps; j++) {
        final yPosition = _yStart + j * _yStep;

        //Go to the location and measure
        final measurementEither = _measureLocation(xPosition, yPosition);
        //If there are any failures then return.
        if (measurementEither.isLeft()) {
          return left(
            leftOrDefault(
              measurementEither,
              const CalibrationFailure.unknown(),
            ),
          );
        }
        //Convert back to the 2D arrays
        final measurement = measurementEither.getMeasurement();
        xvals[i] = measurement.x;
        yvals[j] = measurement.y;
        signals[i][j] = measurement.percentage;
        //Store the new maximum
        if (measurement.percentage > signalMax) {
          signalMax = measurement.percentage;
          xMax = measurement.x;
          xMaxIndex = i;
          yMax = measurement.y;
          yMaxIndex = i;
        }
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

    //Create two arrays that orthogonal and cross at the location of the peak
    final signalsForCurveFitInX = <double>[];
    for (var i = 0; i < _xNumSteps; i++) {
      signalsForCurveFitInX.add(signals[i][yMaxIndex]);
    }
    final signalsForCurveFitInY = <double>[];
    for (var j = 0; j < _yNumSteps; j++) {
      signalsForCurveFitInY.add(signals[xMaxIndex][j]);
    }

    //Fit to the peak in the x direction
    final peakX = _curveFitter.getPeakLocation(xvals, signalsForCurveFitInX);
    //Fit to the peak in the y direction
    final peakY = _curveFitter.getPeakLocation(yvals, signalsForCurveFitInY);
    final xCalibration = Calibration1D(
      xMax: xMax,
      xMaxIndex: xMaxIndex,
      signalMax: signalMax,
      peakX: peakX.peakX,
      peakSignal: peakX.peakSignal,
      peakStd: peakX.peakStd,
    );

    final yCalibration = Calibration1D(
      xMax: yMax,
      xMaxIndex: yMaxIndex,
      signalMax: signalMax,
      peakX: peakY.peakX,
      peakSignal: peakY.peakSignal,
      peakStd: peakY.peakStd,
    );

    return right(
      Calibration2D(
        xCalibration: xCalibration,
        yCalibration: yCalibration,
      ),
    );
  }

  Either<CalibrationFailure, Measurement> _measureLocation(
    double xPosition,
    double yPosition,
  ) {
    final eitherXPosition = _xPositioner.moveMirrorToPosition(xPosition);
    final eitherYPosition = _yPositioner.moveMirrorToPosition(yPosition);
    final eitherResponse = _ionResponse.measureIonResponse();
    if (eitherXPosition.isLeft()) {
      return left(positionerFailureToCalibrationFailure(eitherXPosition));
    }
    if (eitherYPosition.isLeft()) {
      return left(positionerFailureToCalibrationFailure(eitherYPosition));
    }
    if (eitherResponse.isLeft()) {
      return left(ionResponseFailureToCalibrationFailure(eitherResponse));
    }
    return right(
      Measurement(
        x: xPosition,
        y: yPosition,
        numPhotons: eitherResponse.getOrElse(() => 0),
        numMeasurements: _ionResponse.numMeasurements,
      ),
    );
  }
}
