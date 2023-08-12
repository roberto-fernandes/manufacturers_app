import 'package:flutter_test/flutter_test.dart';
import 'package:untitled3/features/manufacturer_details/data/network/dtos/manufacturer_model_dto.dart';
import 'package:untitled3/features/manufacturer_details/data/network/dtos/manufacturer_model_result_dto.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';

void main() {
  group('ManufacturerModelDto', () {
    const List<ManufacturerModelResultDto> manufacturerModelResultDtos = [
      ManufacturerModelResultDto(
        manufacturer: 'Manufacturer1',
        modelName: 'Model1',
      ),
      ManufacturerModelResultDto(
        manufacturer: 'Manufacturer2',
        modelName: 'Model2',
      ),
    ];

    const ManufacturerModelDto manufacturerModelDto = ManufacturerModelDto(
      message: 'Success',
      count: 2,
      results: manufacturerModelResultDtos,
    );

    test('toDomain converts ManufacturerModelDto to ManufacturerModel', () {
      final manufacturerModels = manufacturerModelDto.toDomain();

      expect(manufacturerModels, isA<List<ManufacturerModel>>());
      expect(manufacturerModels, hasLength(2));

      expect(manufacturerModels[0].manufacturer, 'Manufacturer1');
      expect(manufacturerModels[0].modelName, 'Model1');

      expect(manufacturerModels[1].manufacturer, 'Manufacturer2');
      expect(manufacturerModels[1].modelName, 'Model2');
    });
  });
}
