import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/core/utils/either.dart';
import 'package:untitled3/core/utils/typedef.dart';
import 'package:untitled3/features/manufacturers_list/data/data_source/manufacturers_list_data_source.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';

final manufacturersListNetworkDataSource =
    Provider<ManufacturersListDataSource>(
  (ref) => ManufacturersListNetworkDataSource(),
);

class ManufacturersListNetworkDataSource extends ManufacturersListDataSource {
  @override
  Future<ManufacturersPageOr> getManufacturersPage({required int page}) async {
    return Either.success(ManufacturersPage(
      count: 1021243,
    ));
  }
}
