import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_tab_bar_widget.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment_equipment.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment_location.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment_locker.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment_type.dart';

class ManageLockerAndEquipmentMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(children: [
          Container(
            // color: Colors.blue,
            height: 72,
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(38.4, 20, 20, 0.0),
                    padding: EdgeInsets.all(8 * 0.8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      FluentIcons.xbox_console_24_regular,
                      color: Colors.white,
                      size: 20,
                    )),
                Text(
                  'ตู้และอุปกรณ์',
                  style: Theme.of(context).primaryTextTheme.headline1!.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                )
              ],
            ),
          ),
          Expanded(
            //body
            child: Container(
              margin: EdgeInsets.fromLTRB(38.4, 0.0, 38.4, 0.0),
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
                        Tab(text: 'อุปกรณ์ทั้งหมด'),
                        Tab(text: 'ตู้ล็อคเกอร์'),
                        Tab(text: 'จัดการสถานที่'),
                        Tab(text: 'จัดการหมวดหมู่'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(children: [
                        ManageLockerAndEquipmentEquipmentPage(),
                        ManageLockerAndEquipmentLockerPage(),
                        ManageLockerAndEquipmentLocationPage(),
                        ManageLockerAndEquipmentTypePage(),
                      ]),
                    ),
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
