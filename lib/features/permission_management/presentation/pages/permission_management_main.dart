import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/features/permission_management/presentation/pages/permission_management_account.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_tab_bar_widget.dart';
import 'package:frontend_web_app/features/permission_management/presentation/pages/permission_management_approve.dart';
import 'package:frontend_web_app/features/permission_management/presentation/pages/permission_management_block.dart';
import 'package:frontend_web_app/features/permission_management/presentation/pages/permission_management_department.dart';

class PermissionManagementMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // DefaultTabController.of(context).index การเข้าถึง ลำดับ Tab
        body: Container(
          margin: EdgeInsets.fromLTRB(38.4, 24, 38.4, 0.0),
          // height: 2000,
          // color: Colors.blue,
          child: Column(children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              // height: 72,
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.all(8 * 0.8),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        FluentIcons.people_community_24_regular,
                        color: Colors.white,
                        size: 20,
                      )),
                  Text(
                    'การจัดการสิทธิ์',
                    style:
                        Theme.of(context).primaryTextTheme.headline1!.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                  )
                ],
              ),
            ),
            Expanded(
              //body
              child: Container(
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryTabBarWidget(
                      onTap: (index) {},
                      tabs: const [
                        Tab(text: 'สมาชิกทั้งหมด'),
                        Tab(text: 'อนุมัติผู้ใช้งาน'),
                        Tab(text: 'การบล็อกผู้ใช้งาน'),
                        Tab(text: 'จัดการแผนก'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          PermissionManagementAccountPage(),
                          PermissionManagementApprovePage(),
                          PermissionManagementBlockPage(),
                          PermissionManagementDepartmentPage(),

                          // Text('data2'),
                          // Text('data3'),
                          // Text('data4'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
