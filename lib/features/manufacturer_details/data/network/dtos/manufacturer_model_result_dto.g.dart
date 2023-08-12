// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturer_model_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManufacturerModelResultDto _$ManufacturerModelResultDtoFromJson(
        Map<String, dynamic> json) =>
    ManufacturerModelResultDto(
      makeId: json['MakeId'] as int?,
      manufacturer: json['MakeName'] as String?,
      modelId: json['Model_ID'] as int?,
      modelName: json['Model_Name'] as String?,
    );

Map<String, dynamic> _$ManufacturerModelResultDtoToJson(
        ManufacturerModelResultDto instance) =>
    <String, dynamic>{
      'MakeId': instance.makeId,
      'MakeName': instance.manufacturer,
      'Model_ID': instance.modelId,
      'Model_Name': instance.modelName,
    };
