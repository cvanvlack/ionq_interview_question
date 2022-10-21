// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'calibration_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CalibrationFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) positionerFailure,
    required TResult Function(String? message) ionResponseFailure,
    required TResult Function(String? message) curveFittingFailure,
    required TResult Function(String? message) notEnoughSignal,
    required TResult Function(String? message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? positionerFailure,
    TResult? Function(String? message)? ionResponseFailure,
    TResult? Function(String? message)? curveFittingFailure,
    TResult? Function(String? message)? notEnoughSignal,
    TResult? Function(String? message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? positionerFailure,
    TResult Function(String? message)? ionResponseFailure,
    TResult Function(String? message)? curveFittingFailure,
    TResult Function(String? message)? notEnoughSignal,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalibrationPositionerFailure value)
        positionerFailure,
    required TResult Function(CalibrationIonResponseFailure value)
        ionResponseFailure,
    required TResult Function(CalibrationCurveFittingFailure value)
        curveFittingFailure,
    required TResult Function(CalibrationNotEnoughSignal value) notEnoughSignal,
    required TResult Function(UnknownCalibrationFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalibrationPositionerFailure value)? positionerFailure,
    TResult? Function(CalibrationIonResponseFailure value)? ionResponseFailure,
    TResult? Function(CalibrationCurveFittingFailure value)?
        curveFittingFailure,
    TResult? Function(CalibrationNotEnoughSignal value)? notEnoughSignal,
    TResult? Function(UnknownCalibrationFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalibrationPositionerFailure value)? positionerFailure,
    TResult Function(CalibrationIonResponseFailure value)? ionResponseFailure,
    TResult Function(CalibrationCurveFittingFailure value)? curveFittingFailure,
    TResult Function(CalibrationNotEnoughSignal value)? notEnoughSignal,
    TResult Function(UnknownCalibrationFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CalibrationFailureCopyWith<CalibrationFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalibrationFailureCopyWith<$Res> {
  factory $CalibrationFailureCopyWith(
          CalibrationFailure value, $Res Function(CalibrationFailure) then) =
      _$CalibrationFailureCopyWithImpl<$Res, CalibrationFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$CalibrationFailureCopyWithImpl<$Res, $Val extends CalibrationFailure>
    implements $CalibrationFailureCopyWith<$Res> {
  _$CalibrationFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalibrationPositionerFailureCopyWith<$Res>
    implements $CalibrationFailureCopyWith<$Res> {
  factory _$$CalibrationPositionerFailureCopyWith(
          _$CalibrationPositionerFailure value,
          $Res Function(_$CalibrationPositionerFailure) then) =
      __$$CalibrationPositionerFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CalibrationPositionerFailureCopyWithImpl<$Res>
    extends _$CalibrationFailureCopyWithImpl<$Res,
        _$CalibrationPositionerFailure>
    implements _$$CalibrationPositionerFailureCopyWith<$Res> {
  __$$CalibrationPositionerFailureCopyWithImpl(
      _$CalibrationPositionerFailure _value,
      $Res Function(_$CalibrationPositionerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CalibrationPositionerFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CalibrationPositionerFailure implements CalibrationPositionerFailure {
  const _$CalibrationPositionerFailure([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'CalibrationFailure.positionerFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalibrationPositionerFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalibrationPositionerFailureCopyWith<_$CalibrationPositionerFailure>
      get copyWith => __$$CalibrationPositionerFailureCopyWithImpl<
          _$CalibrationPositionerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) positionerFailure,
    required TResult Function(String? message) ionResponseFailure,
    required TResult Function(String? message) curveFittingFailure,
    required TResult Function(String? message) notEnoughSignal,
    required TResult Function(String? message) unknown,
  }) {
    return positionerFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? positionerFailure,
    TResult? Function(String? message)? ionResponseFailure,
    TResult? Function(String? message)? curveFittingFailure,
    TResult? Function(String? message)? notEnoughSignal,
    TResult? Function(String? message)? unknown,
  }) {
    return positionerFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? positionerFailure,
    TResult Function(String? message)? ionResponseFailure,
    TResult Function(String? message)? curveFittingFailure,
    TResult Function(String? message)? notEnoughSignal,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (positionerFailure != null) {
      return positionerFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalibrationPositionerFailure value)
        positionerFailure,
    required TResult Function(CalibrationIonResponseFailure value)
        ionResponseFailure,
    required TResult Function(CalibrationCurveFittingFailure value)
        curveFittingFailure,
    required TResult Function(CalibrationNotEnoughSignal value) notEnoughSignal,
    required TResult Function(UnknownCalibrationFailure value) unknown,
  }) {
    return positionerFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalibrationPositionerFailure value)? positionerFailure,
    TResult? Function(CalibrationIonResponseFailure value)? ionResponseFailure,
    TResult? Function(CalibrationCurveFittingFailure value)?
        curveFittingFailure,
    TResult? Function(CalibrationNotEnoughSignal value)? notEnoughSignal,
    TResult? Function(UnknownCalibrationFailure value)? unknown,
  }) {
    return positionerFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalibrationPositionerFailure value)? positionerFailure,
    TResult Function(CalibrationIonResponseFailure value)? ionResponseFailure,
    TResult Function(CalibrationCurveFittingFailure value)? curveFittingFailure,
    TResult Function(CalibrationNotEnoughSignal value)? notEnoughSignal,
    TResult Function(UnknownCalibrationFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (positionerFailure != null) {
      return positionerFailure(this);
    }
    return orElse();
  }
}

abstract class CalibrationPositionerFailure implements CalibrationFailure {
  const factory CalibrationPositionerFailure([final String? message]) =
      _$CalibrationPositionerFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CalibrationPositionerFailureCopyWith<_$CalibrationPositionerFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalibrationIonResponseFailureCopyWith<$Res>
    implements $CalibrationFailureCopyWith<$Res> {
  factory _$$CalibrationIonResponseFailureCopyWith(
          _$CalibrationIonResponseFailure value,
          $Res Function(_$CalibrationIonResponseFailure) then) =
      __$$CalibrationIonResponseFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CalibrationIonResponseFailureCopyWithImpl<$Res>
    extends _$CalibrationFailureCopyWithImpl<$Res,
        _$CalibrationIonResponseFailure>
    implements _$$CalibrationIonResponseFailureCopyWith<$Res> {
  __$$CalibrationIonResponseFailureCopyWithImpl(
      _$CalibrationIonResponseFailure _value,
      $Res Function(_$CalibrationIonResponseFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CalibrationIonResponseFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CalibrationIonResponseFailure implements CalibrationIonResponseFailure {
  const _$CalibrationIonResponseFailure([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'CalibrationFailure.ionResponseFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalibrationIonResponseFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalibrationIonResponseFailureCopyWith<_$CalibrationIonResponseFailure>
      get copyWith => __$$CalibrationIonResponseFailureCopyWithImpl<
          _$CalibrationIonResponseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) positionerFailure,
    required TResult Function(String? message) ionResponseFailure,
    required TResult Function(String? message) curveFittingFailure,
    required TResult Function(String? message) notEnoughSignal,
    required TResult Function(String? message) unknown,
  }) {
    return ionResponseFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? positionerFailure,
    TResult? Function(String? message)? ionResponseFailure,
    TResult? Function(String? message)? curveFittingFailure,
    TResult? Function(String? message)? notEnoughSignal,
    TResult? Function(String? message)? unknown,
  }) {
    return ionResponseFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? positionerFailure,
    TResult Function(String? message)? ionResponseFailure,
    TResult Function(String? message)? curveFittingFailure,
    TResult Function(String? message)? notEnoughSignal,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (ionResponseFailure != null) {
      return ionResponseFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalibrationPositionerFailure value)
        positionerFailure,
    required TResult Function(CalibrationIonResponseFailure value)
        ionResponseFailure,
    required TResult Function(CalibrationCurveFittingFailure value)
        curveFittingFailure,
    required TResult Function(CalibrationNotEnoughSignal value) notEnoughSignal,
    required TResult Function(UnknownCalibrationFailure value) unknown,
  }) {
    return ionResponseFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalibrationPositionerFailure value)? positionerFailure,
    TResult? Function(CalibrationIonResponseFailure value)? ionResponseFailure,
    TResult? Function(CalibrationCurveFittingFailure value)?
        curveFittingFailure,
    TResult? Function(CalibrationNotEnoughSignal value)? notEnoughSignal,
    TResult? Function(UnknownCalibrationFailure value)? unknown,
  }) {
    return ionResponseFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalibrationPositionerFailure value)? positionerFailure,
    TResult Function(CalibrationIonResponseFailure value)? ionResponseFailure,
    TResult Function(CalibrationCurveFittingFailure value)? curveFittingFailure,
    TResult Function(CalibrationNotEnoughSignal value)? notEnoughSignal,
    TResult Function(UnknownCalibrationFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (ionResponseFailure != null) {
      return ionResponseFailure(this);
    }
    return orElse();
  }
}

abstract class CalibrationIonResponseFailure implements CalibrationFailure {
  const factory CalibrationIonResponseFailure([final String? message]) =
      _$CalibrationIonResponseFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CalibrationIonResponseFailureCopyWith<_$CalibrationIonResponseFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalibrationCurveFittingFailureCopyWith<$Res>
    implements $CalibrationFailureCopyWith<$Res> {
  factory _$$CalibrationCurveFittingFailureCopyWith(
          _$CalibrationCurveFittingFailure value,
          $Res Function(_$CalibrationCurveFittingFailure) then) =
      __$$CalibrationCurveFittingFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CalibrationCurveFittingFailureCopyWithImpl<$Res>
    extends _$CalibrationFailureCopyWithImpl<$Res,
        _$CalibrationCurveFittingFailure>
    implements _$$CalibrationCurveFittingFailureCopyWith<$Res> {
  __$$CalibrationCurveFittingFailureCopyWithImpl(
      _$CalibrationCurveFittingFailure _value,
      $Res Function(_$CalibrationCurveFittingFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CalibrationCurveFittingFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CalibrationCurveFittingFailure
    implements CalibrationCurveFittingFailure {
  const _$CalibrationCurveFittingFailure([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'CalibrationFailure.curveFittingFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalibrationCurveFittingFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalibrationCurveFittingFailureCopyWith<_$CalibrationCurveFittingFailure>
      get copyWith => __$$CalibrationCurveFittingFailureCopyWithImpl<
          _$CalibrationCurveFittingFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) positionerFailure,
    required TResult Function(String? message) ionResponseFailure,
    required TResult Function(String? message) curveFittingFailure,
    required TResult Function(String? message) notEnoughSignal,
    required TResult Function(String? message) unknown,
  }) {
    return curveFittingFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? positionerFailure,
    TResult? Function(String? message)? ionResponseFailure,
    TResult? Function(String? message)? curveFittingFailure,
    TResult? Function(String? message)? notEnoughSignal,
    TResult? Function(String? message)? unknown,
  }) {
    return curveFittingFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? positionerFailure,
    TResult Function(String? message)? ionResponseFailure,
    TResult Function(String? message)? curveFittingFailure,
    TResult Function(String? message)? notEnoughSignal,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (curveFittingFailure != null) {
      return curveFittingFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalibrationPositionerFailure value)
        positionerFailure,
    required TResult Function(CalibrationIonResponseFailure value)
        ionResponseFailure,
    required TResult Function(CalibrationCurveFittingFailure value)
        curveFittingFailure,
    required TResult Function(CalibrationNotEnoughSignal value) notEnoughSignal,
    required TResult Function(UnknownCalibrationFailure value) unknown,
  }) {
    return curveFittingFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalibrationPositionerFailure value)? positionerFailure,
    TResult? Function(CalibrationIonResponseFailure value)? ionResponseFailure,
    TResult? Function(CalibrationCurveFittingFailure value)?
        curveFittingFailure,
    TResult? Function(CalibrationNotEnoughSignal value)? notEnoughSignal,
    TResult? Function(UnknownCalibrationFailure value)? unknown,
  }) {
    return curveFittingFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalibrationPositionerFailure value)? positionerFailure,
    TResult Function(CalibrationIonResponseFailure value)? ionResponseFailure,
    TResult Function(CalibrationCurveFittingFailure value)? curveFittingFailure,
    TResult Function(CalibrationNotEnoughSignal value)? notEnoughSignal,
    TResult Function(UnknownCalibrationFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (curveFittingFailure != null) {
      return curveFittingFailure(this);
    }
    return orElse();
  }
}

abstract class CalibrationCurveFittingFailure implements CalibrationFailure {
  const factory CalibrationCurveFittingFailure([final String? message]) =
      _$CalibrationCurveFittingFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CalibrationCurveFittingFailureCopyWith<_$CalibrationCurveFittingFailure>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CalibrationNotEnoughSignalCopyWith<$Res>
    implements $CalibrationFailureCopyWith<$Res> {
  factory _$$CalibrationNotEnoughSignalCopyWith(
          _$CalibrationNotEnoughSignal value,
          $Res Function(_$CalibrationNotEnoughSignal) then) =
      __$$CalibrationNotEnoughSignalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CalibrationNotEnoughSignalCopyWithImpl<$Res>
    extends _$CalibrationFailureCopyWithImpl<$Res, _$CalibrationNotEnoughSignal>
    implements _$$CalibrationNotEnoughSignalCopyWith<$Res> {
  __$$CalibrationNotEnoughSignalCopyWithImpl(
      _$CalibrationNotEnoughSignal _value,
      $Res Function(_$CalibrationNotEnoughSignal) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CalibrationNotEnoughSignal(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CalibrationNotEnoughSignal implements CalibrationNotEnoughSignal {
  const _$CalibrationNotEnoughSignal([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'CalibrationFailure.notEnoughSignal(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalibrationNotEnoughSignal &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CalibrationNotEnoughSignalCopyWith<_$CalibrationNotEnoughSignal>
      get copyWith => __$$CalibrationNotEnoughSignalCopyWithImpl<
          _$CalibrationNotEnoughSignal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) positionerFailure,
    required TResult Function(String? message) ionResponseFailure,
    required TResult Function(String? message) curveFittingFailure,
    required TResult Function(String? message) notEnoughSignal,
    required TResult Function(String? message) unknown,
  }) {
    return notEnoughSignal(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? positionerFailure,
    TResult? Function(String? message)? ionResponseFailure,
    TResult? Function(String? message)? curveFittingFailure,
    TResult? Function(String? message)? notEnoughSignal,
    TResult? Function(String? message)? unknown,
  }) {
    return notEnoughSignal?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? positionerFailure,
    TResult Function(String? message)? ionResponseFailure,
    TResult Function(String? message)? curveFittingFailure,
    TResult Function(String? message)? notEnoughSignal,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (notEnoughSignal != null) {
      return notEnoughSignal(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalibrationPositionerFailure value)
        positionerFailure,
    required TResult Function(CalibrationIonResponseFailure value)
        ionResponseFailure,
    required TResult Function(CalibrationCurveFittingFailure value)
        curveFittingFailure,
    required TResult Function(CalibrationNotEnoughSignal value) notEnoughSignal,
    required TResult Function(UnknownCalibrationFailure value) unknown,
  }) {
    return notEnoughSignal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalibrationPositionerFailure value)? positionerFailure,
    TResult? Function(CalibrationIonResponseFailure value)? ionResponseFailure,
    TResult? Function(CalibrationCurveFittingFailure value)?
        curveFittingFailure,
    TResult? Function(CalibrationNotEnoughSignal value)? notEnoughSignal,
    TResult? Function(UnknownCalibrationFailure value)? unknown,
  }) {
    return notEnoughSignal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalibrationPositionerFailure value)? positionerFailure,
    TResult Function(CalibrationIonResponseFailure value)? ionResponseFailure,
    TResult Function(CalibrationCurveFittingFailure value)? curveFittingFailure,
    TResult Function(CalibrationNotEnoughSignal value)? notEnoughSignal,
    TResult Function(UnknownCalibrationFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (notEnoughSignal != null) {
      return notEnoughSignal(this);
    }
    return orElse();
  }
}

abstract class CalibrationNotEnoughSignal implements CalibrationFailure {
  const factory CalibrationNotEnoughSignal([final String? message]) =
      _$CalibrationNotEnoughSignal;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CalibrationNotEnoughSignalCopyWith<_$CalibrationNotEnoughSignal>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownCalibrationFailureCopyWith<$Res>
    implements $CalibrationFailureCopyWith<$Res> {
  factory _$$UnknownCalibrationFailureCopyWith(
          _$UnknownCalibrationFailure value,
          $Res Function(_$UnknownCalibrationFailure) then) =
      __$$UnknownCalibrationFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnknownCalibrationFailureCopyWithImpl<$Res>
    extends _$CalibrationFailureCopyWithImpl<$Res, _$UnknownCalibrationFailure>
    implements _$$UnknownCalibrationFailureCopyWith<$Res> {
  __$$UnknownCalibrationFailureCopyWithImpl(_$UnknownCalibrationFailure _value,
      $Res Function(_$UnknownCalibrationFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnknownCalibrationFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnknownCalibrationFailure implements UnknownCalibrationFailure {
  const _$UnknownCalibrationFailure([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'CalibrationFailure.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownCalibrationFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownCalibrationFailureCopyWith<_$UnknownCalibrationFailure>
      get copyWith => __$$UnknownCalibrationFailureCopyWithImpl<
          _$UnknownCalibrationFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) positionerFailure,
    required TResult Function(String? message) ionResponseFailure,
    required TResult Function(String? message) curveFittingFailure,
    required TResult Function(String? message) notEnoughSignal,
    required TResult Function(String? message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? positionerFailure,
    TResult? Function(String? message)? ionResponseFailure,
    TResult? Function(String? message)? curveFittingFailure,
    TResult? Function(String? message)? notEnoughSignal,
    TResult? Function(String? message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? positionerFailure,
    TResult Function(String? message)? ionResponseFailure,
    TResult Function(String? message)? curveFittingFailure,
    TResult Function(String? message)? notEnoughSignal,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CalibrationPositionerFailure value)
        positionerFailure,
    required TResult Function(CalibrationIonResponseFailure value)
        ionResponseFailure,
    required TResult Function(CalibrationCurveFittingFailure value)
        curveFittingFailure,
    required TResult Function(CalibrationNotEnoughSignal value) notEnoughSignal,
    required TResult Function(UnknownCalibrationFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CalibrationPositionerFailure value)? positionerFailure,
    TResult? Function(CalibrationIonResponseFailure value)? ionResponseFailure,
    TResult? Function(CalibrationCurveFittingFailure value)?
        curveFittingFailure,
    TResult? Function(CalibrationNotEnoughSignal value)? notEnoughSignal,
    TResult? Function(UnknownCalibrationFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CalibrationPositionerFailure value)? positionerFailure,
    TResult Function(CalibrationIonResponseFailure value)? ionResponseFailure,
    TResult Function(CalibrationCurveFittingFailure value)? curveFittingFailure,
    TResult Function(CalibrationNotEnoughSignal value)? notEnoughSignal,
    TResult Function(UnknownCalibrationFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownCalibrationFailure implements CalibrationFailure {
  const factory UnknownCalibrationFailure([final String? message]) =
      _$UnknownCalibrationFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownCalibrationFailureCopyWith<_$UnknownCalibrationFailure>
      get copyWith => throw _privateConstructorUsedError;
}
