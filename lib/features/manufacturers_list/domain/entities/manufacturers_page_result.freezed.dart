// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manufacturers_page_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ManufacturersPageResult {
  String? get country => throw _privateConstructorUsedError;
  String? get commonName => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManufacturersPageResultCopyWith<ManufacturersPageResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManufacturersPageResultCopyWith<$Res> {
  factory $ManufacturersPageResultCopyWith(ManufacturersPageResult value,
          $Res Function(ManufacturersPageResult) then) =
      _$ManufacturersPageResultCopyWithImpl<$Res, ManufacturersPageResult>;
  @useResult
  $Res call({String? country, String? commonName, int id});
}

/// @nodoc
class _$ManufacturersPageResultCopyWithImpl<$Res,
        $Val extends ManufacturersPageResult>
    implements $ManufacturersPageResultCopyWith<$Res> {
  _$ManufacturersPageResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? commonName = freezed,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      commonName: freezed == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ManufacturersPageResultCopyWith<$Res>
    implements $ManufacturersPageResultCopyWith<$Res> {
  factory _$$_ManufacturersPageResultCopyWith(_$_ManufacturersPageResult value,
          $Res Function(_$_ManufacturersPageResult) then) =
      __$$_ManufacturersPageResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? country, String? commonName, int id});
}

/// @nodoc
class __$$_ManufacturersPageResultCopyWithImpl<$Res>
    extends _$ManufacturersPageResultCopyWithImpl<$Res,
        _$_ManufacturersPageResult>
    implements _$$_ManufacturersPageResultCopyWith<$Res> {
  __$$_ManufacturersPageResultCopyWithImpl(_$_ManufacturersPageResult _value,
      $Res Function(_$_ManufacturersPageResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = freezed,
    Object? commonName = freezed,
    Object? id = null,
  }) {
    return _then(_$_ManufacturersPageResult(
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      commonName: freezed == commonName
          ? _value.commonName
          : commonName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ManufacturersPageResult implements _ManufacturersPageResult {
  const _$_ManufacturersPageResult(
      {required this.country, required this.commonName, required this.id});

  @override
  final String? country;
  @override
  final String? commonName;
  @override
  final int id;

  @override
  String toString() {
    return 'ManufacturersPageResult(country: $country, commonName: $commonName, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManufacturersPageResult &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.commonName, commonName) ||
                other.commonName == commonName) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country, commonName, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManufacturersPageResultCopyWith<_$_ManufacturersPageResult>
      get copyWith =>
          __$$_ManufacturersPageResultCopyWithImpl<_$_ManufacturersPageResult>(
              this, _$identity);
}

abstract class _ManufacturersPageResult implements ManufacturersPageResult {
  const factory _ManufacturersPageResult(
      {required final String? country,
      required final String? commonName,
      required final int id}) = _$_ManufacturersPageResult;

  @override
  String? get country;
  @override
  String? get commonName;
  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_ManufacturersPageResultCopyWith<_$_ManufacturersPageResult>
      get copyWith => throw _privateConstructorUsedError;
}
