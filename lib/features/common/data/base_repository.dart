
/// Abstract class that acts as a base repository for all repository implementations.
/// It allows defining the default data source type.
///
/// @param <T> The type of data source object used.
abstract class BaseRepository<T> {
  /// Constructor that takes in the data sources,
  BaseRepository({
    required this.storageDataSource,
    required this.networkDataSource,
  });

  /// [storageDataSource] - The local data source object.
  /// [networkDataSource] - networkDataSource The network data source object.
  final T storageDataSource;
  final T networkDataSource;

}
