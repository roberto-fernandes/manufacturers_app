import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:untitled3/core/exceptions/exceptions.dart';
import 'package:untitled3/core/storage/storage_handler.dart';
import 'package:untitled3/features/manufacturers_list/data/data_source/manufacturers_list_data_source.dart';
import 'package:untitled3/features/manufacturers_list/data/storage/collections/manufacturers_page_collection.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';

final manufacturersListStorageDataSource =
    Provider<ManufacturersListDataSource>(
  (ref) => ManufacturersListStorageDataSource(),
);

class ManufacturersListStorageDataSource extends ManufacturersListDataSource {
  Isar get _isar => storageHandler.isar;

  @override
  Future<ManufacturersPage> getManufacturersPage({required int page}) async {
    try {
      debugPrint('getManufacturersPage storage');
      final ManufacturersPageCollection? collection = await _isar.manufacturersPageCollections.get(page);
      final ManufacturersPage manufacturersPage = collection!.toDomain();
      return manufacturersPage;
    } catch (e) {
      throw CacheException.generic(e);
    }
  }

  @override
  Future<void> saveManufacturersPage({
    required ManufacturersPage manufacturersPage,
  }) async {
    final ManufacturersPageCollection collection =
        ManufacturersPageCollectionX.fromDomain(manufacturersPage);
    await _isar.writeTxn(() => _isar.manufacturersPageCollections.put(collection));
  }
}
