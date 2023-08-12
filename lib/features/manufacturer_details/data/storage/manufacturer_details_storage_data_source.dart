import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:untitled3/core/exceptions/exceptions.dart';
import 'package:untitled3/core/storage/storage_handler.dart';
import 'package:untitled3/features/manufacturer_details/data/data_source/manufacturer_details_data_source.dart';
import 'package:untitled3/features/manufacturer_details/data/storage/collections/manufacturer_model_collection.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';

final manufacturerDetailsStorageDataSource =
    Provider<ManufacturerDetailsDataSource>(
  (ref) => ManufacturerDetailsStorageDataSource(),
);

class ManufacturerDetailsStorageDataSource
    extends ManufacturerDetailsDataSource {
  Isar get _isar => storageHandler.isar;

  @override
  Future<List<ManufacturerModel>> getManufacturerModel(
      {required String manufacturer}) async {
    try {
      debugPrint('getManufacturerModel storage $manufacturer');
      final ManufacturerModelCollection? collection = _isar
          .manufacturerModelCollections
          .getByManufacturerSync(manufacturer);
      final List<ManufacturerModel> models = collection!.toDomain();
      return models;
    } catch (e) {
      throw CacheException.generic(e);
    }
  }

  @override
  Future<void> saveManufacturerModels({
    required String manufacturer,
    required List<ManufacturerModel> models,
  }) async {
    final collection = ManufacturerModelCollectionX.fromDomain(
      models: models,
      manufacturer: manufacturer,
    );
    await _isar
        .writeTxn(() => _isar.manufacturerModelCollections.put(collection));
  }
}
