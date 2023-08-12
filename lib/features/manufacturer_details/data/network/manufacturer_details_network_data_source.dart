import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/core/exceptions/exceptions.dart';
import 'package:untitled3/core/network/request_handler.dart';
import 'package:untitled3/features/manufacturer_details/data/data_source/manufacturer_details_data_source.dart';
import 'package:untitled3/features/manufacturer_details/data/network/dtos/manufacturer_model_dto.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';

final manufacturerDetailsNetworkDataSource =
    Provider<ManufacturerDetailsDataSource>(
  (ref) => ManufacturerDetailsNetworkDataSource(
    ref.read(requestHandler),
  ),
);

class ManufacturerDetailsNetworkDataSource
    extends ManufacturerDetailsDataSource {
  static const String _vehicles = 'vehicles';
  static const String _getmodelsformake = 'getmodelsformake';

  final RequestHandler _requestHandler;

  ManufacturerDetailsNetworkDataSource(this._requestHandler);

  @override
  Future<List<ManufacturerModel>> getManufacturerModel({
    required String manufacturer,
  }) async {
    try {
      debugPrint('getManufacturerModel network $manufacturer');
      final List<ManufacturerModel> manufacturers = await _requestHandler.get<List<ManufacturerModel>>(
        path: '$_vehicles/$_getmodelsformake/$manufacturer',
        queryParameters: {
          'format': 'json',
        },
        mapper: (data, headers) {
          return ManufacturerModelDto.fromJson(data).toDomain();
        },
      );
      return manufacturers;
    } catch (e) {
      throw ServerException.generic(e);
    }
  }
}
