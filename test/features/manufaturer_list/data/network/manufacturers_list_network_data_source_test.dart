import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:untitled3/core/exceptions/exceptions.dart';
import 'package:untitled3/core/network/request_handler.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';
import 'package:untitled3/features/manufacturers_list/data/network/manufacturers_list_network_data_source.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page_result.dart';

import 'manufacturers_list_network_data_source_test.mocks.dart';

@GenerateMocks([RequestHandler])
void main() {
  final MockRequestHandler mockRequestHandler = MockRequestHandler();
  final ManufacturersListNetworkDataSource dataSource =
      ManufacturersListNetworkDataSource(mockRequestHandler);

  group('getManufacturersPage', () {
    const page = 12;
    final manufacturersPageResults = [
      for (int i = 0; i < 10; i++)
        ManufacturersPageResult(
          country: 'mock country $i',
          commonName: 'mock commonName $i',
          id: i,
        ),
    ];
    final manufacturersPage = ManufacturersPage(
      page: page,
      count: manufacturersPageResults.length,
      result: manufacturersPageResults,
    );

    test(
        'should return a list of ManufacturerModel when the call is successful',
        () async {
      // Arrange
      when(mockRequestHandler.get<ManufacturersPage>(
        path: anyNamed('path'),
        mapper: anyNamed('mapper'),
        queryParameters: anyNamed('queryParameters'),
      )).thenAnswer((_) => Future.value(manufacturersPage));

      // Act
      final result = await dataSource.getManufacturersPage(page: page);

      // Assert
      expect(result, manufacturersPage);
      verify(mockRequestHandler.get<List<ManufacturerModel>>(
        path: anyNamed('path'),
        mapper: anyNamed('mapper'),
        queryParameters: anyNamed('queryParameters'),
      )).called(1);
    });

    test('should throw an exception when the call is unsuccessful', () async {
      // Arrange
      when(mockRequestHandler.get<ManufacturersPage>(
        path: anyNamed('path'),
        queryParameters: anyNamed('queryParameters'),
        mapper: anyNamed('mapper'),
      )).thenThrow(ServerException.generic(Exception()));

      // Act
      final call = dataSource.getManufacturersPage(page: page);

      // Assert
      expect(call, throwsA(isInstanceOf<ServerException>()));
    });
  });
}
