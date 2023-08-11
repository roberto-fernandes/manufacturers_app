import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/core/extensions/list_extensions.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';

final manufacturerListProvider =
    NotifierProvider<ManufacturerListNotifier, List<ManufacturersPage>>(
  ManufacturerListNotifier.new,
);

class ManufacturerListNotifier extends Notifier<List<ManufacturersPage>> {
  @override
  List<ManufacturersPage> build() {
    return const [];
  }

  void addPage(ManufacturersPage page) {
    final clone = state.clone;
    clone.add(page);
    state = clone;
  }

  void replacePages(List<ManufacturersPage> pages) {
    state = pages;
  }
}
