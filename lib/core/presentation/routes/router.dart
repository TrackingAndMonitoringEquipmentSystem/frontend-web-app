import 'package:auto_route/auto_route.dart';
import 'package:frontend_web_app/core/presentation/pages/home.dart';
import 'package:frontend_web_app/core/presentation/pages/splash.dart';
import 'package:frontend_web_app/features/authentication/presentation/pages/sign_in_page.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/presentation/pages/add_locker.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/presentation/pages/add_locker_form.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment_main.dart';
import 'package:frontend_web_app/features/permission_management/presentation/pages/add_user_main.dart';
import 'package:frontend_web_app/features/permission_management/presentation/pages/permission_management_main.dart';
import 'package:frontend_web_app/features/repair_report/pages/repair_report_main.dart';
import 'package:frontend_web_app/features/streaming_and_record/pages/streaming_and_record_main.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(
      path: 'sign_in_page',
      page: SignInPage,
    ),
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'permission_management_main',
          page: PermissionManagementMainPage,
        ),
        AutoRoute(
          path: 'locker_and_equipment_main',
          page: ManageLockerAndEquipmentMainPage,
        ),
        AutoRoute(
          path: 'streaming_and_record_main',
          page: StreamingAndRecordMainPage,
        ),
        AutoRoute(
          path: 'repair_report_main',
          page: RepairReportMainPage,
        )
      ],
    ),
    AutoRoute(
      path: 'add_user_main',
      page: AddUserMainPage,
    ),
    AutoRoute(
      path: 'add_locker',
      page: AddLockerPage,
    ),
    AutoRoute(
      path: 'add_locker_form',
      page: AddLockerFormPage,
    ),
  ],
)
class $AppRouter {}
