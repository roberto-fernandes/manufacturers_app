// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manufacturers_page_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ManufacturersPageResultDto _$ManufacturersPageResultDtoFromJson(
        Map<String, dynamic> json) =>
    ManufacturersPageResultDto(
      country: json['Country'] as String?,
      commonName: json['Mfr_CommonName'] as String?,
      id: json['Mfr_ID'] as int,
    );

Map<String, dynamic> _$ManufacturersPageResultDtoToJson(
        ManufacturersPageResultDto instance) =>
    <String, dynamic>{
      'Country': instance.country,
      'Mfr_CommonName': instance.commonName,
      'Mfr_ID': instance.id,
    };
