import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/features/common/domain/usecase.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';
import 'package:untitled3/features/manufacturer_details/domain/repositories/manufacturer_details_repository.dart';

final getManufacturerModelUseCase = Provider(
  (ref) => GetManufacturerModels(ref.read(manufacturerDetailsRepository)),
);

class GetManufacturerModels
    implements UseCase<List<ManufacturerModel>, GetManufacturerModelsRequest> {
  final ManufacturerDetailsRepository repository;

  GetManufacturerModels(this.repository);

  @override
  Future<List<ManufacturerModel>> call(GetManufacturerModelsRequest params) async {
    return repository.getManufacturerModel(
      manufacturer: params.manufacturer,
    );
  }
}

class GetManufacturerModelsRequest {
  final String manufacturer;

  GetManufacturerModelsRequest({
    required this.manufacturer,
  });
}
