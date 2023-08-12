import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page_result.dart';
import 'package:untitled3/features/manufacturers_list/presentation/providers/manufacturers_list_provider.dart';

void main() {
  test('ManufacturerListNotifier addPage should add a page', () {
    final container = ProviderContainer();
    final notifier = container.read(manufacturerListProvider.notifier);

    const pageToAdd = ManufacturersPage(
      page: 1,
      count: 5,
      result: [
        ManufacturersPageResult(country: 'Country A', commonName: 'Name A', id: 101),
        ManufacturersPageResult(country: 'Country B', commonName: 'Name B', id: 102),
      ],
    );

    notifier.addPage(pageToAdd);

    final state = container.read(manufacturerListProvider);

    expect(state.length, 1);
    expect(state[0].page, 1);
    expect(state[0].count, 5);
    expect(state[0].result.length, 2);
    expect(state[0].result[0].commonName, 'Name A');
  });

  test('ManufacturerListNotifier replacePages should replace the pages', () {
    final container = ProviderContainer();
    final notifier = container.read(manufacturerListProvider.notifier);

    final pagesToReplace = [
      const ManufacturersPage(
        page: 1,
        count: 5,
        result: [
          ManufacturersPageResult(country: 'Country A', commonName: 'Name A', id: 101),
        ],
      ),
      const ManufacturersPage(
        page: 2,
        count: 3,
        result: [
          ManufacturersPageResult(country: 'Country C', commonName: 'Name C', id: 103),
        ],
      ),
    ];

    notifier.replacePages(pagesToReplace);

    final state = container.read(manufacturerListProvider);

    expect(state.length, 2);
    expect(state[0].page, 1);
    expect(state[1].count, 3);
    expect(state[1].result.length, 1);
    expect(state[1].result[0].country, 'Country C');
  });
}
