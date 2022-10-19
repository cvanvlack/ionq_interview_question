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
    double minPosition = -10.0,
    double maxPosition = 10.0,
    double position = 0,
  })  : _brokenRead = brokenRead,
        _brokenWrite = brokenWrite,
        _minPosition = minPosition,
        _maxPosition = maxPosition,
        _position = position,
        super();

  ///Used to test the case where the positioner can't read
  final bool _brokenRead;

  ///Used to test the case where the positioner can't write
  final bool _brokenWrite;

  ///The maximum position the positioner can be commanded to without causing an
  /// out of range condition
  final double _maxPosition;

  ///The minimum position the positioner can be commanded to without causing an
  /// out of range condition
  final double _minPosition;

  ///This is the positioners current position
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
    if (position > _maxPosition) {
      return left(const PositionerFailure.maxUpperLimit());
    }
    if (position < _minPosition) {
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

  /// {@template move_mirror_to_position}
  /// Creating a copyWith so that we can save some copy/paste in the testing.
  /// {@endtemplate}
  @visibleForTesting
  MockPositioner copyWith({
    bool? brokenRead,
    bool? brokenWrite,
    double? maxPosition,
    double? minPosition,
    double? position,
  }) {
    return MockPositioner(
      brokenRead: brokenRead ?? _brokenRead,
      brokenWrite: brokenWrite ?? _brokenWrite,
      maxPosition: maxPosition ?? _maxPosition,
      minPosition: minPosition ?? _minPosition,
      position: position ?? _position,
    );
  }

  @override
  String toString() {
    return 'MockPositioner(_brokenRead: $_brokenRead, _brokenWrite: '
        '$_brokenWrite, _maxPosition: $_maxPosition, _minPosition: '
        '$_minPosition, _position: $_position)';
  }
}
