// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

import '../../../features/authentication/presentation/pages/sign_in_page.dart'
    as _i2;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_locker.dart'
    as _i9;
import '../../../features/manage_locker_and_equipment/presentation/pages/add_locker_form.dart'
    as _i10;
import '../../../features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment_main.dart'
    as _i12;
import '../../../features/permission_management/presentation/pages/add_user_main.dart'
    as _i8;
import '../../../features/permission_management/presentation/pages/permission_management_account.dart'
    as _i4;
import '../../../features/permission_management/presentation/pages/permission_management_approve.dart'
    as _i5;
import '../../../features/permission_management/presentation/pages/permission_management_block.dart'
    as _i6;
import '../../../features/permission_management/presentation/pages/permission_management_department.dart'
    as _i7;
import '../../../features/permission_management/presentation/pages/permission_management_main.dart'
    as _i11;
import '../../../features/repair_report/pages/repair_report_main.dart' as _i14;
import '../../../features/streaming_and_record/pages/streaming_and_record_main.dart'
    as _i13;
import '../pages/home.dart' as _i3;
import '../pages/splash.dart' as _i1;

class AppRouter extends _i15.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.HomePage(currentTab: args.currentTab));
    },
    PermissionManagementAccountRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.PermissionManagementAccountPage());
    },
    PermissionManagementApproveRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i5.PermissionManagementApprovePage());
    },
    PermissionManagementBlockRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i6.PermissionManagementBlockPage());
    },
    PermissionManagementDepartmentRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.PermissionManagementDepartmentPage());
    },
    AddUserMainRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.AddUserMainPage());
    },
    AddLockerRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.AddLockerPage());
    },
    AddLockerFormRoute.name: (routeData) {
      final args = routeData.argsAs<AddLockerFormRouteArgs>();
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.AddLockerFormPage(id: args.id));
    },
    PermissionManagementMainRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i11.PermissionManagementMainPage());
    },
    ManageLockerAndEquipmentMainRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i12.ManageLockerAndEquipmentMainPage());
    },
    StreamingAndRecordMainRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i13.StreamingAndRecordMainPage());
    },
    RepairReportMainRoute.name: (routeData) {
      return _i15.MaterialPageX<dynamic>(
          routeData: routeData, child: _i14.RepairReportMainPage());
    }
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(SplashRoute.name, path: '/'),
        _i15.RouteConfig(SignInRoute.name, path: 'sign_in_page'),
        _i15.RouteConfig(HomeRoute.name, path: '/', children: [
          _i15.RouteConfig('#redirect',
              path: '',
              parent: HomeRoute.name,
              redirectTo: 'permission_management_main',
              fullMatch: true),
          _i15.RouteConfig(PermissionManagementMainRoute.name,
              path: 'permission_management_main', parent: HomeRoute.name),
          _i15.RouteConfig(ManageLockerAndEquipmentMainRoute.name,
              path: 'locker_and_equipment_main', parent: HomeRoute.name),
          _i15.RouteConfig(StreamingAndRecordMainRoute.name,
              path: 'streaming_and_record_main', parent: HomeRoute.name),
          _i15.RouteConfig(RepairReportMainRoute.name,
              path: 'repair_report_main', parent: HomeRoute.name)
        ]),
        _i15.RouteConfig(PermissionManagementAccountRoute.name,
            path: 'permission_management_account'),
        _i15.RouteConfig(PermissionManagementApproveRoute.name,
            path: 'permission_management_approve'),
        _i15.RouteConfig(PermissionManagementBlockRoute.name,
            path: 'permission_management_block'),
        _i15.RouteConfig(PermissionManagementDepartmentRoute.name,
            path: 'permission_management_department'),
        _i15.RouteConfig(AddUserMainRoute.name, path: 'add_user_main'),
        _i15.RouteConfig(AddLockerRoute.name, path: 'add_locker'),
        _i15.RouteConfig(AddLockerFormRoute.name, path: 'add_locker_form')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i15.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i15.PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: 'sign_in_page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i15.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({int? currentTab, List<_i15.PageRouteInfo>? children})
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
/// [_i4.PermissionManagementAccountPage]
class PermissionManagementAccountRoute extends _i15.PageRouteInfo<void> {
  const PermissionManagementAccountRoute()
      : super(PermissionManagementAccountRoute.name,
            path: 'permission_management_account');

