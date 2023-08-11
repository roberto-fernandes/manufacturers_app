// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manufacturers_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ManufacturersPage {
  int get count => throw _privateConstructorUsedError;
  List<ManufacturersPageResult> get result =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManufacturersPageCopyWith<ManufacturersPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManufacturersPageCopyWith<$Res> {
  factory $ManufacturersPageCopyWith(
          ManufacturersPage value, $Res Function(ManufacturersPage) then) =
      _$ManufacturersPageCopyWithImpl<$Res, ManufacturersPage>;
  @useResult
  $Res call({int count, List<ManufacturersPageResult> result});
}

/// @nodoc
class _$ManufacturersPageCopyWithImpl<$Res, $Val extends ManufacturersPage>
    implements $ManufacturersPageCopyWith<$Res> {
  _$ManufacturersPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ManufacturersPageResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ManufacturersPageCopyWith<$Res>
    implements $ManufacturersPageCopyWith<$Res> {
  factory _$$_ManufacturersPageCopyWith(_$_ManufacturersPage value,
          $Res Function(_$_ManufacturersPage) then) =
      __$$_ManufacturersPageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, List<ManufacturersPageResult> result});
}

/// @nodoc
class __$$_ManufacturersPageCopyWithImpl<$Res>
    extends _$ManufacturersPageCopyWithImpl<$Res, _$_ManufacturersPage>
    implements _$$_ManufacturersPageCopyWith<$Res> {
  __$$_ManufacturersPageCopyWithImpl(
      _$_ManufacturersPage _value, $Res Function(_$_ManufacturersPage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? result = null,
  }) {
    return _then(_$_ManufacturersPage(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<ManufacturersPageResult>,
    ));
  }
}

/// @nodoc

class _$_ManufacturersPage implements _ManufacturersPage {
  const _$_ManufacturersPage(
      {required this.count,
      required final List<ManufacturersPageResult> result})
      : _result = result;

  @override
  final int count;
  final List<ManufacturersPageResult> _result;
  @override
  List<ManufacturersPageResult> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'ManufacturersPage(count: $count, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManufacturersPage &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, count, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManufacturersPageCopyWith<_$_ManufacturersPage> get copyWith =>
      __$$_ManufacturersPageCopyWithImpl<_$_ManufacturersPage>(
          this, _$identity);
}

abstract class _ManufacturersPage implements ManufacturersPage {
  const factory _ManufacturersPage(
          {required final int count,
          required final List<ManufacturersPageResult> result}) =
      _$_ManufacturersPage;

  @override
  int get count;
  @override
  List<ManufacturersPageResult> get result;
  @override
  @JsonKey(ignore: true)
  _$$_ManufacturersPageCopyWith<_$_ManufacturersPage> get copyWith =>
      throw _privateConstructorUsedError;
}
