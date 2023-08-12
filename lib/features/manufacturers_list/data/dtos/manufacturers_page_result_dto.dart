import 'package:json_annotation/json_annotation.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page_result.dart';

part 'manufacturers_page_result_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ManufacturersPageResultDto {
  @JsonKey(name: 'Country')
  final String? country;
  @JsonKey(name: 'Mfr_CommonName')
  final String? commonName;
  @JsonKey(name: 'Mfr_ID')
  final int id;

  const ManufacturersPageResultDto({
    required this.country,
    required this.commonName,
    required this.id,
  });

  factory ManufacturersPageResultDto.fromJson(Map<String, dynamic> json) =>
      _$ManufacturersPageResultDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ManufacturersPageResultDtoToJson(this);
}

extension ManufacturersPageResultDtoX on ManufacturersPageResultDto {
  ManufacturersPageResult toDomain() {
    return ManufacturersPageResult(
      country: country,
      name: commonName,
    );
  }
}
