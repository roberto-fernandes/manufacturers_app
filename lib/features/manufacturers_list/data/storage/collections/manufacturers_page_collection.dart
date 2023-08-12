import 'package:isar/isar.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page_result.dart';

part 'manufacturers_page_collection.g.dart';

@collection
class ManufacturersPageCollection {
  final Id page;
  final int count;
  List<ManufacturersPageResultCollection> result;

  ManufacturersPageCollection(
    this.page,
    this.result,
    this.count,
  );
}

extension ManufacturersPageCollectionX on ManufacturersPageCollection {
  static ManufacturersPageCollection fromDomain(ManufacturersPage entity) {
    return ManufacturersPageCollection(
      entity.page,
      entity.result
          .map((e) => ManufacturersPageResultCollectionX.fromDomain(e))
          .toList(),
      entity.count,
    );
  }

  ManufacturersPage toDomain() {
    return ManufacturersPage(
      page: page,
      count: count,
      result: result.map((e) => e.toDomain()).toList(),
    );
  }
}

@embedded
class ManufacturersPageResultCollection {
  final int? id;
  final String? country;
  final String? commonName;

  const ManufacturersPageResultCollection({
    this.id,
    this.country,
    this.commonName,
  });
}

extension ManufacturersPageResultCollectionX
    on ManufacturersPageResultCollection {
  static ManufacturersPageResultCollection fromDomain(
      ManufacturersPageResult entity) {
    return ManufacturersPageResultCollection(
      id: entity.id,
      country: entity.country,
      commonName: entity.commonName,
    );
  }

  ManufacturersPageResult toDomain() {
    return ManufacturersPageResult(
      id: id ?? -1,
      country: country,
      commonName: commonName,
    );
  }
}
