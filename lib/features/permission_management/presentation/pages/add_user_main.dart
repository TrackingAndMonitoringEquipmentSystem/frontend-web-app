import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';
import 'package:frontend_web_app/core/presentation/widgets/app_bar_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_Button_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_tab_bar_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';
import 'package:frontend_web_app/features/permission_management/presentation/pages/add_user_by_csv.dart';

class AddUserMainPage extends HookWidget {
  // final index = useState<int>(1);
  @override
  Widget build(BuildContext context) {
    final currentTab = useState(0);
    final roleDropdown = useState<String?>(null);
    final departmentDropdown = useState<String?>(null);
    final columnWidths = <int, TableColumnWidth>{
      0: FlexColumnWidth(3),
      1: FlexColumnWidth(13),
      2: FlexColumnWidth(13),
      3: FlexColumnWidth(10),
      4: FlexColumnWidth(10),
      5: FlexColumnWidth(11),
    };
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBarWidget(
            name: 'Saitan Kittibullungkul',
            role: 'Super admin',
            department: 'Hardware Lab',
            imgSrc: 'assets/images/core/profile_image_small.jpg',
            currentPath: 'เพิ่มผู้ใช้งาน',
            path: [
              'การจัดการสิทธิ์'
            ],
            onPressed: [
              () {
                AutoRouter.of(context).replaceAll([HomeRoute()]);
              },
            ]),
        //
        body: Container(
          margin: EdgeInsets.fromLTRB(153.6, 24, 153.6, 0.0),
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
                  tabs: [
                    Tab(text: 'เพิ่มผู้ใช้งานใหม่'),
                    Tab(text: 'เพิ่มผู้ใช้งานแบบชุด'),
                  ]),
              Expanded(
                  child: TabBarView(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.surface,
                    padding: EdgeInsets.symmetric(horizontal: 38.4),
                    child: Column(
                      children: [
                        SizedBox(height: 24),
                        Row(
                          children: [
                            Icon(
                              Icons.info_outlined,
                              color: Colors.blueAccent,
                            ),
                            SizedBox(width: 12),
                            Text(
                              '* หมายถึงข้อมูลสำคัญ ',
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .caption!
                                  .copyWith(color: Colors.blueAccent),
                            ),
                            Text(
                              'ผู้ใช้งานใหม่ของคุณจะได้รับสิทธิ์การเข้าถึงข้อมูลตามตำแหน่งและแผนกที่ระบุ',
                              style: Theme.of(context).primaryTextTheme.caption,
                            )
                          ],
                        ),
                        SizedBox(height: 24),
                        TableHeaderWidget(
                          columnWidths: columnWidths,
                          columnHeader: [
                            'ลำดับ',
                            'ชื่อ - นามสกุล',
                            'อีเมล',
                            'ตำแหน่ง',
                            'แผนก',
                            'เบอร์โทรศัพท์',
                          ],
                          padding: EdgeInsets.fromLTRB(19.2, 10, 0.0, 10),
                        ),
                        SingleChildScrollView(
                          child: Container(
                            // color: Colors.red,
                            height: MediaQuery.of(context).size.height - 328,
                            child: ListView(
                              children: [
                                Table(
                                  defaultVerticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  columnWidths: columnWidths,
                                  children: [
                                    TableRow(
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 1,
                                                    color:
                                                        Colors.grey.shade300))),
                                        children: [
                                          TableCellWidget.textTableCell(
                                            context: context,
                                            text: '1',
                                            padding: EdgeInsets.fromLTRB(
                                                30, 0.0, 0, 0.0),
                                          ),
                                          TableCellWidget.textFieldCell(
                                              context: context,
                                              hintText: 'กรอกชื่อ - นามสกุล'),
                                          TableCellWidget.textFieldCell(
                                              context: context,
                                              hintText: 'กรอกอีเมล'),
                                          TableCellWidget.dropdownCell(
                                              context: context,
                                              hint: 'เลือกตำแหน่ง',
                                              value: roleDropdown.value,
                                              items: <String>[
                                                'Super admin',
                                                'Admin',
                                                'Master maintainer',
                                                'Maintainer'
                                              ],
                                              onChanged: (newValue) {
                                                if (newValue != null) {
                                                  roleDropdown.value = newValue;
                                                }
                                              }),
                                          TableCellWidget.dropdownCell(
                                              context: context,
                                              hint: 'เลือกแผนก',
                                              value: departmentDropdown.value,
                                              items: <String>[
                                                'ESL Lab',
                                                'Hardware Lab',
                                                'HCL Lab',
                                                'ISAC Lab',
                                                'Network Lab'
                                              ],
                                              onChanged: (newValue) {
                                                if (newValue != null) {
                                                  departmentDropdown.value =
                                                      newValue;
                                                }
                                              }),
                                          TableCellWidget.textFieldCell(
                                            context: context,
                                            hintText: 'เบอร์โทรศัพท์',
                                            margin: EdgeInsets.fromLTRB(
                                                19.2, 10, 38.4, 10),
                                          ),
                                        ]),
                                    TableRow(
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    width: 1,
                                                    color:
                                                        Colors.grey.shade300))),
                                        children: [
                                          TableCellWidget.textTableCell(
                                            context: context,
                                            text: '2',
                                            padding: EdgeInsets.fromLTRB(
                                                30, 0.0, 0, 0.0),
                                          ),
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            height: 38.4,
                                            margin: EdgeInsets.fromLTRB(
                                                19.2, 10, 0.0, 10),
                                            child: TextButton(
                                                onPressed: () {},
                                                child:
                                                    Text('+ เพิ่มผู้ใช้งาน')),
                                          ),
                                          Text(' '),
                                          Text(' '),
                                          Text(' '),
                                          Text(' '),
                                        ]),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          // padding: EdgeInsets.symmetric(horizontal: 38.4),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      width: 0.5,
                                      color: Colors.grey.shade400))),

                          // height: 80,
                          // width: 200,

                          child: Row(
                            children: [
                              Expanded(flex: 45, child: SizedBox()),
                              Expanded(
                                flex: 6,
                                child: Container(
                                  margin: EdgeInsets.only(right: 19.2),
                                  height: 48 * 0.8,
                                  child: OutlinedButton(
                                    style: OutlinedButton.styleFrom(
                                      elevation: 0,
                                      primary:
                                          Theme.of(context).colorScheme.primary,
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                      ),
                                    ),
                                    onPressed: (() {}),
                                    child: Text(
                                      'ยกเลิก',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .button!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primaryContainer),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 9,
                                child: PrimaryButtonWidget(
                                    // width: 172.8,
                                    onPressed: () {},
                                    text: 'ยืนยันการเพิ่ม'),
                              )
                            ],
                          ),
                          // child: Text('adata')
                        ))
                      ],
                    ),
                  ),
                  AddUserByCsvPage()
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
