import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page_result.dart';
import 'package:untitled3/features/manufacturers_list/domain/use_cases/get_manufacturers_page.dart';
import 'package:untitled3/features/manufacturers_list/presentation/providers/manufacturers_page_provider.dart';

import 'manufacturers_page_provider_test.mocks.dart';

@GenerateMocks([GetManufacturersPage])
void main() {
  // Set up mock response
  const ManufacturersPage mockPage = ManufacturersPage(
    page: 1,
    count: 5,
    result: [
      ManufacturersPageResult(
          country: 'Country A', commonName: 'Name A', id: 101),
      ManufacturersPageResult(
          country: 'Country B', commonName: 'Name B', id: 102),
      ManufacturersPageResult(
          country: 'Country C', commonName: 'Name C', id: 103),
    ],
  );

  late final MockGetManufacturersPage mockGetManufacturersPage;
  late final ProviderContainer container;
  late final ManufacturersPageNotifier notifier;

  setUpAll(() {
    mockGetManufacturersPage = MockGetManufacturersPage();
    container = ProviderContainer(
      overrides: [
        getManufacturersPageUseCase
            .overrideWith((ref) => mockGetManufacturersPage)
      ],
    );
    notifier = container.read(manufacturersPageNotifier.notifier);
  });

  tearDown(() {
    container.dispose();
  });

  test('ManufacturersPageProvider loadNextPage should load the next page',
      () async {
    when(mockGetManufacturersPage(any)).thenAnswer((_) async => mockPage);
    // Trigger the loadNextPage method
    await notifier.loadNextPage();

    // Verify that the provider's state has been updated
    final state = container.read(manufacturersPageNotifier);
    expect(state.value, 1);

    // Verify that the mockGetManufacturersPage method was called at start and when loading next page
    verify(mockGetManufacturersPage(any)).called(2);
  });
}
