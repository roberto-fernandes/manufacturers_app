import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:untitled3/core/exceptions/exceptions.dart';
import 'package:untitled3/core/network/request_handler.dart';
import 'package:untitled3/features/manufacturer_details/data/network/manufacturer_details_network_data_source.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';

import 'manufacturer_details_network_data_source_test.mocks.dart';

@GenerateMocks([RequestHandler])
void main() {
  final MockRequestHandler mockRequestHandler = MockRequestHandler();
  final ManufacturerDetailsNetworkDataSource dataSource =
      ManufacturerDetailsNetworkDataSource(mockRequestHandler);

  group('getManufacturerModel', () {
    const manufacturer = 'Toyota';
    final manufacturerModels = [
      for (int i = 0; i < 10; i++)
        ManufacturerModel(
          manufacturer: 'mock manufacturer $i',
          modelName: 'mock model $i',
        ),
    ];

    test(
        'should return a list of ManufacturerModel when the call is successful',
        () async {
      // Arrange
      when(mockRequestHandler.get<List<ManufacturerModel>>(
        path: anyNamed('path'),
        mapper: anyNamed('mapper'),
        queryParameters: anyNamed('queryParameters'),
      )).thenAnswer((_) => Future.value(manufacturerModels));

      // Act
      final result =
          await dataSource.getManufacturerModel(manufacturer: manufacturer);

      // Assert
      expect(result, manufacturerModels);
      verify(mockRequestHandler.get<List<ManufacturerModel>>(
        path: anyNamed('path'),
        mapper: anyNamed('mapper'),
        queryParameters: anyNamed('queryParameters'),
      )).called(1);
    });

    test('should throw an exception when the call is unsuccessful', () async {
      // Arrange
      when(mockRequestHandler.get<List<ManufacturerModel>>(
        path: anyNamed('path'),
        queryParameters: anyNamed('queryParameters'),
        mapper: anyNamed('mapper'),
      )).thenThrow(ServerException.generic(Exception()));

      // Act
      final call = dataSource.getManufacturerModel(manufacturer: manufacturer);

      // Assert
      expect(call, throwsA(isInstanceOf<ServerException>()));
    });
  });
}
