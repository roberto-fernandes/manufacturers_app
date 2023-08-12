

import 'package:flutter_test/flutter_test.dart';
import 'package:untitled3/features/manufacturers_list/data/storage/collections/manufacturers_page_collection.dart';

void main() {
  group('ManufacturersPageCollection', () {
    test('toDomain should convert ManufacturersPageCollection to ManufacturersPage', () {
      // Arrange
      final manufacturersPageCollection = ManufacturersPageCollection(
        1,
        [
          const ManufacturersPageResultCollection(
            id: 1,
            country: 'USA',
            commonName: 'Manufacturer A',
          ),
          const ManufacturersPageResultCollection(
            id: 2,
            country: 'Japan',
            commonName: 'Manufacturer B',
          ),
        ],
        2,
      );

      // Act
      final manufacturersPage = manufacturersPageCollection.toDomain();

      // Assert
      expect(manufacturersPage.page, equals(1));
      expect(manufacturersPage.count, equals(2));
      expect(manufacturersPage.result.length, equals(2));
      expect(manufacturersPage.result[0].id, equals(1));
      expect(manufacturersPage.result[0].country, equals('USA'));
      expect(manufacturersPage.result[0].commonName, equals('Manufacturer A'));
      expect(manufacturersPage.result[1].id, equals(2));
      expect(manufacturersPage.result[1].country, equals('Japan'));
      expect(manufacturersPage.result[1].commonName, equals('Manufacturer B'));
    });
  });

  group('ManufacturersPageResultCollection', () {
    test('toDomain should convert ManufacturersPageResultCollection to ManufacturersPageResult', () {
      // Arrange
      const manufacturersPageResultCollection = ManufacturersPageResultCollection(
        id: 1,
        country: 'USA',
        commonName: 'Manufacturer A',
      );

      // Act
      final manufacturersPageResult = manufacturersPageResultCollection.toDomain();

      // Assert
      expect(manufacturersPageResult.id, equals(1));
      expect(manufacturersPageResult.country, equals('USA'));
      expect(manufacturersPageResult.commonName, equals('Manufacturer A'));
    });
  });
}
