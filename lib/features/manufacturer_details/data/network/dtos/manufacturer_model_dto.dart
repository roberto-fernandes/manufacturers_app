import 'package:json_annotation/json_annotation.dart';
import 'package:untitled3/features/manufacturer_details/data/network/dtos/manufacturer_model_result_dto.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';

part 'manufacturer_model_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ManufacturerModelDto {
  @JsonKey(name: 'Message')
  final String message;
  @JsonKey(name: 'Count')
  final int count;
  @JsonKey(name: 'Results')
  final List<ManufacturerModelResultDto> results;

  const ManufacturerModelDto({
    required this.message,
    required this.count,
    required this.results,
  });

  factory ManufacturerModelDto.fromJson(Map<String, dynamic> json) =>
      _$ManufacturerModelDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ManufacturerModelDtoToJson(this);
}

extension ManufacturerModelDtoX on ManufacturerModelDto {
  List<ManufacturerModel> toDomain() {
    return results.map((e) => e.toDomain()).toList();
  }
}
