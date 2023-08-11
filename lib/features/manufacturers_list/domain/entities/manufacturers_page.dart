import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page_result.dart';

part 'manufacturers_page.freezed.dart';

@freezed
class ManufacturersPage with _$ManufacturersPage {
  const factory ManufacturersPage({
    required int count,
    required List<ManufacturersPageResult> result,
  }) = _ManufacturersPage;
}
