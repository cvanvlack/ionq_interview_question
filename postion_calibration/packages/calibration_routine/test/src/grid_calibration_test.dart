// ignore_for_file: prefer_const_constructors

import 'package:calibration_routine/calibration_routine.dart';
import 'package:calibration_routine/src/grid_calibration_routine.dart';
import 'package:curve_fitting/curve_fitting.dart';
import 'package:ion_response/ion_response.dart';
import 'package:positioner/positioner.dart';
import 'package:test/test.dart';

void main() {
  group('GridCalibration', () {
    const actualCalibrationPosition = 0.25;
    const interactionWidth = 0.001;
    const numMeasurements = 100;

    test('Test Actual Out of Range', () {
      //Set the x positioner far away
      final xPositioner = MockPositioner(position: 0.75);

      //The y positioner is in the correct location for the ion
      final yPositioner = MockPositioner(position: 0.75);
      final curveFitter = SplineCurveFitter();
      final ionResponse = MockIonResponse(
        numMeasurements: numMeasurements,
        actualXPosition: actualCalibrationPosition,
        actualYPosition: actualCalibrationPosition,
        xPositioner: xPositioner,
        yPositioner: yPositioner,
        interactionWidth: interactionWidth,
      );

      //Sweep from 0.7 to 0.8 in steps of 0.001
      final gridCalibration = GridCalibrationRoutine(
        curveFitter: curveFitter,
        ionResponse: ionResponse,
        xPositioner: xPositioner,
        xStart: 0.7,
        xNumSteps: 101,
        xStep: 0.001,
        yPositioner: yPositioner,
        yStart: 0.7,
        yNumSteps: 101,
        yStep: 0.001,
        percentThreshold: 0.01,
      );

      gridCalibration.calibrate().fold(
        (l) {
          expect(l is CalibrationNotEnoughSignal, true);
        },
        (r) {
          expect(
            true,
            false,
            reason: 'When the line calibration is far from the source there'
                ' should be no signal',
          );
        },
      );
    });

    test('Test Actual In Range', () {
      //Set the x positioner far away
      final xPositioner = MockPositioner(position: 0.2);

      //The y positioner is in the correct location for the ion
      final yPositioner = MockPositioner(position: 0.2);
      final curveFitter = SplineCurveFitter();
      final ionResponse = MockIonResponse(
        numMeasurements: numMeasurements,
        actualXPosition: actualCalibrationPosition,
        actualYPosition: actualCalibrationPosition,
        xPositioner: xPositioner,
        yPositioner: yPositioner,
        interactionWidth: interactionWidth,
      );

      //Sweep from 0.2 to 0.4 in steps of 0.001
      final gridCalibration = GridCalibrationRoutine(
        curveFitter: curveFitter,
        ionResponse: ionResponse,
        xPositioner: xPositioner,
        xStart: 0.2,
        xNumSteps: 201,
        xStep: 0.001,
        yPositioner: yPositioner,
        yStart: 0.2,
        yNumSteps: 201,
        yStep: 0.001,
        percentThreshold: 0.01,
      );

      gridCalibration.calibrate().fold(
        (l) {
          expect(
            true,
            false,
            reason: 'Should have found something in range',
          );
        },
        (r) {
          const expected = actualCalibrationPosition;
          final actualX = r.xCalibration.peakX;
          final errorX = (actualX - expected).abs();

          final actualY = r.yCalibration.peakX;
          final errorY = (actualY - expected).abs();

          const epsilon = 1e-6;
          expect(
            errorX < epsilon,
            true,
            reason: 'Expected the peak to be at $expected, but found it was at'
                ' $actualX, which gave an error of $errorX which was greater '
                'than $epsilon.',
          );
          expect(
            errorY < epsilon,
            true,
            reason: 'Expected the peak to be at $expected, but found it was at'
                ' $actualY, which gave an error of $errorY which was greater '
                'than $epsilon.',
          );
        },
      );
    });
  });
}
