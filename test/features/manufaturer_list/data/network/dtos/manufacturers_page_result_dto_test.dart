import 'package:flutter_test/flutter_test.dart';
import 'package:untitled3/features/manufacturers_list/data/network/dtos/manufacturers_page_result_dto.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page_result.dart';

void main() {
  group('ManufacturersPageResultDto', () {
    const ManufacturersPageResultDto manufacturersPageResultDto = ManufacturersPageResultDto(
      country: 'Country1',
      commonName: 'CommonName1',
      id: 1,
    );

    test('toDomain converts ManufacturersPageResultDto to ManufacturersPageResult', () {
      final manufacturersPageResult = manufacturersPageResultDto.toDomain();

      expect(manufacturersPageResult, isA<ManufacturersPageResult>());
      expect(manufacturersPageResult.country, 'Country1');
      expect(manufacturersPageResult.commonName, 'CommonName1');
      expect(manufacturersPageResult.id, 1);
    });
  });
}
