// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:dartz/dartz.dart';
import 'package:ion_response/ion_response.dart';
import 'package:positioner/positioner.dart';
// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';

void main() {
  group('IonResponse', () {
    const xStartingPosition = 0.5;
    const yStartingPosition = 0.5;
    const xActualPosition = 0.5;
    const yActualPosition = 0.5;
    const std = 0.1;

    const numMeasurements = 100;

    const epsilon = 1e-6;

    late MockPositioner xPositioner;
    late MockPositioner yPositioner;

    late MockIonResponse mockIonResponse;

    setUp(() async {
      xPositioner = MockPositioner(
        position: xStartingPosition,
      );
      yPositioner = MockPositioner(
        position: yStartingPosition,
      );

      mockIonResponse = MockIonResponse(
        actualXPosition: xActualPosition,
        actualYPosition: yActualPosition,
        xPositioner: xPositioner,
        yPositioner: yPositioner,
        interactionWidth: std,
        numMeasurements: numMeasurements,
      );
    });
    test('can be instantiated', () {
      expect(mockIonResponse, isNotNull);
    });

    test('Broken reads throw an error', () {
      final brokenIonResponse = MockIonResponse(
        actualXPosition: xActualPosition,
        actualYPosition: yActualPosition,
        xPositioner: xPositioner,
        yPositioner: yPositioner,
        interactionWidth: std,
        brokenRead: true,
        numMeasurements: numMeasurements,
      );
      expect(
        brokenIonResponse.measureIonResponse(),
        left<IonResponseFailure, double>(
          const IonResponseFailure.ionResponseReadFailure(),
        ),
      );
    });
    test('Test response at center, then at 1 standard deviation away', () {
      final actualAtCenter = mockIonResponse.measureIonResponse().fold(
        (_) {
          return mockIonResponse.minNumPhotons - 1;
        },
        (r) => r,
      );
      const expectedAtCenter = numMeasurements;

      expect((actualAtCenter - expectedAtCenter).abs() < epsilon, true);

      xPositioner.moveMirrorToPosition(xStartingPosition + std);
      final actualAtStd = mockIonResponse.measureIonResponse().fold(
        (_) {
          return mockIonResponse.minNumPhotons - 1;
        },
        (r) => r,
      );
      const expectedAtStd = 61;

      expect((actualAtStd - expectedAtStd).abs() < epsilon, true);
    });
  });
}
