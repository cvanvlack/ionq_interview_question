import 'package:dartz/dartz.dart';
import 'package:ion_response/ion_response.dart';



/// {@template ion_response}
/// This is the class responsible for measuring the response from the ion
/// {@endtemplate}
abstract class IonResponse {
  /// {@macro ion_response}
  const IonResponse();

  /// {@template measure_ion_response}
  /// Measures the ion response. This will return a value between 0 and 1. 
  /// {@endtemplate}
  Either<IonResponseFailure, double> measureIonResponse();
}
