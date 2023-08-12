import 'package:flutter_test/flutter_test.dart';
import 'package:untitled3/features/manufacturer_details/data/network/dtos/manufacturer_model_dto.dart';
import 'package:untitled3/features/manufacturer_details/data/network/dtos/manufacturer_model_result_dto.dart';

void main() {
  group('ManufacturerModelDto', () {
    test(
        'toDomain should convert ManufacturerModelDto to List<ManufacturerModel>',
        () {
      // Arrange
      const manufacturerModelDto = ManufacturerModelDto(
        message: 'Success',
        count: 2,
        results: [
          ManufacturerModelResultDto(
            manufacturer: 'Toyota',
            modelName: 'Corolla',
          ),
          ManufacturerModelResultDto(
            manufacturer: 'Honda',
            modelName: 'Civic',
          ),
        ],
      );

      // Act
      final manufacturerModels = manufacturerModelDto.toDomain();

      // Assert
      expect(manufacturerModels.length, equals(2));
      expect(manufacturerModels[0].manufacturer, equals('Toyota'));
      expect(manufacturerModels[0].modelName, equals('Corolla'));
      expect(manufacturerModels[1].manufacturer, equals('Honda'));
      expect(manufacturerModels[1].modelName, equals('Civic'));
    });
  });
}
