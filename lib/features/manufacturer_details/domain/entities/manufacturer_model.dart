import 'package:freezed_annotation/freezed_annotation.dart';

part 'manufacturer_model.freezed.dart';

@freezed
class ManufacturerModel with _$ManufacturerModel {
  const factory ManufacturerModel({
    required String? manufacturer,
    required String? modelName,
  }) = _ManufacturerModel;
}