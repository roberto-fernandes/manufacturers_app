import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/core/exceptions/exceptions.dart';
import 'package:untitled3/core/network/request_handler.dart';
import 'package:untitled3/features/manufacturers_list/data/data_source/manufacturers_list_data_source.dart';
import 'package:untitled3/features/manufacturers_list/data/network/dtos/manufacturers_page_dto.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';

final manufacturersListNetworkDataSource =
    Provider<ManufacturersListDataSource>(
  (ref) => ManufacturersListNetworkDataSource(
    ref.read(requestHandler),
  ),
);

class ManufacturersListNetworkDataSource extends ManufacturersListDataSource {
  static const String _vehicles = 'vehicles';
  static const String _getallmanufacturers = 'getallmanufacturers';

  final RequestHandler _requestHandler;

  ManufacturersListNetworkDataSource(this._requestHandler);

  @override
  Future<ManufacturersPage> getManufacturersPage({required int page}) async {
    try {
      debugPrint('getManufacturersPage network $page');
      return _requestHandler.get<ManufacturersPage>(
        path: '$_vehicles/$_getallmanufacturers',
        queryParameters: {
          'format': 'json',
          'page': '$page',
        },
        mapper: (data, headers) {
          return ManufacturersPageDto.fromJson(data).toDomain(page);
        },
      );
    } catch (e) {
      throw ServerException.generic(e);
    }
  }
}
