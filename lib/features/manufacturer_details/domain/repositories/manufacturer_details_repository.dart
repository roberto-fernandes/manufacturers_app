
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/features/manufacturer_details/data/network/manufacturer_details_network_data_source.dart';
import 'package:untitled3/features/manufacturer_details/data/repositories/manufacturer_details_repository_impl.dart';
import 'package:untitled3/features/manufacturer_details/data/storage/manufacturer_details_storage_data_source.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';

final manufacturerDetailsRepository = Provider<ManufacturerDetailsRepository>(
  (ref) => ManufacturerDetailsRepositoryImpl(
    networkDataSource: ref.read(manufacturerDetailsNetworkDataSource),
    storageDataSource: ref.read(manufacturerDetailsStorageDataSource),
  ),
);


abstract class ManufacturerDetailsRepository {
  Future<List<ManufacturerModel>> getManufacturerModel({required String manufacturer});
}
