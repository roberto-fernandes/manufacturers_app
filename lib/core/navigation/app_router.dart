import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:untitled3/features/manufacturer_details/presentation/manufacturer_details.dart';
import 'package:untitled3/features/manufacturers_list/domain/entities/manufacturers_page_result.dart';
import 'package:untitled3/features/manufacturers_list/presentation/manufactures_list.dart';

part 'app_router.gr.dart';

/// Getter Method For Convenience Instance Access
AppRouter get appRouter => AppRouter.instance;

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  /// Private constructor
  AppRouter._();

  /// Singleton instance
  static final AppRouter _instance = AppRouter._();

  /// Accessor to get the instance
  static AppRouter get instance => _instance;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: ManufacturesListRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: ManufacturesDetailsRoute.page,
        ),
      ];
}
