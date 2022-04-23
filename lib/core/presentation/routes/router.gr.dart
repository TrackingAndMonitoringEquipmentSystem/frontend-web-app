// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../../features/locker_and_equipment/presentation/pages/add_locker.dart'
    as _i3;
import '../../../features/locker_and_equipment/presentation/pages/add_locker_form.dart'
    as _i4;
import '../../../features/locker_and_equipment/presentation/pages/locker_and_equipment_main.dart'
    as _i6;
import '../../../features/permission_management/presentation/pages/add_user_main.dart'
    as _i2;
import '../../../features/permission_management/presentation/pages/permission_management_main.dart'
    as _i5;
import '../../../features/streaming_and_record/pages/streaming_and_record_main.dart'
    as _i7;
import '../pages/home.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.HomePage());
    },
    AddUserMainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.AddUserMainPage());
    },
    AddLockerRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.AddLockerPage());
    },
    AddLockerFormRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.AddLockerFormPage());
    },
    PermissionManagementMainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.PermissionManagementMainPage());
    },
    LockerAndEquipmentMainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.LockerAndEquipmentMainPage());
    },
    StreamingAndRecordMainRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.StreamingAndRecordMainPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(HomeRoute.name, path: '/', children: [
          _i8.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'permission_management_main',
              fullMatch: true),
          _i8.RouteConfig(PermissionManagementMainRoute.name,
              path: 'permission_management_main', parent: HomeRoute.name),
          _i8.RouteConfig(LockerAndEquipmentMainRoute.name,
              path: 'locker_and_equipment_main', parent: HomeRoute.name),
          _i8.RouteConfig(StreamingAndRecordMainRoute.name,
              path: 'streaming_and_record_main', parent: HomeRoute.name)
        ]),
        _i8.RouteConfig(AddUserMainRoute.name, path: 'add_user_main'),
        _i8.RouteConfig(AddLockerRoute.name, path: 'add_locker'),
        _i8.RouteConfig(AddLockerFormRoute.name, path: 'add_locker_form')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.AddUserMainPage]
class AddUserMainRoute extends _i8.PageRouteInfo<void> {
  const AddUserMainRoute()
      : super(AddUserMainRoute.name, path: 'add_user_main');

  static const String name = 'AddUserMainRoute';
}

/// generated route for
/// [_i3.AddLockerPage]
class AddLockerRoute extends _i8.PageRouteInfo<void> {
  const AddLockerRoute() : super(AddLockerRoute.name, path: 'add_locker');

  static const String name = 'AddLockerRoute';
}

/// generated route for
/// [_i4.AddLockerFormPage]
class AddLockerFormRoute extends _i8.PageRouteInfo<void> {
  const AddLockerFormRoute()
      : super(AddLockerFormRoute.name, path: 'add_locker_form');

  static const String name = 'AddLockerFormRoute';
}

/// generated route for
/// [_i5.PermissionManagementMainPage]
class PermissionManagementMainRoute extends _i8.PageRouteInfo<void> {
  const PermissionManagementMainRoute()
      : super(PermissionManagementMainRoute.name,
            path: 'permission_management_main');

  static const String name = 'PermissionManagementMainRoute';
}

/// generated route for
/// [_i6.LockerAndEquipmentMainPage]
class LockerAndEquipmentMainRoute extends _i8.PageRouteInfo<void> {
  const LockerAndEquipmentMainRoute()
      : super(LockerAndEquipmentMainRoute.name,
            path: 'locker_and_equipment_main');

  static const String name = 'LockerAndEquipmentMainRoute';
}

/// generated route for
/// [_i7.StreamingAndRecordMainPage]
class StreamingAndRecordMainRoute extends _i8.PageRouteInfo<void> {
  const StreamingAndRecordMainRoute()
      : super(StreamingAndRecordMainRoute.name,
            path: 'streaming_and_record_main');

  static const String name = 'StreamingAndRecordMainRoute';
}
