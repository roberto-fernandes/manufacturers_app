
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:untitled3/features/manufacturer_details/data/data_source/manufacturer_details_data_source.dart';
import 'package:untitled3/features/manufacturer_details/data/repositories/manufacturer_details_repository_impl.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';

import 'manufacturer_details_repository_impl_test.mocks.dart';

@GenerateMocks([ManufacturerDetailsDataSource])
void main() {
  late ManufacturerDetailsRepositoryImpl repository;
  late MockManufacturerDetailsDataSource mockNetworkDataSource;
  late MockManufacturerDetailsDataSource mockStorageDataSource;

  setUp(() {
    mockNetworkDataSource = MockManufacturerDetailsDataSource();
    mockStorageDataSource = MockManufacturerDetailsDataSource();
    repository = ManufacturerDetailsRepositoryImpl(
      networkDataSource: mockNetworkDataSource,
      storageDataSource: mockStorageDataSource,
    );
  });

  group('getManufacturerModel', () {
    test('should fetch data from networkDataSource and save to storageDataSource', () async {
      // Arrange
      const manufacturer = 'Toyota';
      final modelsFromNetwork = [
        const ManufacturerModel(manufacturer: 'Toyota', modelName: 'Corolla'),
        const ManufacturerModel(manufacturer: 'Toyota', modelName: 'Camry'),
      ];
      when(mockNetworkDataSource.getManufacturerModel(manufacturer: manufacturer))
          .thenAnswer((_) async => modelsFromNetwork);

      // Act
      final result = await repository.getManufacturerModel(manufacturer: manufacturer);

      // Assert
      verify(mockNetworkDataSource.getManufacturerModel(manufacturer: manufacturer));
      verify(mockStorageDataSource.saveManufacturerModels(
        models: modelsFromNetwork,
        manufacturer: manufacturer,
      ));
      expect(result, equals(modelsFromNetwork));
    });

    test('should fallback to storageDataSource when networkDataSource fails', () async {
      // Arrange
      const manufacturer = 'Toyota';
      final modelsFromStorage = [
        const ManufacturerModel(manufacturer: 'Toyota', modelName: 'Corolla'),
        const ManufacturerModel(manufacturer: 'Toyota', modelName: 'Camry'),
      ];
      when(mockNetworkDataSource.getManufacturerModel(manufacturer: manufacturer))
          .thenThrow(Exception());
      when(mockStorageDataSource.getManufacturerModel(manufacturer: manufacturer))
          .thenAnswer((_) async => modelsFromStorage);

      // Act
      final result = await repository.getManufacturerModel(manufacturer: manufacturer);

      // Assert
      verify(mockNetworkDataSource.getManufacturerModel(manufacturer: manufacturer));
      verify(mockStorageDataSource.getManufacturerModel(manufacturer: manufacturer));
      expect(result, equals(modelsFromStorage));
    });
  });
}
