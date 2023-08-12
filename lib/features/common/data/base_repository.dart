/// Enum to define the type of data source used.
enum DataSourceType {
  local,
  network,
}

/// Abstract class that acts as a base repository for all repository implementations.
/// It allows defining the default data source type and provides a switch to set the default data source.
///
/// @param <T> The type of data source object used.
abstract class BaseRepository<T> {
  /// Constructor that takes in the default data source type, and data sources,
  BaseRepository({
    DataSourceType defaultDataSourceType = DataSourceType.network,
    this.storageDataSource,
    this.networkDataSource,
  });

  /// [storageDataSource] - The local data source object.
  /// [networkDataSource] - networkDataSource The network data source object.
  final T? storageDataSource;
  final T? networkDataSource;

}
