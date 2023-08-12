import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';

abstract class ManufacturerDetailsDataSource {
  Future<List<ManufacturerModel>> getManufacturerModel(
      {required String manufacturer});

  Future<void> saveManufacturerModels({
    required String manufacturer,
    required List<ManufacturerModel> models,
  }) async {}
}
