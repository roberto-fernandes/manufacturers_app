
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled3/features/manufacturers_list/data/network/dtos/manufacturers_page_dto.dart';
import 'package:untitled3/features/manufacturers_list/data/network/dtos/manufacturers_page_result_dto.dart';

void main() {
  group('ManufacturersPageDtoX', () {
    test('toDomain should convert ManufacturersPageDto to ManufacturersPage', () {
      const manufacturersPageDto = ManufacturersPageDto(
        message: 'Success',
        count: 2,
        results: [
          ManufacturersPageResultDto(
            country: 'Country 1',
            commonName: 'Common Name 1',
            id: 1,
          ),
          ManufacturersPageResultDto(
            country: 'Country 2',
            commonName: 'Common Name 2',
            id: 2,
          ),
        ],
      );

      final manufacturersPage = manufacturersPageDto.toDomain(1);

      expect(manufacturersPage.page, 1);
      expect(manufacturersPage.count, 2);
      expect(manufacturersPage.result.length, 2);
      expect(manufacturersPage.result[0].id, 1);
      expect(manufacturersPage.result[1].commonName, 'Common Name 2');
    });
  });
}
