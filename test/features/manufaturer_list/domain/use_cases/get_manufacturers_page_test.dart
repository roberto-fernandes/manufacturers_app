import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page_result.dart';
import 'package:untitled3/features/manufacturers_list/domain/repositories/manufacturers_list_repository.dart';
import 'package:untitled3/features/manufacturers_list/domain/use_cases/get_manufacturers_page.dart';

import 'get_manufacturers_page_test.mocks.dart';

@GenerateMocks([ManufacturersListRepository])
void main() {
  test('GetManufacturersPage should call repository and return data', () async {
    final mockRepository = MockManufacturersListRepository();
    final container = ProviderContainer(overrides: [
      getManufacturersPageUseCase
          .overrideWith((ref) => GetManufacturersPage(mockRepository))
    ]);

    const page = 1;
    const expectedResult = ManufacturersPage(
      page: page,
      count: 2,
      result: [
        ManufacturersPageResult(
            country: 'Country 1', commonName: 'Name 1', id: 1),
        ManufacturersPageResult(
            country: 'Country 2', commonName: 'Name 2', id: 2),
      ],
    );

    when(mockRepository.getManufacturersPage(page: anyNamed('page')))
        .thenAnswer((_) async => expectedResult);

    final result = await container.read(getManufacturersPageUseCase)(
        GetManufacturersPageRequest(page: page));

    expect(result, expectedResult);

    // Verifies that the repository method was called with the correct argument
    verify(mockRepository.getManufacturersPage(page: page)).called(1);

    container.dispose();
  });
}
