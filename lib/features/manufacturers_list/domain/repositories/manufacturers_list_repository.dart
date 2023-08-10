import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/features/manufacturers_list/data/data_source/manufacturers_list_network_data_source.dart';
import 'package:untitled3/features/manufacturers_list/data/repositories/manufacturers_list_repository_impl.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';

final manufacturersListRepository = Provider<ManufacturersListRepository>(
  (ref) => ManufacturersListRepositoryImpl(
    networkDataSource: ref.read(manufacturersListNetworkDataSource),
  ),
);

abstract class ManufacturersListRepository {
  Future<ManufacturersPage> getManufacturersPage({required int page});
}
