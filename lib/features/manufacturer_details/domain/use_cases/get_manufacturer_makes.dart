import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/features/common/domain/usecase.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';
import 'package:untitled3/features/manufacturer_details/domain/repositories/manufacturer_details_repository.dart';

final getManufacturerModelUseCase = Provider(
  (ref) => GetManufacturerModel(ref.read(manufacturerDetailsRepository)),
);

class GetManufacturerModel
    implements UseCase<List<ManufacturerModel>, GetManufacturerModelRequest> {
  final ManufacturerDetailsRepository repository;

  GetManufacturerModel(this.repository);

  @override
  Future<List<ManufacturerModel>> call(GetManufacturerModelRequest params) async {
    return repository.getManufacturerModel(
      manufacturer: params.manufacturer,
    );
  }
}

class GetManufacturerModelRequest {
  final String manufacturer;

  GetManufacturerModelRequest({
    required this.manufacturer,
  });
}
