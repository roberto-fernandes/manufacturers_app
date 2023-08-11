import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/core/exceptions/exceptions.dart';
import 'package:untitled3/core/network/request_handler.dart';
import 'package:untitled3/features/manufacturers_list/data/data_source/manufacturers_list_data_source.dart';
import 'package:untitled3/features/manufacturers_list/data/dtos/manufacturers_page_dto.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';

final manufacturersListNetworkDataSource =
    Provider<ManufacturersListDataSource>(
  (ref) => ManufacturersListNetworkDataSource(),
);

class ManufacturersListNetworkDataSource extends ManufacturersListDataSource {
  final String _vehicles = 'vehicles';
  final String _getallmanufacturers = 'getallmanufacturers';

  @override
  Future<ManufacturersPage> getManufacturersPage({required int page}) async {
    try {
      final RequestHandler<ManufacturersPage> handler =
          RequestHandler<ManufacturersPage>();

      return handler.get(
        path: '$_vehicles/$_getallmanufacturers',
        queryParameters: {
          'format': 'json',
          'page': '$page',
        },
        mapper: (data, headers) {
          return ManufacturersPageDto.fromJson(data).toDomain();
        },
      );
    } catch (e) {
      throw ServerException.generic(e);
    }
  }
}
