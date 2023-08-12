import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';
import 'package:untitled3/features/manufacturer_details/domain/repositories/manufacturer_details_repository.dart';
import 'package:untitled3/features/manufacturer_details/domain/use_cases/get_manufacturer_models.dart';

import 'get_manufacturer_models_test.mocks.dart';

@GenerateMocks([ManufacturerDetailsRepository])
void main() {
  test(
    'GetManufacturerModels should call repository and return data',
    () async {
      final mockRepository = MockManufacturerDetailsRepository();
      final container = ProviderContainer(
        overrides: [
          getManufacturerModelUseCase
              .overrideWith((ref) => GetManufacturerModels(mockRepository)),
        ],
      );

      const manufacturer = 'Example Manufacturer';
      final expectedResult = [
        const ManufacturerModel(manufacturer: manufacturer, modelName: '123'),
      ];

      when(mockRepository.getManufacturerModel(
              manufacturer: anyNamed('manufacturer')))
          .thenAnswer((_) async => expectedResult);

      final result = await container.read(getManufacturerModelUseCase)(
          GetManufacturerModelsRequest(manufacturer: manufacturer));

      expect(result, expectedResult);

      // Verify that the repository method was called with the correct argument
      verify(mockRepository.getManufacturerModel(manufacturer: manufacturer))
          .called(1);

      container.dispose();
    },
  );
}
