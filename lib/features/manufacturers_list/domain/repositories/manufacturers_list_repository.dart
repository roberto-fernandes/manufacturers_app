import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/features/manufacturers_list/data/network/manufacturers_list_network_data_source.dart';
import 'package:untitled3/features/manufacturers_list/data/repositories/manufacturers_list_repository_impl.dart';
import 'package:untitled3/features/manufacturers_list/data/storage/manufacturers_list_storage_data_source.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';

final manufacturersListRepository = Provider<ManufacturersListRepository>(
  (ref) => ManufacturersListRepositoryImpl(
    networkDataSource: ref.read(manufacturersListNetworkDataSource),
    storageDataSource: ref.read(manufacturersListStorageDataSource),
  ),
);

abstract class ManufacturersListRepository {
  Future<ManufacturersPage> getManufacturersPage({required int page});
}
