// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ion_response_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IonResponseFailure {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) ionResponseReadFailure,
    required TResult Function(String? message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? ionResponseReadFailure,
    TResult? Function(String? message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? ionResponseReadFailure,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IonResponseReadFailure value)
        ionResponseReadFailure,
    required TResult Function(UnknownIonResponseFailure value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IonResponseReadFailure value)? ionResponseReadFailure,
    TResult? Function(UnknownIonResponseFailure value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IonResponseReadFailure value)? ionResponseReadFailure,
    TResult Function(UnknownIonResponseFailure value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IonResponseFailureCopyWith<IonResponseFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IonResponseFailureCopyWith<$Res> {
  factory $IonResponseFailureCopyWith(
          IonResponseFailure value, $Res Function(IonResponseFailure) then) =
      _$IonResponseFailureCopyWithImpl<$Res, IonResponseFailure>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$IonResponseFailureCopyWithImpl<$Res, $Val extends IonResponseFailure>
    implements $IonResponseFailureCopyWith<$Res> {
  _$IonResponseFailureCopyWithImpl(this._value, this._then);

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
abstract class _$$IonResponseReadFailureCopyWith<$Res>
    implements $IonResponseFailureCopyWith<$Res> {
  factory _$$IonResponseReadFailureCopyWith(_$IonResponseReadFailure value,
          $Res Function(_$IonResponseReadFailure) then) =
      __$$IonResponseReadFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$IonResponseReadFailureCopyWithImpl<$Res>
    extends _$IonResponseFailureCopyWithImpl<$Res, _$IonResponseReadFailure>
    implements _$$IonResponseReadFailureCopyWith<$Res> {
  __$$IonResponseReadFailureCopyWithImpl(_$IonResponseReadFailure _value,
      $Res Function(_$IonResponseReadFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$IonResponseReadFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$IonResponseReadFailure implements IonResponseReadFailure {
  const _$IonResponseReadFailure([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'IonResponseFailure.ionResponseReadFailure(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IonResponseReadFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IonResponseReadFailureCopyWith<_$IonResponseReadFailure> get copyWith =>
      __$$IonResponseReadFailureCopyWithImpl<_$IonResponseReadFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) ionResponseReadFailure,
    required TResult Function(String? message) unknown,
  }) {
    return ionResponseReadFailure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? ionResponseReadFailure,
    TResult? Function(String? message)? unknown,
  }) {
    return ionResponseReadFailure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? ionResponseReadFailure,
    TResult Function(String? message)? unknown,
    required TResult orElse(),
  }) {
    if (ionResponseReadFailure != null) {
      return ionResponseReadFailure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(IonResponseReadFailure value)
        ionResponseReadFailure,
    required TResult Function(UnknownIonResponseFailure value) unknown,
  }) {
    return ionResponseReadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IonResponseReadFailure value)? ionResponseReadFailure,
    TResult? Function(UnknownIonResponseFailure value)? unknown,
  }) {
    return ionResponseReadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IonResponseReadFailure value)? ionResponseReadFailure,
    TResult Function(UnknownIonResponseFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (ionResponseReadFailure != null) {
      return ionResponseReadFailure(this);
    }
    return orElse();
  }
}

abstract class IonResponseReadFailure implements IonResponseFailure {
  const factory IonResponseReadFailure([final String? message]) =
      _$IonResponseReadFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$IonResponseReadFailureCopyWith<_$IonResponseReadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownIonResponseFailureCopyWith<$Res>
    implements $IonResponseFailureCopyWith<$Res> {
  factory _$$UnknownIonResponseFailureCopyWith(
          _$UnknownIonResponseFailure value,
          $Res Function(_$UnknownIonResponseFailure) then) =
      __$$UnknownIonResponseFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$UnknownIonResponseFailureCopyWithImpl<$Res>
    extends _$IonResponseFailureCopyWithImpl<$Res, _$UnknownIonResponseFailure>
    implements _$$UnknownIonResponseFailureCopyWith<$Res> {
  __$$UnknownIonResponseFailureCopyWithImpl(_$UnknownIonResponseFailure _value,
      $Res Function(_$UnknownIonResponseFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$UnknownIonResponseFailure(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnknownIonResponseFailure implements UnknownIonResponseFailure {
  const _$UnknownIonResponseFailure([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'IonResponseFailure.unknown(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownIonResponseFailure &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownIonResponseFailureCopyWith<_$UnknownIonResponseFailure>
      get copyWith => __$$UnknownIonResponseFailureCopyWithImpl<
          _$UnknownIonResponseFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) ionResponseReadFailure,
    required TResult Function(String? message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? ionResponseReadFailure,
    TResult? Function(String? message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? ionResponseReadFailure,
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
    required TResult Function(IonResponseReadFailure value)
        ionResponseReadFailure,
    required TResult Function(UnknownIonResponseFailure value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(IonResponseReadFailure value)? ionResponseReadFailure,
    TResult? Function(UnknownIonResponseFailure value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(IonResponseReadFailure value)? ionResponseReadFailure,
    TResult Function(UnknownIonResponseFailure value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class UnknownIonResponseFailure implements IonResponseFailure {
  const factory UnknownIonResponseFailure([final String? message]) =
      _$UnknownIonResponseFailure;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$UnknownIonResponseFailureCopyWith<_$UnknownIonResponseFailure>
      get copyWith => throw _privateConstructorUsedError;
}
