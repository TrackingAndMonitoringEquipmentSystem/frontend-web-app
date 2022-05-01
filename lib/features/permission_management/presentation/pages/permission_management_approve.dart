import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/core/presentation/widgets/dropdown_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/user.dart';
import 'package:frontend_web_app/features/permission_management/domain/repositories/user-repository.dart';
import 'package:frontend_web_app/injection.dart';

import '../widgets/account_cell_widget.dart';
// import 'package:frontend_web_app/features/permission_management/presentation/pages/permission_management_approve.dart';

class PermissionManagementApprovePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final waitingdUsers = useState(<UserType>[]);
    final ValueNotifier<RestFailure?> restFailure = useState(null);
    final isLoading = useState(false);
    final size = MediaQuery.of(context).size;
    useEffect(
      () {
        Future<void>.microtask(() async {
          try {
            isLoading.value = true;
            final result = await getIt<UserRepository>().getWaitingUser();
            isLoading.value = false;
            print('result users : $result');
            result.fold(
              (l) => restFailure.value = l,
              (r) => waitingdUsers.value = r,
            );
          } catch (error) {
            print('error users: $error');
          }
        });
        return null;
      },
      [],
    );
    final roleDropdown = useState<String>('ทุกตำแหน่ง');
    final departmentDropdown = useState<String>('ทุกแผนก');
    final columnWidths = <int, TableColumnWidth>{
      0: FlexColumnWidth(44),
      1: FlexColumnWidth(37),
      2: FlexColumnWidth(24),
      3: FlexColumnWidth(22),
      4: FlexColumnWidth(20),
      5: FlexColumnWidth(33),
    };

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      // color: Colors.red,
      padding: EdgeInsets.fromLTRB(38.4, 24, 38.4, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' อนุมัติผู้ใช้งาน ${waitingdUsers.value.length} บัญชี',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Expanded(
                flex: 18,
                child: SearchBoxWidget(
                    hintText: 'ชื่อ - นามสกุล, อีเมล, เบอร์โทรศัพท์'),
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
                        textStyle: Theme.of(context).primaryTextTheme.button,
                        primary: Theme.of(context).colorScheme.primaryContainer,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      onPressed: (() {}),
                      child: Text('+ เพิ่มผู้ใช้งาน'),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TableHeaderWidget(
            columnWidths: columnWidths,
            columnHeader: [
              'ชื่อ - นามสกุล',
              'อีเมล',
              'ตำแหน่ง',
              'แผนก',
              'เบอร์โทรศัพท์',
              ' ',
            ],
          ),
          if (isLoading.value)
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: SpinKitThreeBounce(
                  color: Theme.of(context).colorScheme.primary,
                  size: 16,
                ),
              ),
            )
          else
            SingleChildScrollView(
              child: Container(
                height: size.height * (367 / size.height),
                child: ListView(
                  children: [
                    Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      columnWidths: columnWidths,
                      children: [
                        ...(waitingdUsers.value.map((e) {
                          print('check : ${e.tel == null}, ${e.tel}');
                          return TableRow(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade300))),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 38.4, vertical: 16),
                                  child: Row(
                                    children: [
                                      TableCellWidget.circleAvatarCell(
                                          imgSrc:
                                              'assets/icons/core/png/logo_icon_medium.png'),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Text(
                                          e.firstName == null ||
                                                  e.firstName == ''
                                              ? 'ไม่มีข้อมูล'
                                              : e.firstName + ' ' + e.lastName,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                TableCellWidget.textTableCell(
                                    text: e.email, context: context),
                                TableCellWidget.textTableCell(
                                    text: e.role!.name, context: context),
                                TableCellWidget.textTableCell(
                                    text: e.department!.name, context: context),
                                TableCellWidget.textTableCell(
                                    text: e.tel == null || e.tel == ''
                                        ? 'ไม่มีข้อมูล'
                                        : e.tel!,
                                    context: context),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 60,
                                      child: Container(
                                        // color: Colors.amber,
                                        margin: EdgeInsets.only(left: 24),
                                        height: 40 * 0.8,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            primary: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                            ),
                                          ),
                                          onPressed: (() {}),
                                          child: Text(
                                            'อนุมัติ',
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .button!
                                                .copyWith(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .primary),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 56,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 16, right: 20),
                                        height: 40 * 0.8,
                                        child: OutlinedButton(
                                          style: OutlinedButton.styleFrom(
                                            elevation: 0,
                                            primary: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                            ),
                                          ),
                                          onPressed: (() {}),
                                          child: Text(
                                            'ลบ',
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
                                  ],
                                ),
                              ]);
                        }))
                      ],
                    ),
                  ],
                ),
              ),
            )
          // AccoutCellWidget(
          //   imgSrc: 'assets/images/core/profile_image_small.jpg',
          //   name: 'Saitan Kittibullungkul',
          //   email: '61011104@kmitl.ac.th',
          //   role: 'Super admin',
          //   department: 'Hardware Lab',
          //   phone: '096-904-3542',
          // action: Row(
          //   children: [
          //     Expanded(
          //       flex: 60,
          //       child: Container(
          //         // color: Colors.amber,
          //         margin: EdgeInsets.only(left: 24),
          //         height: 40 * 0.8,
          //         child: ElevatedButton(
          //           style: ElevatedButton.styleFrom(
          //             elevation: 0,
          //             primary: Theme.of(context).colorScheme.secondary,
          //             shape: const RoundedRectangleBorder(
          //               borderRadius: BorderRadius.all(Radius.circular(8)),
          //             ),
          //           ),
          //           onPressed: (() {}),
          //           child: Text(
          //             'อนุมัติ',
          //             style: Theme.of(context)
          //                 .primaryTextTheme
          //                 .button!
          //                 .copyWith(
          //                     color: Theme.of(context).colorScheme.primary),
          //           ),
          //         ),
          //       ),
          //     ),
          //     Expanded(
          //       flex: 56,
          //       child: Container(
          //         margin: EdgeInsets.only(left: 16, right: 20),
          //         height: 40 * 0.8,
          //         child: OutlinedButton(
          //           style: OutlinedButton.styleFrom(
          //             elevation: 0,
          //             primary: Theme.of(context).colorScheme.primary,
          //             shape: const RoundedRectangleBorder(
          //               borderRadius: BorderRadius.all(Radius.circular(8)),
          //             ),
          //           ),
          //           onPressed: (() {}),
          //           child: Text(
          //             'ลบ',
          //             style: Theme.of(context)
          //                 .primaryTextTheme
          //                 .button!
          //                 .copyWith(
          //                     color: Theme.of(context)
          //                         .colorScheme
          //                         .primaryContainer),
          //           ),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // )
        ],
      ),
    );
  }
}
