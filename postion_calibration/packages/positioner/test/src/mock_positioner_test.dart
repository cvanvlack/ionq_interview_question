// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:dartz/dartz.dart';
import 'package:positioner/src/mock_positioner.dart';
import 'package:positioner/src/positioner_failure.dart';
// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';

void main() {
  group('MockPositioner', () {
    const startingPosition = 1.0;
    const maxLimit = 11.0;
    const minLimit = -11.0;

    late MockPositioner defaultMockPositioner;

    setUp(() async {
      defaultMockPositioner = MockPositioner(
        maxPosition: maxLimit,
        minPosition: minLimit,
        position: startingPosition,
      );
      // print(defaultMockPositioner);
    });

    test('can be instantiated', () {
      expect(MockPositioner(), isNotNull);
    });

    test('Broken reads throw an error', () {
      const newPosition = 2.0;
      final positioner = defaultMockPositioner.copyWith(
        brokenRead: true,
      );

      expect(
        positioner.moveMirrorToPosition(newPosition),
        left<PositionerFailure, double>(
          PositionerFailure.positionerReadFailure(),
        ),
      );
      //On a failure the positioner should be at the same position
      expect(
        positioner.position,
        startingPosition,
      );
    });
    test('Broken writes throw an error', () {
      const newPosition = 2.0;
      final positioner = defaultMockPositioner.copyWith(
        brokenWrite: true,
      );
      expect(
        positioner.moveMirrorToPosition(newPosition),
        left<PositionerFailure, double>(
          PositionerFailure.positionerWriteFailure(),
        ),
      );
      //On a failure the positioner should be at the same position
      expect(
        positioner.position,
        startingPosition,
      );
    });

    test("Can't go above max limit", () {
      const newPosition = 12.0;
      //create a new object from the default because the MockPosition has a
      //tate.
      final positioner = defaultMockPositioner.copyWith();
      expect(
        positioner.moveMirrorToPosition(newPosition),
        left<PositionerFailure, double>(
          PositionerFailure.maxUpperLimit(),
        ),
      );
      //On a failure the positioner should be at the same position
      expect(
        positioner.position,
        startingPosition,
      );
    });

    test("Can't go below min limit", () {
      const newPosition = -12.0;
      //create a new object from the default because the MockPosition has a
      //state.
      final positioner = defaultMockPositioner.copyWith();

      expect(
        positioner.moveMirrorToPosition(newPosition),
        left<PositionerFailure, double>(
          PositionerFailure.maxLowerLimit(),
        ),
      );
      //On a failure the positioner should be at the same position
      expect(
        positioner.position,
        startingPosition,
      );
    });

    test('Can go to max limit', () {
      //create a new object from the default because the MockPosition has a
      //state.
      final positioner = defaultMockPositioner.copyWith();
      expect(
        positioner.moveMirrorToPosition(maxLimit),
        right<PositionerFailure, double>(maxLimit),
      );
      //On a failure the positioner should be at the same position
      expect(
        positioner.position,
        maxLimit,
      );
    });

    test('Can go to min limit', () {
      //create a new object from the default because the MockPosition has a
      //state.
      final positioner = defaultMockPositioner.copyWith();
      expect(
        positioner.moveMirrorToPosition(minLimit),
        right<PositionerFailure, double>(minLimit),
      );
      expect(
        positioner.position,
        minLimit,
      );
    });

    test('Can go within limits positive', () {
      const newPosition = 2.0;
      //create a new object from the default because the MockPosition has a
      //state.
      final positioner = defaultMockPositioner.copyWith();
      expect(
        positioner.moveMirrorToPosition(newPosition),
        right<PositionerFailure, double>(newPosition),
      );

      expect(
        positioner.position,
        newPosition,
      );
    });
    test('Can go within limits negative', () {
      const newPosition = -2.0;
      //create a new object from the default because the MockPosition has a
      //state.
      final positioner = defaultMockPositioner.copyWith();

      expect(
        positioner.moveMirrorToPosition(newPosition),
        right<PositionerFailure, double>(newPosition),
      );
      expect(
        positioner.position,
        newPosition,
      );
    });

    test('Can go within limits 0', () {
      const newPosition = 0.0;
      //create a new object from the default because the MockPosition has a
      //state.
      final positioner = defaultMockPositioner.copyWith();
      expect(
        positioner.moveMirrorToPosition(newPosition),
        right<PositionerFailure, double>(newPosition),
      );
      expect(
        positioner.position,
        newPosition,
      );
    });
  });
}
