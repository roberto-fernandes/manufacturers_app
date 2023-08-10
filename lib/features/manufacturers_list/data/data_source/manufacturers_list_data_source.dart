import 'package:untitled3/core/utils/typedef.dart';

abstract class ManufacturersListDataSource {
  Future<ManufacturersPageOr> getManufacturersPage({required int page});
}
