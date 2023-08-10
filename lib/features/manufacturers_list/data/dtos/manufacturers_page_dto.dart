import 'package:json_annotation/json_annotation.dart';

part 'manufacturers_page_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ManufacturersPageDto {
  @JsonKey(name: 'Message')
  final String message;
  @JsonKey(name: 'Count')
  final int count;

  const ManufacturersPageDto({
    required this.message,
    required this.count,
  });

  factory ManufacturersPageDto.fromJson(Map<String, dynamic> json) =>
      _$ManufacturersPageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ManufacturersPageDtoToJson(this);
}