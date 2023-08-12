import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:untitled3/features/manufacturers_list/data/data_source/manufacturers_list_data_source.dart';
import 'package:untitled3/features/manufacturers_list/data/repositories/manufacturers_list_repository_impl.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page_result.dart';

import 'manufacturers_list_repository_impl_test.mocks.dart';

@GenerateMocks([ManufacturersListDataSource])
void main() {
  late ManufacturersListRepositoryImpl repository;
  late MockManufacturersListDataSource mockNetworkDataSource;
  late MockManufacturersListDataSource mockStorageDataSource;

  setUp(() {
    mockNetworkDataSource = MockManufacturersListDataSource();
    mockStorageDataSource = MockManufacturersListDataSource();
    repository = ManufacturersListRepositoryImpl(
      networkDataSource: mockNetworkDataSource,
      storageDataSource: mockStorageDataSource,
    );
  });

  group('getManufacturersPage', () {
    test(
        'should fetch data from networkDataSource and save to storageDataSource',
        () async {
      // Arrange
      const page = 1;
      const manufacturersPageFromNetwork = ManufacturersPage(
        page: page,
        count: 2,
        result: [
          ManufacturersPageResult(
            country: 'Country1',
            commonName: 'CommonName1',
            id: 1,
          ),
          ManufacturersPageResult(
            country: 'Country2',
            commonName: 'CommonName2',
            id: 2,
          ),
        ],
      );
      when(mockNetworkDataSource.getManufacturersPage(page: page))
          .thenAnswer((_) async => manufacturersPageFromNetwork);

      // Act
      final result = await repository.getManufacturersPage(page: page);

      // Assert
      verify(mockNetworkDataSource.getManufacturersPage(page: page));
      verify(mockStorageDataSource.saveManufacturersPage(
          manufacturersPage: manufacturersPageFromNetwork));
      expect(result, equals(manufacturersPageFromNetwork));
    });

    test('should fallback to storageDataSource when networkDataSource fails',
        () async {
      // Arrange
      const page = 1;
      const manufacturersPageFromStorage = ManufacturersPage(
        page: page,
        count: 2,
        result: [
          ManufacturersPageResult(
            country: 'Country1Storage',
            commonName: 'CommonName1Storage',
            id: 12,
          ),
          ManufacturersPageResult(
            country: 'Country2Storage',
            commonName: 'CommonName2Storage',
            id: 22,
          ),
        ],
      );
      when(mockNetworkDataSource.getManufacturersPage(page: page))
          .thenThrow(Exception());
      when(mockStorageDataSource.getManufacturersPage(page: page))
          .thenAnswer((_) async => manufacturersPageFromStorage);

      // Act
      final result = await repository.getManufacturersPage(page: page);

      // Assert
      verify(mockNetworkDataSource.getManufacturersPage(page: page));
      verifyNever(mockStorageDataSource.saveManufacturersPage(
          manufacturersPage: anyNamed('manufacturersPage')));
      verify(mockStorageDataSource.getManufacturersPage(page: page));
      expect(result, equals(manufacturersPageFromStorage));
    });
  });
}
