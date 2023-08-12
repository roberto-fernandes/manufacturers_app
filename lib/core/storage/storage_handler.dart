import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:untitled3/features/manufacturers_list/data/storage/collections/manufacturers_page_collection.dart';

class StorageHandler {
  /// Private constructor
  StorageHandler._();

  /// Singleton instance
  static final StorageHandler _instance = StorageHandler._();

  /// Accessor to get the instance
  static StorageHandler get instance => _instance;

  late final Isar _isar;

  Isar get isar => _isar;

  Future<void> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open(
      [ManufacturersPageCollectionSchema],
      inspector: true,
      directory: dir.path,
    );
  }
}
