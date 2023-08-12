import 'package:isar/isar.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';

part 'manufacturer_model_collection.g.dart';

@collection
class ManufacturerModelCollection {
  Id id = Isar.autoIncrement;
  @Index(unique: true, replace: true)
  final String manufacturer;
  List<ManufacturerModelResultCollection> result;

  ManufacturerModelCollection(
    this.manufacturer,
    this.result,
  );
}

extension ManufacturerModelCollectionX on ManufacturerModelCollection {
  static ManufacturerModelCollection fromDomain({
    required List<ManufacturerModel> models,
    required String manufacturer,
  }) {
    return ManufacturerModelCollection(
      manufacturer,
      models
          .map((e) => ManufacturerModelResultCollectionX.fromDomain(e))
          .toList(),
    );
  }

  List<ManufacturerModel> toDomain() {
    return result.map((e) => e.toDomain()).toList();
  }
}

@embedded
class ManufacturerModelResultCollection {
  final String? manufacturer;
  final String? modelName;

  const ManufacturerModelResultCollection({
    this.manufacturer,
    this.modelName,
  });
}

extension ManufacturerModelResultCollectionX
    on ManufacturerModelResultCollection {
  static ManufacturerModelResultCollection fromDomain(
      ManufacturerModel entity) {
    return ManufacturerModelResultCollection(
      manufacturer: entity.manufacturer,
      modelName: entity.modelName,
    );
  }

  ManufacturerModel toDomain() {
    return ManufacturerModel(
      manufacturer: manufacturer,
      modelName: modelName,
    );
  }
}
