import 'package:equatable/equatable.dart';

/// {@template measurement}
/// Used for holding a measurement in a particular location in 2D space. Can be
/// used for 1D by omitting the y argument.
/// {@endtemplate}
class Measurement extends Equatable {
  /// {@macro measurement}
  const Measurement({
    required double x,
    double y = 0,
    required int numPhotons,
    required int numMeasurements,
  })  : _x = x,
        _y = y,
        _numPhotons = numPhotons,
        _numMeasurements = numMeasurements;

  final double _x;
  final double _y;
  final int _numPhotons;
  final int _numMeasurements;

  /// The x location of this measurement in 2D space.
  double get x => _x;

  /// The y location of this measurement in 2D space. Set to 0 in 1D space.
  double get y => _y;

  /// The number of photons measured at this location.
  int get numPhotons => _numPhotons;

  /// The number of measurements at this location
  int get numMeasurements => _numMeasurements;

  /// The signal percentage at this location. I.e. numPhotons/numMeasurements
  double get percentage => _numPhotons / _numMeasurements;

  @override
  List<Object> get props => [_x, _y, _numPhotons, _numMeasurements];
}
