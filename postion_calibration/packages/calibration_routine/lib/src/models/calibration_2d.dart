import 'package:calibration_routine/src/models/calibration_1d.dart';
import 'package:equatable/equatable.dart';

/// {@template calibration_2d}
///A class for holding a 2 dimensional calibration
/// {@endtemplate}
class Calibration2D extends Equatable {
  /// {@macro calibration_2d}
  const Calibration2D({
    required Calibration1D xCalibration,
    required Calibration1D yCalibration,
  })  : _xCalibration = xCalibration,
        _yCalibration = yCalibration;

  final Calibration1D _xCalibration;
  final Calibration1D _yCalibration;

  ///Gets the x calibration
  Calibration1D get xCalibration => _xCalibration;

  ///Gets the x calibration
  Calibration1D get yCalibration => _yCalibration;

  @override
  List<Object> get props => [_xCalibration, _yCalibration];
}
