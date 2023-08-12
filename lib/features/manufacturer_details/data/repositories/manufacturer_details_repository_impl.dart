import 'package:untitled3/features/common/data/base_repository.dart';
import 'package:untitled3/features/manufacturer_details/data/data_source/manufacturer_details_data_source.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';
import 'package:untitled3/features/manufacturer_details/domain/repositories/manufacturer_details_repository.dart';

class ManufacturerDetailsRepositoryImpl
    extends BaseRepository<ManufacturerDetailsDataSource>
    implements ManufacturerDetailsRepository {
  ManufacturerDetailsRepositoryImpl({
    required super.networkDataSource,
    required super.storageDataSource,
  });

  @override
  Future<List<ManufacturerModel>> getManufacturerModel({
    required String manufacturer,
  }) async {
    try {
      final List<ManufacturerModel> models = await networkDataSource
          .getManufacturerModel(manufacturer: manufacturer);
      storageDataSource.saveManufacturerModels(
        models: models,
        manufacturer: manufacturer,
      );
      return models;
    } catch (e) {
      final List<ManufacturerModel> models = await storageDataSource
          .getManufacturerModel(manufacturer: manufacturer);
      return models;
    }
  }
}
