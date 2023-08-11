// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturers_page_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManufacturersPageDto _$ManufacturersPageDtoFromJson(
        Map<String, dynamic> json) =>
    ManufacturersPageDto(
      message: json['Message'] as String,
      count: json['Count'] as int,
      results: (json['Results'] as List<dynamic>)
          .map((e) =>
              ManufacturersPageResultDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ManufacturersPageDtoToJson(
        ManufacturersPageDto instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Count': instance.count,
      'Results': instance.results.map((e) => e.toJson()).toList(),
    };
