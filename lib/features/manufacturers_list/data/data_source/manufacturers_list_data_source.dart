import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';

abstract class ManufacturersListDataSource {
  Future<ManufacturersPage> getManufacturersPage({required int page});
}
