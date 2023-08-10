import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/core/utils/typedef.dart';
import 'package:untitled3/features/manufacturers_list/data/data_source/manufacturers_list_network_data_source.dart';
import 'package:untitled3/features/manufacturers_list/data/repositories/manufacturers_list_repository_impl.dart';

final manufacturersListRepository = Provider<ManufacturersListRepository>(
  (ref) => ManufacturersListRepositoryImpl(
    networkDataSource: ref.read(manufacturersListNetworkDataSource),
  ),
);

abstract class ManufacturersListRepository {
  Future<ManufacturersPageOr> getManufacturersPage({required int page});
}
