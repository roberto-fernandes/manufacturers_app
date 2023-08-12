import 'package:untitled3/core/navigation/app_router.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page_result.dart';

/// Getter Method For Convenience Instance Access
AppNavigation get appNavigation => AppNavigation.instance;

class AppNavigation {
  /// Private constructor
  AppNavigation._();

  /// Singleton instance
  static final AppNavigation _instance = AppNavigation._();

  /// Accessor to get the instance
  static AppNavigation get instance => _instance;

  Future<void> pushManufacturerDetails(ManufacturersPageResult item) {
    return appRouter.push(ManufacturesDetailsRoute(item: item));
  }
}
