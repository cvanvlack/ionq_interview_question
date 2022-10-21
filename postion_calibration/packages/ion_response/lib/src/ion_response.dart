import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:ion_response/ion_response.dart';

/// {@template ion_response}
/// This is the class the provides the interface for concrete implementations
/// which are responsible for measuring the response from the ion.
/// {@endtemplate}
abstract class IonResponse extends Equatable {
  /// {@macro ion_response}
  const IonResponse({
    required int numMeasurements,
  }) : _numMeasurements = numMeasurements;

  static const _minNumPhotons = 0;

  final int _numMeasurements;

  /// {@template num_measurements}
  ///The number of measurements commanded. Required to calculate the percentage.
  ///you get a different answer something is seriously wrong.
  /// {@endtemplate}
  int get numMeasurements => _numMeasurements;

  /// {@template min_num_photons}
  ///The minimum possible number of photons that can be measured is zero. If
  ///you get a different answer something is seriously wrong.
  /// {@endtemplate}
  int get minNumPhotons => _minNumPhotons;

  /// {@template max_position}
  /// The maximum possible number of photons that an be measured. If you get a
  /// different answer something is seriously wrong.
  /// {@endtemplate}
  int get maxNumPhotons => _numMeasurements;

  /// {@template measure_ion_response}
  /// Measures the ion response. This will return an [int] value between 0 and
  /// 100.
  /// {@endtemplate}
  Either<IonResponseFailure, int> measureIonResponse();

  @override
  List<Object> get props => [_numMeasurements];
}
