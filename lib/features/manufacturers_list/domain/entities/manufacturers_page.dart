
import 'package:freezed_annotation/freezed_annotation.dart';

part 'manufacturers_page.freezed.dart';

@freezed
class ManufacturersPage with _$ManufacturersPage {
  const factory ManufacturersPage({
    required int count,
  }) = _ManufacturersPage;
}