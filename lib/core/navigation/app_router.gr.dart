// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ManufacturesDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ManufacturesDetailsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ManufacturesDetailsScreen(
          item: args.item,
          key: args.key,
        ),
      );
    },
    ManufacturesListRoute.name: (routeData) {
      final args = routeData.argsAs<ManufacturesListRouteArgs>(
          orElse: () => const ManufacturesListRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ManufacturesListScreen(key: args.key),
      );
    },
  };
}

/// generated route for
/// [ManufacturesDetailsScreen]
class ManufacturesDetailsRoute
    extends PageRouteInfo<ManufacturesDetailsRouteArgs> {
  ManufacturesDetailsRoute({
    required ManufacturersPageResult item,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ManufacturesDetailsRoute.name,
          args: ManufacturesDetailsRouteArgs(
            item: item,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ManufacturesDetailsRoute';

  static const PageInfo<ManufacturesDetailsRouteArgs> page =
      PageInfo<ManufacturesDetailsRouteArgs>(name);
}

class ManufacturesDetailsRouteArgs {
  const ManufacturesDetailsRouteArgs({
    required this.item,
    this.key,
  });

  final ManufacturersPageResult item;

  final Key? key;

  @override
  String toString() {
    return 'ManufacturesDetailsRouteArgs{item: $item, key: $key}';
  }
}

/// generated route for
/// [ManufacturesListScreen]
class ManufacturesListRoute extends PageRouteInfo<ManufacturesListRouteArgs> {
  ManufacturesListRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ManufacturesListRoute.name,
          args: ManufacturesListRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ManufacturesListRoute';

  static const PageInfo<ManufacturesListRouteArgs> page =
      PageInfo<ManufacturesListRouteArgs>(name);
}

class ManufacturesListRouteArgs {
  const ManufacturesListRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'ManufacturesListRouteArgs{key: $key}';
  }
}
