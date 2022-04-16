// import 'package:auto_route/auto_route.dart';
// import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend_web_app/core/presentation/widgets/account_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/dropdown_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';
import 'package:frontend_web_app/features/permission_management/presentation/pages/permission_management_approve.dart';

class PermissionManagementMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final currentTab = useState(0);
    final roleDropdown = useState<String>('ทุกตำแหน่ง');
    final departmentDropdown = useState<String>('ทุกแผนก');
    print(MediaQuery.of(context).size.width);

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
                // padding: EdgeInsets.symmetric(horizontal: 38.4),
                decoration: BoxDecoration(
                  // color: Colors.amber,
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 72 * 0.8,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1,
                                        color: Colors.grey.shade300))),
                            child: TabBar(
                                onTap: (index) {
                                  currentTab.value = index;
                                },
                                padding: EdgeInsets.symmetric(horizontal: 20),
                                unselectedLabelStyle: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle1,
                                unselectedLabelColor: Colors.grey,
                                labelStyle: Theme.of(context)
                                    .primaryTextTheme
                                    .subtitle1,
                                labelColor:
                                    Theme.of(context).colorScheme.primary,
                                labelPadding: EdgeInsets.symmetric(
                                  vertical: 0,
                                  horizontal: 20,
                                ),
                                indicatorColor:
                                    Theme.of(context).colorScheme.primary,
                                indicatorPadding:
                                    EdgeInsets.symmetric(horizontal: 16),
                                isScrollable: true,
                                tabs: const [
                                  Tab(text: 'สมาชิกทั้งหมด'),
                                  Tab(text: 'อนุมัติผู้ใช้งาน'),
                                  Tab(text: 'การบล็อกผู้ใช้งาน'),
                                  Tab(text: 'จัดการแผนก'),
                                ]),
                          ),
                        ),
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
                                        child: Container(
                                          // width: 192 * 0.8,
                                          height: 48 * 0.8,
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Theme.of(context)
                                                  .colorScheme
                                                  .primaryContainer,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(8)),
                                              ),
                                            ),
                                            onPressed: (() {}),
                                            child: Text(
                                              '+ เพิ่มผู้ใช้งาน',
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .button,
                                            ),
                                          ),
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

                                        // Material(
                                        //   shape: const CircleBorder(),
                                        //   // color: Colors.amber,
                                        //   child: IconButton(
                                        //     // padding: EdgeInsets.only(
                                        //     //     left: 16, right: 16),
                                        //     icon: Icon(Icons.play_arrow,
                                        //         color: Colors.red, size: 20),
                                        //     // splashColor: Colors.red,
                                        //     onPressed: () {},
                                        //   ),
                                        // ),
                                        // Expanded(
                                        //   child: TableCellWidget.iconButtonCell(
                                        //     // padding: EdgeInsets.fromLTRB(
                                        //     //     38.4, 0.0, 20, 0.0),
                                        //     iconScr: Icon(
                                        //       Icons.edit_outlined,
                                        //     ),
                                        //     onPressed: () {},
                                        //   ),
                                        // ),
                                        // Expanded(
                                        //   child: TableCellWidget.iconButtonCell(
                                        //     iconScr: Icon(
                                        //       Icons.more_horiz,
                                        //     ),
                                        //     onPressed: () {},
                                        //   ),
                                        // ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          PermissionManagementApprovePage(),
                          // Text('data2'),
                          Text('data3'),
                          Text('data4'),
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
