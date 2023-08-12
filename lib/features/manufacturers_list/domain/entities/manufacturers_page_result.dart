import 'package:freezed_annotation/freezed_annotation.dart';

part 'manufacturers_page_result.freezed.dart';

@freezed
class ManufacturersPageResult with _$ManufacturersPageResult {
  const factory ManufacturersPageResult({
    required String? country,
    required String? commonName,
    required int id,
  }) = _ManufacturersPageResult;
}