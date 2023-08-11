import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/core/extensions/list_extensions.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';
import 'package:untitled3/features/manufacturers_list/domain/use_cases/get_manufacturers_page.dart';

final manufacturerListProvider = AutoDisposeAsyncNotifierProvider<
    ManufacturerListNotifier, List<ManufacturersPage>>(
  ManufacturerListNotifier.new,
);

class ManufacturerListNotifier
    extends AutoDisposeAsyncNotifier<List<ManufacturersPage>> {
  int _currentPage = 0;

  @override
  FutureOr<List<ManufacturersPage>> build() async {
    return _loadData();
  }

  Future<List<ManufacturersPage>> _loadData() async {
    final GetManufacturersPage getManufacturersPage =
        ref.read(getManufacturersPageUseCase);
    _currentPage++;
    final ManufacturersPage result = await getManufacturersPage(
        GetManufacturersPageRequest(page: _currentPage));
    final clone = (state.value ?? []).clone;
    clone.add(result);
    return clone;
  }

  Future<void> addNextPage() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_loadData);
  }

  Future<void> reset() async {
    _currentPage = 0;
    await addNextPage();
  }
}
