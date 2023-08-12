import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';
import 'package:untitled3/features/manufacturer_details/domain/use_cases/get_manufacturer_models.dart';
import 'package:untitled3/features/manufacturer_details/presentation/provider/manufacturer_models_provider.dart';

import 'manufacturer_models_provider_tests.mocks.dart';

@GenerateMocks([GetManufacturerModels])
void main() {
  group('ManufacturerModelsNotifier', () {
    const String manufacturer = 'Toyota';
    late MockGetManufacturerModels mockGetManufacturerModels;
    late ProviderContainer container;
    late ManufacturerModelsNotifier notifier;
    // Set up mock response
    final mockModels = [
      const ManufacturerModel(
          manufacturer: 'Manufacturer A', modelName: 'Model A'),
      const ManufacturerModel(
          manufacturer: 'Manufacturer B', modelName: 'Model B'),
      const ManufacturerModel(
          manufacturer: 'Manufacturer C', modelName: 'Model C'),
    ];

    setUp(() {
      mockGetManufacturerModels = MockGetManufacturerModels();
      container = ProviderContainer(overrides: [
        getManufacturerModelUseCase
            .overrideWith((ref) => mockGetManufacturerModels)
      ]);
      notifier =
          container.read(manufacturerModelsProvider(manufacturer).notifier);
      when(mockGetManufacturerModels(any)).thenAnswer((_) async => mockModels);
    });

    tearDown(() {
      container.dispose();
    });

    test('should load manufacturer models', () async {
      final result = await notifier.build(manufacturer);
      expect(result, mockModels);

      // Verify that the mockGetManufacturerModels method was called at creation and when manually called build
      verify(mockGetManufacturerModels(any)).called(2);
    });

    test('refresh should reload manufacturer models', () async {
      await notifier.refresh();

      // Verify that the mockGetManufacturerModels method was called with the correct argument
      verify(mockGetManufacturerModels(any)).called(2);
    });
  });
}
