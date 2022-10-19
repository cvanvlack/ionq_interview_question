// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:dartz/dartz.dart';
import 'package:positioner/positioner.dart';

// ignore_for_file: prefer_const_constructors
import 'package:test/test.dart';

void main() {
  group('MockPositioner', () {
    const startingPosition = 0.5;

    late MockPositioner defaultMockPositioner;

    setUp(() async {
      defaultMockPositioner = MockPositioner(
        position: startingPosition,
      );
      // print(defaultMockPositioner);
    });

    test('can be instantiated', () {
      expect(MockPositioner(), isNotNull);
    });

    test('Broken reads throw an error', () {
      const newPosition = 0.75;
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
      const newPosition = 0.75;
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
      //create a new object from the default because the MockPosition has a
      //tate.
      final positioner = defaultMockPositioner.copyWith();
      const newPosition = Positioner.maxPosition + 1;
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
      //create a new object from the default because the MockPosition has a
      //state.
      final positioner = defaultMockPositioner.copyWith();
      const newPosition = Positioner.minPosition - 1;
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
        positioner.moveMirrorToPosition(Positioner.maxPosition),
        right<PositionerFailure, double>(Positioner.maxPosition),
      );
      //On a failure the positioner should be at the same position
      expect(
        positioner.position,
        Positioner.maxPosition,
      );
    });

    test('Can go to min limit', () {
      //create a new object from the default because the MockPosition has a
      //state.
      final positioner = defaultMockPositioner.copyWith();
      expect(
        positioner.moveMirrorToPosition(Positioner.minPosition),
        right<PositionerFailure, double>(Positioner.minPosition),
      );
      expect(
        positioner.position,
        Positioner.minPosition,
      );
    });

    test('Can go within limits higher than starting position', () {
      const newPosition = 0.75;
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
    test('Can go within limits lower than starting position', () {
      const newPosition = 0.25;
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

    test('Can go to 0', () {
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
