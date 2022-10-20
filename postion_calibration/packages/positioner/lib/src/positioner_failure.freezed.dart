// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'positioner_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PositionerFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) positionerReadFailure,
    required TResult Function(String? message) positionerWriteFailure,
    required TResult Function(String? message) maxUpperLimit,
    required TResult Function(String? message) maxLowerLimit,
    required TResult Function(String? message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? positionerReadFailure,
    TResult? Function(String? message)? positionerWriteFailure,
    TResult? Function(String? message)? maxUpperLimit,
    TResult? Function(String? message)? maxLowerLimit,
    TResult? Function(String? message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? positionerReadFailure,
    TResult Function(String? message)? positionerWriteFailure,
    TResult Function(String? message)? maxUpperLimit,
    TResult Function(String? message)? maxLowerLimit,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PositionerReadFailure value)
        positionerReadFailure,
    required TResult Function(PositionerWriteFailure value)
        positionerWriteFailure,
    required TResult Function(MaxUpperLimit value) maxUpperLimit,
    required TResult Function(MaxLowerLimit value) maxLowerLimit,
    required TResult Function(UnknownPositionerFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PositionerReadFailure value)? positionerReadFailure,
    TResult? Function(PositionerWriteFailure value)? positionerWriteFailure,
    TResult? Function(MaxUpperLimit value)? maxUpperLimit,
    TResult? Function(MaxLowerLimit value)? maxLowerLimit,
    TResult? Function(UnknownPositionerFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PositionerReadFailure value)? positionerReadFailure,
    TResult Function(PositionerWriteFailure value)? positionerWriteFailure,
    TResult Function(MaxUpperLimit value)? maxUpperLimit,
    TResult Function(MaxLowerLimit value)? maxLowerLimit,
    TResult Function(UnknownPositionerFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PositionerFailureCopyWith<PositionerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionerFailureCopyWith<$Res> {
  factory $PositionerFailureCopyWith(
          PositionerFailure value, $Res Function(PositionerFailure) then) =
      _$PositionerFailureCopyWithImpl<$Res, PositionerFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$PositionerFailureCopyWithImpl<$Res, $Val extends PositionerFailure>
    implements $PositionerFailureCopyWith<$Res> {
  _$PositionerFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$PositionerReadFailureCopyWith<$Res>
    implements $PositionerFailureCopyWith<$Res> {
  factory _$$PositionerReadFailureCopyWith(_$PositionerReadFailure value,
          $Res Function(_$PositionerReadFailure) then) =
      __$$PositionerReadFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$PositionerReadFailureCopyWithImpl<$Res>
    extends _$PositionerFailureCopyWithImpl<$Res, _$PositionerReadFailure>
    implements _$$PositionerReadFailureCopyWith<$Res> {
  __$$PositionerReadFailureCopyWithImpl(_$PositionerReadFailure _value,
      $Res Function(_$PositionerReadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PositionerReadFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PositionerReadFailure implements PositionerReadFailure {
  const _$PositionerReadFailure([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'PositionerFailure.positionerReadFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionerReadFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionerReadFailureCopyWith<_$PositionerReadFailure> get copyWith =>
      __$$PositionerReadFailureCopyWithImpl<_$PositionerReadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) positionerReadFailure,
    required TResult Function(String? message) positionerWriteFailure,
    required TResult Function(String? message) maxUpperLimit,
    required TResult Function(String? message) maxLowerLimit,
    required TResult Function(String? message) unknown,
  }) {
    return positionerReadFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? positionerReadFailure,
    TResult? Function(String? message)? positionerWriteFailure,
    TResult? Function(String? message)? maxUpperLimit,
    TResult? Function(String? message)? maxLowerLimit,
    TResult? Function(String? message)? unknown,
  }) {
    return positionerReadFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? positionerReadFailure,
    TResult Function(String? message)? positionerWriteFailure,
    TResult Function(String? message)? maxUpperLimit,
    TResult Function(String? message)? maxLowerLimit,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (positionerReadFailure != null) {
      return positionerReadFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PositionerReadFailure value)
        positionerReadFailure,
    required TResult Function(PositionerWriteFailure value)
        positionerWriteFailure,
    required TResult Function(MaxUpperLimit value) maxUpperLimit,
    required TResult Function(MaxLowerLimit value) maxLowerLimit,
    required TResult Function(UnknownPositionerFailure value) unknown,
  }) {
    return positionerReadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PositionerReadFailure value)? positionerReadFailure,
    TResult? Function(PositionerWriteFailure value)? positionerWriteFailure,
    TResult? Function(MaxUpperLimit value)? maxUpperLimit,
    TResult? Function(MaxLowerLimit value)? maxLowerLimit,
    TResult? Function(UnknownPositionerFailure value)? unknown,
  }) {
    return positionerReadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PositionerReadFailure value)? positionerReadFailure,
    TResult Function(PositionerWriteFailure value)? positionerWriteFailure,
    TResult Function(MaxUpperLimit value)? maxUpperLimit,
    TResult Function(MaxLowerLimit value)? maxLowerLimit,
    TResult Function(UnknownPositionerFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (positionerReadFailure != null) {
      return positionerReadFailure(this);
    }
    return orElse();
  }
}

abstract class PositionerReadFailure implements PositionerFailure {
  const factory PositionerReadFailure([final String? message]) =
      _$PositionerReadFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$PositionerReadFailureCopyWith<_$PositionerReadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PositionerWriteFailureCopyWith<$Res>
    implements $PositionerFailureCopyWith<$Res> {
  factory _$$PositionerWriteFailureCopyWith(_$PositionerWriteFailure value,
          $Res Function(_$PositionerWriteFailure) then) =
      __$$PositionerWriteFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$PositionerWriteFailureCopyWithImpl<$Res>
    extends _$PositionerFailureCopyWithImpl<$Res, _$PositionerWriteFailure>
    implements _$$PositionerWriteFailureCopyWith<$Res> {
  __$$PositionerWriteFailureCopyWithImpl(_$PositionerWriteFailure _value,
      $Res Function(_$PositionerWriteFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PositionerWriteFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PositionerWriteFailure implements PositionerWriteFailure {
  const _$PositionerWriteFailure([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'PositionerFailure.positionerWriteFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositionerWriteFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PositionerWriteFailureCopyWith<_$PositionerWriteFailure> get copyWith =>
      __$$PositionerWriteFailureCopyWithImpl<_$PositionerWriteFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) positionerReadFailure,
    required TResult Function(String? message) positionerWriteFailure,
    required TResult Function(String? message) maxUpperLimit,
    required TResult Function(String? message) maxLowerLimit,
    required TResult Function(String? message) unknown,
  }) {
    return positionerWriteFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? positionerReadFailure,
    TResult? Function(String? message)? positionerWriteFailure,
    TResult? Function(String? message)? maxUpperLimit,
    TResult? Function(String? message)? maxLowerLimit,
    TResult? Function(String? message)? unknown,
  }) {
    return positionerWriteFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? positionerReadFailure,
    TResult Function(String? message)? positionerWriteFailure,
    TResult Function(String? message)? maxUpperLimit,
    TResult Function(String? message)? maxLowerLimit,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (positionerWriteFailure != null) {
      return positionerWriteFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PositionerReadFailure value)
        positionerReadFailure,
    required TResult Function(PositionerWriteFailure value)
        positionerWriteFailure,
    required TResult Function(MaxUpperLimit value) maxUpperLimit,
    required TResult Function(MaxLowerLimit value) maxLowerLimit,
    required TResult Function(UnknownPositionerFailure value) unknown,
  }) {
    return positionerWriteFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PositionerReadFailure value)? positionerReadFailure,
    TResult? Function(PositionerWriteFailure value)? positionerWriteFailure,
    TResult? Function(MaxUpperLimit value)? maxUpperLimit,
    TResult? Function(MaxLowerLimit value)? maxLowerLimit,
    TResult? Function(UnknownPositionerFailure value)? unknown,
  }) {
    return positionerWriteFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PositionerReadFailure value)? positionerReadFailure,
    TResult Function(PositionerWriteFailure value)? positionerWriteFailure,
    TResult Function(MaxUpperLimit value)? maxUpperLimit,
    TResult Function(MaxLowerLimit value)? maxLowerLimit,
    TResult Function(UnknownPositionerFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (positionerWriteFailure != null) {
      return positionerWriteFailure(this);
    }
    return orElse();
  }
}

abstract class PositionerWriteFailure implements PositionerFailure {
  const factory PositionerWriteFailure([final String? message]) =
      _$PositionerWriteFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$PositionerWriteFailureCopyWith<_$PositionerWriteFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaxUpperLimitCopyWith<$Res>
    implements $PositionerFailureCopyWith<$Res> {
  factory _$$MaxUpperLimitCopyWith(
          _$MaxUpperLimit value, $Res Function(_$MaxUpperLimit) then) =
      __$$MaxUpperLimitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$MaxUpperLimitCopyWithImpl<$Res>
    extends _$PositionerFailureCopyWithImpl<$Res, _$MaxUpperLimit>
    implements _$$MaxUpperLimitCopyWith<$Res> {
  __$$MaxUpperLimitCopyWithImpl(
      _$MaxUpperLimit _value, $Res Function(_$MaxUpperLimit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$MaxUpperLimit(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MaxUpperLimit implements MaxUpperLimit {
  const _$MaxUpperLimit([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'PositionerFailure.maxUpperLimit(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaxUpperLimit &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaxUpperLimitCopyWith<_$MaxUpperLimit> get copyWith =>
      __$$MaxUpperLimitCopyWithImpl<_$MaxUpperLimit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) positionerReadFailure,
    required TResult Function(String? message) positionerWriteFailure,
    required TResult Function(String? message) maxUpperLimit,
    required TResult Function(String? message) maxLowerLimit,
    required TResult Function(String? message) unknown,
  }) {
    return maxUpperLimit(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? positionerReadFailure,
    TResult? Function(String? message)? positionerWriteFailure,
    TResult? Function(String? message)? maxUpperLimit,
    TResult? Function(String? message)? maxLowerLimit,
    TResult? Function(String? message)? unknown,
  }) {
    return maxUpperLimit?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? positionerReadFailure,
    TResult Function(String? message)? positionerWriteFailure,
    TResult Function(String? message)? maxUpperLimit,
    TResult Function(String? message)? maxLowerLimit,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (maxUpperLimit != null) {
      return maxUpperLimit(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PositionerReadFailure value)
        positionerReadFailure,
    required TResult Function(PositionerWriteFailure value)
        positionerWriteFailure,
    required TResult Function(MaxUpperLimit value) maxUpperLimit,
    required TResult Function(MaxLowerLimit value) maxLowerLimit,
    required TResult Function(UnknownPositionerFailure value) unknown,
  }) {
    return maxUpperLimit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PositionerReadFailure value)? positionerReadFailure,
    TResult? Function(PositionerWriteFailure value)? positionerWriteFailure,
    TResult? Function(MaxUpperLimit value)? maxUpperLimit,
    TResult? Function(MaxLowerLimit value)? maxLowerLimit,
    TResult? Function(UnknownPositionerFailure value)? unknown,
  }) {
    return maxUpperLimit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PositionerReadFailure value)? positionerReadFailure,
    TResult Function(PositionerWriteFailure value)? positionerWriteFailure,
    TResult Function(MaxUpperLimit value)? maxUpperLimit,
    TResult Function(MaxLowerLimit value)? maxLowerLimit,
    TResult Function(UnknownPositionerFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (maxUpperLimit != null) {
      return maxUpperLimit(this);
    }
    return orElse();
  }
}

abstract class MaxUpperLimit implements PositionerFailure {
  const factory MaxUpperLimit([final String? message]) = _$MaxUpperLimit;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$MaxUpperLimitCopyWith<_$MaxUpperLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaxLowerLimitCopyWith<$Res>
    implements $PositionerFailureCopyWith<$Res> {
  factory _$$MaxLowerLimitCopyWith(
          _$MaxLowerLimit value, $Res Function(_$MaxLowerLimit) then) =
      __$$MaxLowerLimitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$MaxLowerLimitCopyWithImpl<$Res>
    extends _$PositionerFailureCopyWithImpl<$Res, _$MaxLowerLimit>
    implements _$$MaxLowerLimitCopyWith<$Res> {
  __$$MaxLowerLimitCopyWithImpl(
      _$MaxLowerLimit _value, $Res Function(_$MaxLowerLimit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$MaxLowerLimit(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$MaxLowerLimit implements MaxLowerLimit {
  const _$MaxLowerLimit([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'PositionerFailure.maxLowerLimit(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaxLowerLimit &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaxLowerLimitCopyWith<_$MaxLowerLimit> get copyWith =>
      __$$MaxLowerLimitCopyWithImpl<_$MaxLowerLimit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) positionerReadFailure,
    required TResult Function(String? message) positionerWriteFailure,
    required TResult Function(String? message) maxUpperLimit,
    required TResult Function(String? message) maxLowerLimit,
    required TResult Function(String? message) unknown,
  }) {
    return maxLowerLimit(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? positionerReadFailure,
    TResult? Function(String? message)? positionerWriteFailure,
    TResult? Function(String? message)? maxUpperLimit,
    TResult? Function(String? message)? maxLowerLimit,
    TResult? Function(String? message)? unknown,
  }) {
    return maxLowerLimit?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? positionerReadFailure,
    TResult Function(String? message)? positionerWriteFailure,
    TResult Function(String? message)? maxUpperLimit,
    TResult Function(String? message)? maxLowerLimit,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (maxLowerLimit != null) {
      return maxLowerLimit(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PositionerReadFailure value)
        positionerReadFailure,
    required TResult Function(PositionerWriteFailure value)
        positionerWriteFailure,
    required TResult Function(MaxUpperLimit value) maxUpperLimit,
    required TResult Function(MaxLowerLimit value) maxLowerLimit,
    required TResult Function(UnknownPositionerFailure value) unknown,
  }) {
    return maxLowerLimit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PositionerReadFailure value)? positionerReadFailure,
    TResult? Function(PositionerWriteFailure value)? positionerWriteFailure,
    TResult? Function(MaxUpperLimit value)? maxUpperLimit,
    TResult? Function(MaxLowerLimit value)? maxLowerLimit,
    TResult? Function(UnknownPositionerFailure value)? unknown,
  }) {
    return maxLowerLimit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PositionerReadFailure value)? positionerReadFailure,
    TResult Function(PositionerWriteFailure value)? positionerWriteFailure,
    TResult Function(MaxUpperLimit value)? maxUpperLimit,
    TResult Function(MaxLowerLimit value)? maxLowerLimit,
    TResult Function(UnknownPositionerFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (maxLowerLimit != null) {
      return maxLowerLimit(this);
    }
    return orElse();
  }
}

abstract class MaxLowerLimit implements PositionerFailure {
  const factory MaxLowerLimit([final String? message]) = _$MaxLowerLimit;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$MaxLowerLimitCopyWith<_$MaxLowerLimit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownPositionerFailureCopyWith<$Res>
    implements $PositionerFailureCopyWith<$Res> {
  factory _$$UnknownPositionerFailureCopyWith(_$UnknownPositionerFailure value,
          $Res Function(_$UnknownPositionerFailure) then) =
      __$$UnknownPositionerFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnknownPositionerFailureCopyWithImpl<$Res>
    extends _$PositionerFailureCopyWithImpl<$Res, _$UnknownPositionerFailure>
    implements _$$UnknownPositionerFailureCopyWith<$Res> {
  __$$UnknownPositionerFailureCopyWithImpl(_$UnknownPositionerFailure _value,
      $Res Function(_$UnknownPositionerFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnknownPositionerFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnknownPositionerFailure implements UnknownPositionerFailure {
  const _$UnknownPositionerFailure([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'PositionerFailure.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownPositionerFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownPositionerFailureCopyWith<_$UnknownPositionerFailure>
      get copyWith =>
          __$$UnknownPositionerFailureCopyWithImpl<_$UnknownPositionerFailure>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) positionerReadFailure,
    required TResult Function(String? message) positionerWriteFailure,
    required TResult Function(String? message) maxUpperLimit,
    required TResult Function(String? message) maxLowerLimit,
    required TResult Function(String? message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? positionerReadFailure,
    TResult? Function(String? message)? positionerWriteFailure,
    TResult? Function(String? message)? maxUpperLimit,
    TResult? Function(String? message)? maxLowerLimit,
    TResult? Function(String? message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? positionerReadFailure,
    TResult Function(String? message)? positionerWriteFailure,
    TResult Function(String? message)? maxUpperLimit,
    TResult Function(String? message)? maxLowerLimit,
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
    required TResult Function(PositionerReadFailure value)
        positionerReadFailure,
    required TResult Function(PositionerWriteFailure value)
        positionerWriteFailure,
    required TResult Function(MaxUpperLimit value) maxUpperLimit,
    required TResult Function(MaxLowerLimit value) maxLowerLimit,
    required TResult Function(UnknownPositionerFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PositionerReadFailure value)? positionerReadFailure,
    TResult? Function(PositionerWriteFailure value)? positionerWriteFailure,
    TResult? Function(MaxUpperLimit value)? maxUpperLimit,
    TResult? Function(MaxLowerLimit value)? maxLowerLimit,
    TResult? Function(UnknownPositionerFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PositionerReadFailure value)? positionerReadFailure,
    TResult Function(PositionerWriteFailure value)? positionerWriteFailure,
    TResult Function(MaxUpperLimit value)? maxUpperLimit,
    TResult Function(MaxLowerLimit value)? maxLowerLimit,
    TResult Function(UnknownPositionerFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownPositionerFailure implements PositionerFailure {
  const factory UnknownPositionerFailure([final String? message]) =
      _$UnknownPositionerFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownPositionerFailureCopyWith<_$UnknownPositionerFailure>
      get copyWith => throw _privateConstructorUsedError;
}
