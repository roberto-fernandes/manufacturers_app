// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'either.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Either<F, T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(F failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(F failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(F failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<F, T> value) success,
    required TResult Function(_Failure<F, T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<F, T> value)? success,
    TResult? Function(_Failure<F, T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<F, T> value)? success,
    TResult Function(_Failure<F, T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EitherCopyWith<F, T, $Res> {
  factory $EitherCopyWith(
          Either<F, T> value, $Res Function(Either<F, T>) then) =
      _$EitherCopyWithImpl<F, T, $Res, Either<F, T>>;
}

/// @nodoc
class _$EitherCopyWithImpl<F, T, $Res, $Val extends Either<F, T>>
    implements $EitherCopyWith<F, T, $Res> {
  _$EitherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<F, T, $Res> {
  factory _$$_SuccessCopyWith(
          _$_Success<F, T> value, $Res Function(_$_Success<F, T>) then) =
      __$$_SuccessCopyWithImpl<F, T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<F, T, $Res>
    extends _$EitherCopyWithImpl<F, T, $Res, _$_Success<F, T>>
    implements _$$_SuccessCopyWith<F, T, $Res> {
  __$$_SuccessCopyWithImpl(
      _$_Success<F, T> _value, $Res Function(_$_Success<F, T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_Success<F, T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Success<F, T> implements _Success<F, T> {
  const _$_Success(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'Either<$F, $T>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success<F, T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<F, T, _$_Success<F, T>> get copyWith =>
      __$$_SuccessCopyWithImpl<F, T, _$_Success<F, T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(F failure) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(F failure)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(F failure)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<F, T> value) success,
    required TResult Function(_Failure<F, T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<F, T> value)? success,
    TResult? Function(_Failure<F, T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<F, T> value)? success,
    TResult Function(_Failure<F, T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<F, T> implements Either<F, T> {
  const factory _Success(final T data) = _$_Success<F, T>;

  T get data;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<F, T, _$_Success<F, T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<F, T, $Res> {
  factory _$$_FailureCopyWith(
          _$_Failure<F, T> value, $Res Function(_$_Failure<F, T>) then) =
      __$$_FailureCopyWithImpl<F, T, $Res>;
  @useResult
  $Res call({F failure});
}

/// @nodoc
class __$$_FailureCopyWithImpl<F, T, $Res>
    extends _$EitherCopyWithImpl<F, T, $Res, _$_Failure<F, T>>
    implements _$$_FailureCopyWith<F, T, $Res> {
  __$$_FailureCopyWithImpl(
      _$_Failure<F, T> _value, $Res Function(_$_Failure<F, T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_Failure<F, T>(
      freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as F,
    ));
  }
}

/// @nodoc

class _$_Failure<F, T> implements _Failure<F, T> {
  const _$_Failure(this.failure);

  @override
  final F failure;

  @override
  String toString() {
    return 'Either<$F, $T>.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure<F, T> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<F, T, _$_Failure<F, T>> get copyWith =>
      __$$_FailureCopyWithImpl<F, T, _$_Failure<F, T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) success,
    required TResult Function(F failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? success,
    TResult? Function(F failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? success,
    TResult Function(F failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<F, T> value) success,
    required TResult Function(_Failure<F, T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<F, T> value)? success,
    TResult? Function(_Failure<F, T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<F, T> value)? success,
    TResult Function(_Failure<F, T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<F, T> implements Either<F, T> {
  const factory _Failure(final F failure) = _$_Failure<F, T>;

  F get failure;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<F, T, _$_Failure<F, T>> get copyWith =>
      throw _privateConstructorUsedError;
}