  static const String name = 'PermissionManagementAccountRoute';
}

/// generated route for
/// [_i5.PermissionManagementApprovePage]
class PermissionManagementApproveRoute extends _i15.PageRouteInfo<void> {
  const PermissionManagementApproveRoute()
      : super(PermissionManagementApproveRoute.name,
            path: 'permission_management_approve');

  static const String name = 'PermissionManagementApproveRoute';
}

/// generated route for
/// [_i6.PermissionManagementBlockPage]
class PermissionManagementBlockRoute extends _i15.PageRouteInfo<void> {
  const PermissionManagementBlockRoute()
      : super(PermissionManagementBlockRoute.name,
            path: 'permission_management_block');

  static const String name = 'PermissionManagementBlockRoute';
}

/// generated route for
/// [_i7.PermissionManagementDepartmentPage]
class PermissionManagementDepartmentRoute extends _i15.PageRouteInfo<void> {
  const PermissionManagementDepartmentRoute()
      : super(PermissionManagementDepartmentRoute.name,
            path: 'permission_management_department');

  static const String name = 'PermissionManagementDepartmentRoute';
}

/// generated route for
/// [_i8.AddUserMainPage]
class AddUserMainRoute extends _i15.PageRouteInfo<void> {
  const AddUserMainRoute()
      : super(AddUserMainRoute.name, path: 'add_user_main');

  static const String name = 'AddUserMainRoute';
}

/// generated route for
/// [_i9.AddLockerPage]
class AddLockerRoute extends _i15.PageRouteInfo<void> {
  const AddLockerRoute() : super(AddLockerRoute.name, path: 'add_locker');

  static const String name = 'AddLockerRoute';
}

/// generated route for
/// [_i10.AddLockerFormPage]
class AddLockerFormRoute extends _i15.PageRouteInfo<AddLockerFormRouteArgs> {
  AddLockerFormRoute({required int id})
      : super(AddLockerFormRoute.name,
            path: 'add_locker_form', args: AddLockerFormRouteArgs(id: id));

  static const String name = 'AddLockerFormRoute';
}

class AddLockerFormRouteArgs {
  const AddLockerFormRouteArgs({required this.id});

  final int id;

  @override
  String toString() {
    return 'AddLockerFormRouteArgs{id: $id}';
  }
}

/// generated route for
/// [_i11.PermissionManagementMainPage]
class PermissionManagementMainRoute extends _i15.PageRouteInfo<void> {
  const PermissionManagementMainRoute()
      : super(PermissionManagementMainRoute.name,
            path: 'permission_management_main');

  static const String name = 'PermissionManagementMainRoute';
}

/// generated route for
/// [_i12.ManageLockerAndEquipmentMainPage]
class ManageLockerAndEquipmentMainRoute extends _i15.PageRouteInfo<void> {
  const ManageLockerAndEquipmentMainRoute()
      : super(ManageLockerAndEquipmentMainRoute.name,
            path: 'locker_and_equipment_main');

  static const String name = 'ManageLockerAndEquipmentMainRoute';
}

/// generated route for
/// [_i13.StreamingAndRecordMainPage]
class StreamingAndRecordMainRoute extends _i15.PageRouteInfo<void> {
  const StreamingAndRecordMainRoute()
      : super(StreamingAndRecordMainRoute.name,
            path: 'streaming_and_record_main');

  static const String name = 'StreamingAndRecordMainRoute';
}

/// generated route for
/// [_i14.RepairReportMainPage]
class RepairReportMainRoute extends _i15.PageRouteInfo<void> {
  const RepairReportMainRoute()
      : super(RepairReportMainRoute.name, path: 'repair_report_main');

  static const String name = 'RepairReportMainRoute';
}
