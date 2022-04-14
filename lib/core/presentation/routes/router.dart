import 'package:auto_route/auto_route.dart';
import 'package:frontend_web_app/core/presentation/pages/home.dart';
import 'package:frontend_web_app/features/locker_and_equipment/presentation/pages/locker_and_equipment_main.dart';
import 'package:frontend_web_app/features/permission_management/presentation/pages/permission_management_main.dart';
import 'package:frontend_web_app/features/streaming_and_record/pages/streaming_and_record_main.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: HomePage,
      children: [
        AutoRoute(
          path: 'permission_management_main',
          page: PermissionManagementMainPage,
          initial: true,
        ),
        AutoRoute(
          path: 'locker_and_equipment_main',
          page: LockerAndEquipmentMainPage,
        ),
        AutoRoute(
          path: 'streaming_and_record_main',
          page: StreamingAndRecordMainPage,
        )
      ],
    ),
  ],
)
class $AppRouter {}
