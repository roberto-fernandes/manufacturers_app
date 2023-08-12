
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled3/features/manufacturer_details/data/network/dtos/manufacturer_model_result_dto.dart';

void main() {
  group('ManufacturerModelResultDto', () {
    test('toDomain should convert ManufacturerModelResultDto to ManufacturerModel', () {
      // Arrange
      const manufacturerModelResultDto = ManufacturerModelResultDto(
        manufacturer: 'Toyota',
        modelName: 'Corolla',
      );

      // Act
      final manufacturerModel = manufacturerModelResultDto.toDomain();

      // Assert
      expect(manufacturerModel.manufacturer, equals('Toyota'));
      expect(manufacturerModel.modelName, equals('Corolla'));
    });
  });
}
