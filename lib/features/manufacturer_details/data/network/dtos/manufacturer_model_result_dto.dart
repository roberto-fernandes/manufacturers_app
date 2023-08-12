import 'package:json_annotation/json_annotation.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';

part 'manufacturer_model_result_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class ManufacturerModelResultDto {
  @JsonKey(name: 'MakeId')
  final int? makeId;
  @JsonKey(name: 'MakeName')
  final String? manufacturer;
  @JsonKey(name: 'Model_ID')
  final int? modelId;
  @JsonKey(name: 'Model_Name')
  final String? modelName;

  const ManufacturerModelResultDto({
    this.makeId,
    this.manufacturer,
    this.modelId,
    this.modelName,
  });

  factory ManufacturerModelResultDto.fromJson(Map<String, dynamic> json) =>
      _$ManufacturerModelResultDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ManufacturerModelResultDtoToJson(this);
}

extension ManufacturerModelResultX on ManufacturerModelResultDto {
  ManufacturerModel toDomain() {
    return ManufacturerModel(
      manufacturer: manufacturer,
      modelName: modelName,
    );
  }
}
