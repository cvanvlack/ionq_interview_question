import 'package:equatable/equatable.dart';

/// {@template peak_info}
/// Used for returning information about a peak
/// {@endtemplate}
class PeakInfo extends Equatable {
  /// {@macro peak_info}
  const PeakInfo({
    required double peakX,
    required double peakSignal,
    required double peakStd,
  })  : _peakX = peakX,
        _peakSignal = peakSignal,
        _peakStd = peakStd;

  final double _peakX;
  final double _peakSignal;
  final double _peakStd;

  factory PeakInfo.empty() => const PeakInfo(
        peakX: double.nan,
        peakSignal: double.nan,
        peakStd: double.nan,
      );

  ///Gets the x location of the peak
  double get peakX => _peakX;

  ///Gets the signal of the peak
  double get peakSignal => _peakSignal;

  ///Gets the standard deviation of the peak
  double get peakStd => _peakStd;

  @override
  List<Object> get props => [_peakX, _peakSignal, _peakStd];
}
