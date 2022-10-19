import 'package:freezed_annotation/freezed_annotation.dart';

part 'ion_response_failure.freezed.dart';

/// {@template ion_response_failure}
///This class is a sealed union representing all of the different ways
///in which the ion_response could fail
///handle these failures
/// {@endtemplate}
@freezed
class IonResponseFailure with _$IonResponseFailure {
  /// {@template ion_response_read_failure}
  /// Returned if there are any errors reading the ion response
  /// {@endtemplate}
  const factory IonResponseFailure.ionResponseReadFailure([String? message]) =
      IonResponseReadFailure;
}
