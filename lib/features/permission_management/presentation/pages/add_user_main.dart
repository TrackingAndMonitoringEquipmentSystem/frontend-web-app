import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/core/presentation/pages/home.dart';
import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';
import 'package:frontend_web_app/core/presentation/widgets/app_bar_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_button_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_tab_bar_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';
import 'package:frontend_web_app/core/utils/enum.dart';
import 'package:frontend_web_app/core/utils/helper.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/user.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/department-repository.dart';
import 'package:frontend_web_app/features/permission_management/domain/repositories/user-repository.dart';
import 'package:frontend_web_app/features/permission_management/presentation/pages/add_user_by_csv.dart';
import 'package:frontend_web_app/injection.dart';

class AddUserMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final firstName = useState<String>('');
    final lastName = useState<String>('');
    final email = useState<String>('');
    final tel = useState<String>('');
    final departments = useState(<Department>[]);

    final departmentSelected = useState<String?>(null);
    final roleSelected = useState<String?>(null);

    final ValueNotifier<RestFailure?> restFailure = useState(null);
    useEffect(
      () {
        Future<void>.microtask(() async {
          try {
            final departmentResult =
                await getIt<DepartmentRepository>().getAll();

            departmentResult.fold(
              (l) => restFailure.value = l,
              (r) => departments.value = r,
            );
          } catch (error) {
            print('error departmentResult : $error');
          }
        });
        return null;
      },
      [],
    );

    final columnWidths = <int, TableColumnWidth>{
      0: FlexColumnWidth(3),
      1: FlexColumnWidth(8),
      2: FlexColumnWidth(10),
      3: FlexColumnWidth(11),
      4: FlexColumnWidth(9),
      5: FlexColumnWidth(9),
      6: FlexColumnWidth(10),
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
                AutoRouter.of(context).navigate(HomeRoute(
                    currentTab: 0,
                    children: [PermissionManagementMainRoute()]));
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
              PrimaryTabBarWidget(onTap: (index) {}, tabs: [
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
                            'ชื่อจริง',
                            'นามสกุล',
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
                                              hintText: 'กรอกชื่อจริง',
                                              onChanged: (value) {
                                                firstName.value = value;
                                              }),
                                          TableCellWidget.textFieldCell(
                                              context: context,
                                              hintText: 'กรอกนามสกุล',
                                              onChanged: (value) {
                                                lastName.value = value;
                                              }),
                                          TableCellWidget.textFieldCell(
                                              context: context,
                                              hintText: 'กรอกอีเมล',
                                              onChanged: (value) {
                                                email.value = value;
                                              }),
                                          TableCellWidget.dropdownCell(
                                              context: context,
                                              hint: 'เลือกตำแหน่ง',
                                              value: roleSelected.value,
                                              items: [
                                                '1:Super admin',
                                                '2:Admin',
                                                '3:Master maintainer',
                                                '4:Maintainer',
                                                '5:User'
                                              ],
                                              onChanged: (newValue) {
                                                roleSelected.value = newValue;
                                              }),
                                          TableCellWidget.dropdownCell(
                                              context: context,
                                              hint: 'เลือกแผนก',
                                              value: departmentSelected.value,
                                              items: [
                                                ...departments.value.map((e) =>
                                                    e.id.toString() +
                                                    ':' +
                                                    e.name)
                                              ],
                                              onChanged: (newValue) {
                                                departmentSelected.value =
                                                    newValue;
                                              }),
                                          TableCellWidget.textFieldCell(
                                            context: context,
                                            hintText: 'เบอร์โทรศัพท์',
                                            margin: EdgeInsets.fromLTRB(
                                                19.2, 10, 38.4, 10),
                                            onChanged: (value) {
                                              tel.value = value;
                                            },
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
                                    onPressed: (() {
                                      AutoRouter.of(context).navigate(HomeRoute(
                                          currentTab: 0,
                                          children: [
                                            PermissionManagementMainRoute()
                                          ]));
                                    }),
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
                                    onPressed: () async {
                                      try {
                                        final result =
                                            await getIt<UserRepository>()
                                                .addUser(
                                          email: email.value,
                                          roleId: int.parse(roleSelected.value!
                                              .split(':')[0]),
                                          department: departments.value
                                              .firstWhere((element) =>
                                                  element.id ==
                                                  int.parse(departmentSelected
                                                      .value!
                                                      .split(':')[0])),
                                          firstName: firstName.value,
                                          lastName: lastName.value,
                                          tel: tel.value,
                                        );

                                        result.fold(
                                            (l) => restFailure.value = l,
                                            (r) => AutoRouter.of(context).push(
                                                    HomeRoute(children: [
                                                  PermissionManagementAccountRoute()
                                                ], currentTab: 0)));
                                      } catch (error) {
                                        print('error add user on web : $error');
                                      }
                                    },
                                    text: 'ยืนยันการเพิ่ม'),
                              )
                            ],
                          ),
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
