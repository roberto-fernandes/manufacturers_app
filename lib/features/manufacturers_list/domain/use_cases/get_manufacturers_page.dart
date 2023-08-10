import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:untitled3/core/utils/typedef.dart';
import 'package:untitled3/features/common/domain/usecase.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page.dart';
import 'package:untitled3/features/manufacturers_list/domain/repositories/manufacturers_list_repository.dart';

final getManufacturersPageUseCase = Provider(
  (ref) => GetManufacturersPage(ref.read(manufacturersListRepository)),
);

class GetManufacturersPage
    implements UseCase<ManufacturersPage, GetManufacturersPageRequest> {
  final ManufacturersListRepository repository;

  GetManufacturersPage(this.repository);

  @override
  Future<ManufacturersPageOr> call(GetManufacturersPageRequest params) async {
    return repository.getManufacturersPage(
      page: params.page,
    );
  }
}

class GetManufacturersPageRequest {
  final int page;

  GetManufacturersPageRequest({
    required this.page,
  });
}
