import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:positioner/positioner.dart';

/// {@template mock_positioner}
/// A Mock positioner for testing.
/// {@endtemplate}
class MockPositioner extends Positioner {
  /// {@macro mock_positioner}
  MockPositioner({
    bool brokenRead = false,
    bool brokenWrite = false,
    double position = 0,
  })  : _brokenRead = brokenRead,
        _brokenWrite = brokenWrite,
        _position = position,
        assert(
            position <= Positioner.maxPosition,
            'position must be less than or equal to '
            '${Positioner.maxPosition}'),
        assert(
            position >= Positioner.minPosition,
            'position must be grearter than or equal to '
            '${Positioner.minPosition}'),
        super();

  ///Used to test the case where the positioner can't read
  final bool _brokenRead;

  ///Used to test the case where the positioner can't write
  final bool _brokenWrite;

  ///This is the positioner's current position
  double _position;

  ///Gets the current position
  @override
  double get position => _position;

  /// {@template move_mirror_to_position}
  /// This function moves the mirror to the correct position. It returns the
  /// commanded position upon success or returns a [PositionerFailure] if there
  /// are any problems
  /// {@endtemplate}
  @override
  Either<PositionerFailure, double> moveMirrorToPosition(double position) {
    if (position > Positioner.maxPosition) {
      return left(const PositionerFailure.maxUpperLimit());
    }
    if (position < Positioner.minPosition) {
      return left(const PositionerFailure.maxLowerLimit());
    }
    if (_brokenRead) {
      return left(const PositionerFailure.positionerReadFailure());
    }
    if (_brokenWrite) {
      return left(const PositionerFailure.positionerWriteFailure());
    }
    _position = position;
    return right(_position);
  }

  /// {@template copy_with}
  /// Provides copyWith
  /// {@endtemplate}
  @visibleForTesting
  MockPositioner copyWith({
    bool? brokenRead,
    bool? brokenWrite,
    double? position,
  }) {
    return MockPositioner(
      brokenRead: brokenRead ?? _brokenRead,
      brokenWrite: brokenWrite ?? _brokenWrite,
      position: position ?? _position,
    );
  }

  @override
  String toString() {
    return 'MockPositioner(_brokenRead: $_brokenRead, _brokenWrite: '
        '$_brokenWrite, _position: $_position)';
  }

  @override
  List<Object> get props => [
        _brokenRead,
        _brokenWrite,
        position,
      ];
}
