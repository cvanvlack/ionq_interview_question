import 'package:dartz/dartz.dart';
import 'package:gaussian/gaussian.dart';
import 'package:ion_response/ion_response.dart';
import 'package:positioner/positioner.dart';

/// {@template mock_positioner}
/// A Mock IonResponse class for testing.
/// {@endtemplate}
class MockIonResponse extends IonResponse {
  /// {@macro mock_ion_response}
  MockIonResponse({
    required super.numMeasurements,
    required Positioner xPositioner,
    required Positioner yPositioner,
    double actualXPosition = 0,
    double actualYPosition = 0,
    required double interactionWidth,
    bool brokenRead = false,
  })  : _xPositioner = xPositioner,
        _yPositioner = yPositioner,
        // _actualXPosition = actualXPosition,
        // _actualYPosition = actualYPosition,
        // _interactionWidth = interactionWidth,
        _gaussian = Gaussian2D(
          x0: actualXPosition,
          y0: actualYPosition,
          std: interactionWidth,
        ),
        _brokenRead = brokenRead,
        super();

  final Positioner _xPositioner;
  final Positioner _yPositioner;
  // final double _actualXPosition;
  // final double _actualYPosition;
  // final double _interactionWidth;

  final Gaussian2D _gaussian;

  ///Used to test the case where the ionResponse can't read
  final bool _brokenRead;

  /// {@template measure_ion_response}
  /// This function meausres the ion response of the system. For the mock object
  /// this is calculated via a Gaussian distribution from the center,
  /// multiplied by 100.
  /// {@endtemplate}
  @override
  Either<IonResponseFailure, int> measureIonResponse() {
    if (_brokenRead) {
      return left(const IonResponseFailure.ionResponseReadFailure());
    }
    final numPhotons = (_gaussian.calculate(
              _xPositioner.position,
              _yPositioner.position,
            ) *
            100)
        .round();
    if (numPhotons < minNumPhotons) {
      return left(const IonResponseFailure.ionResponseReadFailure());
    }
    if (numPhotons > maxNumPhotons) {
      return left(const IonResponseFailure.ionResponseReadFailure());
    }
    return right(numPhotons);
  }

  @override
  List<Object> get props => [
        _brokenRead,
        _xPositioner,
        _yPositioner,
        _gaussian,
        super.numMeasurements,
      ];
}
