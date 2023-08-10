import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/core/extensions/list_extensions.dart';
import 'package:untitled3/core/utils/typedef.dart';
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
    await loadNextPage();
    return state.value ?? [];
  }

  Future<void> loadNextPage() async {
    state = const AsyncLoading();
    final GetManufacturersPage getManufacturersPage =
        ref.read(getManufacturersPageUseCase);

    final ManufacturersPageOr result = await getManufacturersPage(
        GetManufacturersPageRequest(page: _currentPage + 1));
    _currentPage++;
    state = result.when(success: (data) {
      final clone = (state.value ?? []).clone;
      clone.add(data);
      return AsyncData(clone);
    }, failure: (failure) {
      return AsyncError(failure, StackTrace.current);
    });
  }
}
