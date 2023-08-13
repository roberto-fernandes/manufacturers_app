import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';
import 'package:untitled3/features/manufacturer_details/domain/use_cases/get_manufacturer_models.dart';

final manufacturerModelsProvider = AsyncNotifierProviderFamily<
    ManufacturerModelsNotifier, List<ManufacturerModel>, String>(
  ManufacturerModelsNotifier.new,
);

/// Notifier class for managing manufacturers models.
class ManufacturerModelsNotifier
    extends FamilyAsyncNotifier<List<ManufacturerModel>, String> {
  @override
  FutureOr<List<ManufacturerModel>> build(String arg) {
    return _loadModel();
  }

  Future<List<ManufacturerModel>> _loadModel() async {
    final GetManufacturerModels getManufacturerModel =
        ref.read(getManufacturerModelUseCase);
    return await getManufacturerModel(GetManufacturerModelsRequest(
      manufacturer: arg,
    ));
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_loadModel);
  }
}
