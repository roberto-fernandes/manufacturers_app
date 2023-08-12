import 'package:json_annotation/json_annotation.dart';
import 'package:untitled3/features/manufacturers_list/data/network/dtos/manufacturers_page_result_dto.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';

part 'manufacturers_page_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ManufacturersPageDto {
  @JsonKey(name: 'Message')
  final String message;
  @JsonKey(name: 'Count')
  final int count;
  @JsonKey(name: 'Results')
  final List<ManufacturersPageResultDto> results;

  const ManufacturersPageDto({
    required this.message,
    required this.count,
    required this.results,
  });

  factory ManufacturersPageDto.fromJson(Map<String, dynamic> json) =>
      _$ManufacturersPageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ManufacturersPageDtoToJson(this);
}

extension ManufacturersPageDtoX on ManufacturersPageDto {
  ManufacturersPage toDomain() {
    return ManufacturersPage(
      count: count,
      result: results.map((e) => e.toDomain()).toList(),
    );
  }
}
