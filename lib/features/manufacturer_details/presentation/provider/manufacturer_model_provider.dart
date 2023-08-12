import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/features/manufacturer_details/domain/entities/manufacturer_model.dart';
import 'package:untitled3/features/manufacturer_details/domain/use_cases/get_manufacturer_makes.dart';

final manufacturerModelProvider = AsyncNotifierProviderFamily<
    ManufacturerModelNotifier, List<ManufacturerModel>, String>(
  ManufacturerModelNotifier.new,
);

class ManufacturerModelNotifier
    extends FamilyAsyncNotifier<List<ManufacturerModel>, String> {
  @override
  FutureOr<List<ManufacturerModel>> build(String arg) {
    return _loadModel();
  }

  Future<List<ManufacturerModel>> _loadModel() async {
    final GetManufacturerModel getManufacturerModel =
        ref.read(getManufacturerModelUseCase);
    return await getManufacturerModel(GetManufacturerModelRequest(
      manufacturer: arg,
    ));
  }

  Future<void> refresh() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(_loadModel);
  }
}
