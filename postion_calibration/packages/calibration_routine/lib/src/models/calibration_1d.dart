import 'package:equatable/equatable.dart';

/// {@template calibration_1d}
///A class for holding the maximum signal location in 2D.
/// {@endtemplate}
class Calibration1D extends Equatable {
  /// {@macro calibration_1d}
  const Calibration1D({
    required double xMax,
    required int xMaxIndex,
    required double signalMax,
    required double peakX,
    required double peakSignal,
    required double peakStd,
  })  : _xMax = xMax,
        _xMaxIndex = xMaxIndex,
        _signalMax = signalMax,
        _peakX = peakX,
        _peakSignal = peakSignal,
        _peakStd = peakStd;

  final double _xMax;
  final int _xMaxIndex;
  final double _signalMax;

  final double _peakX;
  final double _peakSignal;
  final double _peakStd;

  ///Gets the x position of the maximum
  double get xMax => _xMax;

  ///Gets the x index of the maximum value
  int get xIndex => _xMaxIndex;

  ///Gets the signal at the maximum location
  double get signalMax => _signalMax;

  ///Gets the x location resulting from peak fitting.
  double get peakX => _peakX;

  ///Gets the peak signal resulting from peak fitting.
  double get peakSignal => _peakSignal;

  ///Gets the standard deviation which is the result of peak fitting.
  double get peakStd => _peakStd;

  @override
  List<Object> get props {
    return [
      _xMax,
      _xMaxIndex,
      _signalMax,
      _peakX,
      _peakSignal,
      _peakStd,
    ];
  }
}
