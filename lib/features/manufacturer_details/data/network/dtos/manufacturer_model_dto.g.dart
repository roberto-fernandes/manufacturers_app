// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturer_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManufacturerModelDto _$ManufacturerModelDtoFromJson(
        Map<String, dynamic> json) =>
    ManufacturerModelDto(
      message: json['Message'] as String,
      count: json['Count'] as int,
      results: (json['Results'] as List<dynamic>)
          .map((e) =>
              ManufacturerModelResultDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ManufacturerModelDtoToJson(
        ManufacturerModelDto instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Count': instance.count,
      'Results': instance.results.map((e) => e.toJson()).toList(),
    };
