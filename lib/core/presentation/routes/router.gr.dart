// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../../features/locker_and_equipment/presentation/pages/locker_and_equipment_main.dart'
    as _i3;
import '../../../features/permission_management/presentation/pages/permission_management_main.dart'
    as _i2;
import '../../../features/streaming_and_record/pages/streaming_and_record_main.dart'
    as _i4;
import '../pages/home.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.HomePage());
    },
    PermissionManagementMainRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.PermissionManagementMainPage());
    },
    LockerAndEquipmentMainRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.LockerAndEquipmentMainPage());
    },
    StreamingAndRecordMainRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.StreamingAndRecordMainPage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(HomeRoute.name, path: '/', children: [
          _i5.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'permission_management_main',
              fullMatch: true),
          _i5.RouteConfig(PermissionManagementMainRoute.name,
              path: 'permission_management_main', parent: HomeRoute.name),
          _i5.RouteConfig(LockerAndEquipmentMainRoute.name,
              path: 'locker_and_equipment_main', parent: HomeRoute.name),
          _i5.RouteConfig(StreamingAndRecordMainRoute.name,
              path: 'streaming_and_record_main', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.PermissionManagementMainPage]
class PermissionManagementMainRoute extends _i5.PageRouteInfo<void> {
  const PermissionManagementMainRoute()
      : super(PermissionManagementMainRoute.name,
            path: 'permission_management_main');

  static const String name = 'PermissionManagementMainRoute';
}

/// generated route for
/// [_i3.LockerAndEquipmentMainPage]
class LockerAndEquipmentMainRoute extends _i5.PageRouteInfo<void> {
  const LockerAndEquipmentMainRoute()
      : super(LockerAndEquipmentMainRoute.name,
            path: 'locker_and_equipment_main');

  static const String name = 'LockerAndEquipmentMainRoute';
}

/// generated route for
/// [_i4.StreamingAndRecordMainPage]
class StreamingAndRecordMainRoute extends _i5.PageRouteInfo<void> {
  const StreamingAndRecordMainRoute()
      : super(StreamingAndRecordMainRoute.name,
            path: 'streaming_and_record_main');

  static const String name = 'StreamingAndRecordMainRoute';
}
