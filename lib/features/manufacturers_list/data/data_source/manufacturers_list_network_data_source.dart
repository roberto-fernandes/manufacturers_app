import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/core/utils/exceptions.dart';
import 'package:untitled3/features/manufacturers_list/data/data_source/manufacturers_list_data_source.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';

final manufacturersListNetworkDataSource =
    Provider<ManufacturersListDataSource>(
  (ref) => ManufacturersListNetworkDataSource(),
);

class ManufacturersListNetworkDataSource extends ManufacturersListDataSource {
  @override
  Future<ManufacturersPage> getManufacturersPage({required int page}) async {
    try {
      return ManufacturersPage(
        count: page,
      );
    } catch (e) {
      throw ServerException.generic(e);
    }
  }
}
