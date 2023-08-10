import 'package:untitled3/features/common/data/base_repository.dart';
import 'package:untitled3/features/manufacturers_list/data/data_source/manufacturers_list_data_source.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';
import 'package:untitled3/features/manufacturers_list/domain/repositories/manufacturers_list_repository.dart';

class ManufacturersListRepositoryImpl
    extends BaseRepository<ManufacturersListDataSource>
    implements ManufacturersListRepository {

  ManufacturersListRepositoryImpl({
    required super.networkDataSource,
  });

  @override
  Future<ManufacturersPage> getManufacturersPage({required int page}) {
    return networkDataSource!.getManufacturersPage(page: page);
  }
}
