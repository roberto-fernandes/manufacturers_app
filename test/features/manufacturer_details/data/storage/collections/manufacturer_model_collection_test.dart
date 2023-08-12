import 'package:flutter_test/flutter_test.dart';
import 'package:untitled3/features/manufacturer_details/data/storage/collections/manufacturer_model_collection.dart';

void main() {
  group('ManufacturerModelCollection', () {
    test(
        'toDomain should convert ManufacturerModelCollection to List<ManufacturerModel>',
        () {
      // Arrange
      const manufacturerModelResultCollection1 =
          ManufacturerModelResultCollection(
        manufacturer: 'Toyota',
        modelName: 'Corolla',
      );
      const manufacturerModelResultCollection2 =
          ManufacturerModelResultCollection(
        manufacturer: 'Honda',
        modelName: 'Civic',
      );

      final manufacturerModelCollection = ManufacturerModelCollection(
        'Manufacturer',
        [
          manufacturerModelResultCollection1,
          manufacturerModelResultCollection2
        ],
      );

      // Act
      final manufacturerModels = manufacturerModelCollection.toDomain();

      // Assert
      expect(manufacturerModels.length, equals(2));
      expect(manufacturerModels[0].manufacturer, equals('Toyota'));
      expect(manufacturerModels[0].modelName, equals('Corolla'));
      expect(manufacturerModels[1].manufacturer, equals('Honda'));
      expect(manufacturerModels[1].modelName, equals('Civic'));
    });
  });

  group('ManufacturerModelResultCollection', () {
    test(
        'toDomain should convert ManufacturerModelResultCollection to ManufacturerModel',
        () {
      // Arrange
      const manufacturerModelResultCollection =
          ManufacturerModelResultCollection(
        manufacturer: 'Toyota',
        modelName: 'Corolla',
      );

      // Act
      final manufacturerModel = manufacturerModelResultCollection.toDomain();

      // Assert
      expect(manufacturerModel.manufacturer, equals('Toyota'));
      expect(manufacturerModel.modelName, equals('Corolla'));
    });
  });
}
