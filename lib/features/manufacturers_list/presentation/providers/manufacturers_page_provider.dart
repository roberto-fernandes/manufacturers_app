import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';
import 'package:untitled3/features/manufacturers_list/domain/use_cases/get_manufacturers_page.dart';
import 'package:untitled3/features/manufacturers_list/presentation/providers/manufacturers_list_provider.dart';

final manufacturersPageNotifier =
    AsyncNotifierProvider<ManufacturersPageNotifier, int>(
  ManufacturersPageNotifier.new,
);

class ManufacturersPageNotifier extends AsyncNotifier<int> {
  @override
  FutureOr<int> build() async {
    state = const AsyncData(0);
    await loadNextPage();
    return state.value ?? 0;
  }

  Future<void> loadNextPage() async {
    final GetManufacturersPage getManufacturersPage =
        ref.read(getManufacturersPageUseCase);
    final int? currentPage = state.value;
    if (currentPage == null) {
      return;
    }
    final int nextPage = currentPage + 1;
    state = const AsyncLoading();
    try {
      final ManufacturersPage page = await getManufacturersPage(
          GetManufacturersPageRequest(page: nextPage));

      ref.read(manufacturerListProvider.notifier).addPage(page);
      state = AsyncData(nextPage);
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }

  Future<void> reloadPage() async {
    await loadNextPage();
  }

  Future<void> reset() async {
    ref.read(manufacturerListProvider.notifier).replacePages(const []);
    state = const AsyncData(0);
    await loadNextPage();
  }
}
