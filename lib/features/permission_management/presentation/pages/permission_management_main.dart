import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';
import 'package:frontend_web_app/features/permission_management/presentation/widgets/account_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/dropdown_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_Button_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_tab_bar_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';
import 'package:frontend_web_app/features/permission_management/presentation/pages/permission_management_approve.dart';
import 'package:frontend_web_app/features/permission_management/presentation/pages/permission_management_block.dart';
import 'package:frontend_web_app/features/permission_management/presentation/pages/permission_management_department.dart';

class PermissionManagementMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final currentTab = useState(0);
    final roleDropdown = useState<String>('ทุกตำแหน่ง');
    final departmentDropdown = useState<String>('ทุกแผนก');

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // DefaultTabController.of(context).index การเข้าถึง ลำดับ Tab
        body: Column(
          children: [
            Container(
              // color: Colors.blue,
              height: 72,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(38.4, 20, 20, 20),
                    padding: EdgeInsets.all(8 * 0.8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/core/svg/people_icon_small.svg',
                      color: Colors.white,
                      height: 20,
                    ),
                  ),
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
                margin: EdgeInsets.fromLTRB(38.4, 0.0, 38.4, 38.4),
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrimaryTabBarWidget(
                      onTap: (index) {
                        currentTab.value = index;
                      },
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
                          Container(
                            // color: Colors.red,
                            padding: EdgeInsets.symmetric(
                                horizontal: 38.4, vertical: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'สมาชิกทั้งหมด 36 คน',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline1,
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 18,
                                      child: SearchBoxWidget(
                                          hintText:
                                              'ชื่อ - นามสกุล, อีเมล, เบอร์โทรศัพท์'),
                                    ),
                                    Expanded(
                                      flex: 11,
                                      child: DropdownBoxWidget(
                                        value: roleDropdown.value,
                                        items: <String>[
                                          'ทุกตำแหน่ง',
                                          'Super admin',
                                          'Admin',
                                          'Master maintainer',
                                          'Maintainer'
                                        ],
                                        onChanged: (newValue) {
                                          if (newValue != null) {
                                            roleDropdown.value = newValue;
                                          }
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      flex: 11,
                                      child: DropdownBoxWidget(
                                        value: departmentDropdown.value,
                                        items: <String>[
                                          'ทุกแผนก',
                                          'ESL Lab',
                                          'Hardware Lab',
                                          'HCL Lab',
                                          'ISAC Lab',
                                          'Network Lab'
                                        ],
                                        onChanged: (String? newValue) {
                                          if (newValue != null) {
                                            departmentDropdown.value = newValue;
                                          }
                                        },
                                      ),
                                    ),
                                    Expanded(flex: 12, child: SizedBox()),
                                    Expanded(
                                        flex: 8,
                                        child: PrimaryButtonWidget(
                                          onPressed: () {
                                            print('object');
                                            AutoRouter.of(context).replaceAll(
                                                [AddUserMainRoute()]);
                                          },
                                          text: '+ เพิ่มผู้ใช้งาน',
                                          height: 48 * 0.8,
                                        ))
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TableHeaderWidget(
                                  columnWidths: <int, TableColumnWidth>{
                                    0: FlexColumnWidth(44),
                                    1: FlexColumnWidth(37),
                                    2: FlexColumnWidth(24),
                                    3: FlexColumnWidth(22),
                                    4: FlexColumnWidth(20),
                                    5: FlexColumnWidth(33),
                                  },
                                  columnHeader: [
                                    'ชื่อ - นามสกุล',
                                    'อีเมล',
                                    'ตำแหน่ง',
                                    'แผนก',
                                    'เบอร์โทรศัพท์',
                                    ' ',
                                  ],
                                ),
                                AccoutCellWidget(
                                  imgSrc:
                                      'assets/images/core/profile_image_small.jpg',
                                  name: 'Saitan Kittibullungkul',
                                  email: '61011104@kmitl.ac.th',
                                  role: 'Super admin',
                                  department: 'Hardware Lab',
                                  phone: '096-904-3542',
                                  action: Padding(
                                    padding: const EdgeInsets.only(left: 38.4),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: TableCellWidget.iconButtonCell(
                                            context: context,
                                            iconScr: Icons.edit_outlined,
                                            onPressed: () {},
                                          ),
                                        ),
                                        Expanded(
                                          child: TableCellWidget.iconButtonCell(
                                            context: context,
                                            iconScr: Icons.more_horiz,
                                            onPressed: () {},
                                          ),
                                        ),
                                        SizedBox(
                                          width: 60,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
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
          ],
        ),
      ),
    );
  }
}
