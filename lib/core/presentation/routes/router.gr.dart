// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../../../features/authentication/presentation/pages/sign_in_page.dart'
    as _i2;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_locker.dart'
    as _i5;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_locker_form.dart'
    as _i6;
import '../../../features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment_main.dart'
    as _i8;
import '../../../features/permission_management/presentation/pages/add_user_main.dart'
    as _i4;
import '../../../features/permission_management/presentation/pages/permission_management_main.dart'
    as _i7;
import '../../../features/repair_report/pages/repair_report_main.dart' as _i10;
import '../../../features/streaming_and_record/pages/streaming_and_record_main.dart'
    as _i9;
import '../pages/home.dart' as _i3;
import '../pages/splash.dart' as _i1;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.HomePage(currentTab: args.currentTab));
    },
    AddUserMainRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.AddUserMainPage());
    },
    AddLockerRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.AddLockerPage());
    },
    AddLockerFormRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.AddLockerFormPage());
    },
    PermissionManagementMainRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i7.PermissionManagementMainPage());
    },
    ManageLockerAndEquipmentMainRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.ManageLockerAndEquipmentMainPage());
    },
    StreamingAndRecordMainRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.StreamingAndRecordMainPage());
    },
    RepairReportMainRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.RepairReportMainPage());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashRoute.name, path: '/'),
        _i11.RouteConfig(SignInRoute.name, path: 'sign_in_page'),
        _i11.RouteConfig(HomeRoute.name, path: '/', children: [
          _i11.RouteConfig(PermissionManagementMainRoute.name,
              path: 'permission_management_main', parent: HomeRoute.name),
          _i11.RouteConfig(ManageLockerAndEquipmentMainRoute.name,
              path: 'locker_and_equipment_main', parent: HomeRoute.name),
          _i11.RouteConfig(StreamingAndRecordMainRoute.name,
              path: 'streaming_and_record_main', parent: HomeRoute.name),
          _i11.RouteConfig(RepairReportMainRoute.name,
              path: 'repair_report_main', parent: HomeRoute.name)
        ]),
        _i11.RouteConfig(AddUserMainRoute.name, path: 'add_user_main'),
        _i11.RouteConfig(AddLockerRoute.name, path: 'add_locker'),
        _i11.RouteConfig(AddLockerFormRoute.name, path: 'add_locker_form')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i11.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: 'sign_in_page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i11.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({int? currentTab, List<_i11.PageRouteInfo>? children})
      : super(HomeRoute.name,
            path: '/',
            args: HomeRouteArgs(currentTab: currentTab),
            initialChildren: children);

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.currentTab});

  final int? currentTab;

  @override
  String toString() {
    return 'HomeRouteArgs{currentTab: $currentTab}';
  }
}

/// generated route for
/// [_i4.AddUserMainPage]
class AddUserMainRoute extends _i11.PageRouteInfo<void> {
  const AddUserMainRoute()
      : super(AddUserMainRoute.name, path: 'add_user_main');

  static const String name = 'AddUserMainRoute';
}

/// generated route for
/// [_i5.AddLockerPage]
class AddLockerRoute extends _i11.PageRouteInfo<void> {
  const AddLockerRoute() : super(AddLockerRoute.name, path: 'add_locker');

  static const String name = 'AddLockerRoute';
}

/// generated route for
/// [_i6.AddLockerFormPage]
class AddLockerFormRoute extends _i11.PageRouteInfo<void> {
  const AddLockerFormRoute()
      : super(AddLockerFormRoute.name, path: 'add_locker_form');

  static const String name = 'AddLockerFormRoute';
}

/// generated route for
/// [_i7.PermissionManagementMainPage]
class PermissionManagementMainRoute extends _i11.PageRouteInfo<void> {
  const PermissionManagementMainRoute()
      : super(PermissionManagementMainRoute.name,
            path: 'permission_management_main');

  static const String name = 'PermissionManagementMainRoute';
}

/// generated route for
/// [_i8.ManageLockerAndEquipmentMainPage]
class ManageLockerAndEquipmentMainRoute extends _i11.PageRouteInfo<void> {
  const ManageLockerAndEquipmentMainRoute()
      : super(ManageLockerAndEquipmentMainRoute.name,
            path: 'locker_and_equipment_main');

  static const String name = 'ManageLockerAndEquipmentMainRoute';
}

/// generated route for
/// [_i9.StreamingAndRecordMainPage]
class StreamingAndRecordMainRoute extends _i11.PageRouteInfo<void> {
  const StreamingAndRecordMainRoute()
      : super(StreamingAndRecordMainRoute.name,
            path: 'streaming_and_record_main');

  static const String name = 'StreamingAndRecordMainRoute';
}

/// generated route for
/// [_i10.RepairReportMainPage]
class RepairReportMainRoute extends _i11.PageRouteInfo<void> {
  const RepairReportMainRoute()
      : super(RepairReportMainRoute.name, path: 'repair_report_main');

  static const String name = 'RepairReportMainRoute';
}
