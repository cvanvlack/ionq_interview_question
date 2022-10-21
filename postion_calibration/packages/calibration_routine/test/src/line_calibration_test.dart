// ignore_for_file: prefer_const_constructors

import 'package:calibration_routine/calibration_routine.dart';
import 'package:curve_fitting/curve_fitting.dart';
import 'package:ion_response/ion_response.dart';
import 'package:positioner/positioner.dart';
import 'package:test/test.dart';

void main() {
  group('LineCalibration', () {
    const actualCalibrationPosition = 0.25;
    const interactionWidth = 0.001;
    const numMeasurements = 100;

    test('Test Actual Out of Range', () {
      //Set the x positioner far away
      final xPositioner = MockPositioner(position: 0.75);

      //The y positioner is in the correct location for the ion
      final yPositioner = MockPositioner(position: actualCalibrationPosition);
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
      final lineCalibration = LineCalibrationRoutine(
        curveFitter: curveFitter,
        ionResponse: ionResponse,
        positioner: xPositioner,
        start: 0.7,
        numSteps: 101,
        step: 0.001,
        percentThreshold: 0.01,
      );

      lineCalibration.calibrate().fold(
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
      final yPositioner = MockPositioner(position: actualCalibrationPosition);
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
      final lineCalibration = LineCalibrationRoutine(
        curveFitter: curveFitter,
        ionResponse: ionResponse,
        positioner: xPositioner,
        start: 0.2,
        numSteps: 201,
        step: 0.001,
        percentThreshold: 0.01,
      );

      lineCalibration.calibrate().fold(
        (l) {
          expect(
            true,
            false,
            reason: 'Should have found something in range',
          );
        },
        (r) {
          final actual = r.peakX;
          const expected = actualCalibrationPosition;
          final error = (actual - expected).abs();
          const epsilon = 1e-6;
          expect(
            error < epsilon,
            true,
            reason: 'Expected the peak to be at $expected, but found it was at'
                ' $actual, which gave an error of $error which was greater than'
                ' $epsilon.',
          );
        },
      );
    });
  });
}
