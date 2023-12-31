// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manufacturer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ManufacturerModel {
  String? get manufacturer => throw _privateConstructorUsedError;
  String? get modelName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ManufacturerModelCopyWith<ManufacturerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManufacturerModelCopyWith<$Res> {
  factory $ManufacturerModelCopyWith(
          ManufacturerModel value, $Res Function(ManufacturerModel) then) =
      _$ManufacturerModelCopyWithImpl<$Res, ManufacturerModel>;
  @useResult
  $Res call({String? manufacturer, String? modelName});
}

/// @nodoc
class _$ManufacturerModelCopyWithImpl<$Res, $Val extends ManufacturerModel>
    implements $ManufacturerModelCopyWith<$Res> {
  _$ManufacturerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufacturer = freezed,
    Object? modelName = freezed,
  }) {
    return _then(_value.copyWith(
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      modelName: freezed == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ManufacturerModelCopyWith<$Res>
    implements $ManufacturerModelCopyWith<$Res> {
  factory _$$_ManufacturerModelCopyWith(_$_ManufacturerModel value,
          $Res Function(_$_ManufacturerModel) then) =
      __$$_ManufacturerModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? manufacturer, String? modelName});
}

/// @nodoc
class __$$_ManufacturerModelCopyWithImpl<$Res>
    extends _$ManufacturerModelCopyWithImpl<$Res, _$_ManufacturerModel>
    implements _$$_ManufacturerModelCopyWith<$Res> {
  __$$_ManufacturerModelCopyWithImpl(
      _$_ManufacturerModel _value, $Res Function(_$_ManufacturerModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? manufacturer = freezed,
    Object? modelName = freezed,
  }) {
    return _then(_$_ManufacturerModel(
      manufacturer: freezed == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String?,
      modelName: freezed == modelName
          ? _value.modelName
          : modelName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ManufacturerModel implements _ManufacturerModel {
  const _$_ManufacturerModel(
      {required this.manufacturer, required this.modelName});

  @override
  final String? manufacturer;
  @override
  final String? modelName;

  @override
  String toString() {
    return 'ManufacturerModel(manufacturer: $manufacturer, modelName: $modelName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ManufacturerModel &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.modelName, modelName) ||
                other.modelName == modelName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, manufacturer, modelName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManufacturerModelCopyWith<_$_ManufacturerModel> get copyWith =>
      __$$_ManufacturerModelCopyWithImpl<_$_ManufacturerModel>(
          this, _$identity);
}

abstract class _ManufacturerModel implements ManufacturerModel {
  const factory _ManufacturerModel(
      {required final String? manufacturer,
      required final String? modelName}) = _$_ManufacturerModel;

  @override
  String? get manufacturer;
  @override
  String? get modelName;
  @override
  @JsonKey(ignore: true)
  _$$_ManufacturerModelCopyWith<_$_ManufacturerModel> get copyWith =>
      throw _privateConstructorUsedError;
}
