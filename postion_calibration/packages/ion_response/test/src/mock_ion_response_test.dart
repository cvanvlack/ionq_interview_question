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
    const xstartingPosition = 1.0;
    const ystartingPosition = 1.0;
    const xPosition = 1.0;
    const yPosition = 1.0;
    const std = 2.0;

    const epsilon = 1e-6;

    late MockPositioner xPositioner;
    late MockPositioner yPositioner;

    late MockIonResponse mockIonResponse;

    setUp(() async {
      xPositioner = MockPositioner(
        position: xstartingPosition,
      );
      yPositioner = MockPositioner(
        position: ystartingPosition,
      );

      mockIonResponse = MockIonResponse(
        actualXPosition: xPosition,
        actualYPosition: yPosition,
        xPositioner: xPositioner,
        yPositioner: yPositioner,
        interactionWidth: std,
      );
    });
    test('can be instantiated', () {
      expect(mockIonResponse, isNotNull);
    });

    test('Broken reads throw an error', () {
      final brokenIonResponse = MockIonResponse(
        actualXPosition: xPosition,
        actualYPosition: yPosition,
        xPositioner: xPositioner,
        yPositioner: yPositioner,
        interactionWidth: std,
        brokenRead: true,
      );
      expect(
        brokenIonResponse.measureIonResponse(),
        left<IonResponseFailure, double>(
          const IonResponseFailure.ionResponseReadFailure(),
        ),
      );
    });
    test('Test response at center, then at 1 standard deviation away', () {
      final actualAtCenter =
          mockIonResponse.measureIonResponse().getOrElse(() => double.infinity);
      const expectedAtCenter = 1.0;
      expect((actualAtCenter - expectedAtCenter).abs() < epsilon, true);

      xPositioner.moveMirrorToPosition(xstartingPosition + std);
      final actualAtStd =
          mockIonResponse.measureIonResponse().getOrElse(() => double.infinity);
      const expectedAtStd = 0.60653;

      expect((actualAtStd - expectedAtStd).abs() < epsilon, true);
    });
  });
}
