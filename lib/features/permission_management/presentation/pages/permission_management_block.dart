import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';
import 'package:frontend_web_app/features/authentication/domain/entities/user.dart';
import 'package:frontend_web_app/features/permission_management/domain/repositories/user-repository.dart';
import 'package:frontend_web_app/injection.dart';

import '../widgets/account_cell_widget.dart';
import '../../../../core/presentation/widgets/dropdown_box_widget.dart';
import '../../../../core/presentation/widgets/search_box_widget.dart';
import '../../../../core/presentation/widgets/table_header_widget.dart';

import 'package:frontend_web_app/core/utils/environment.dart' as environment;

class PermissionManagementBlockPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final blockedUsers = useState(<UserType>[]);
    final ValueNotifier<RestFailure?> restFailure = useState(null);
    final isLoading = useState(false);
    final size = MediaQuery.of(context).size;
    useEffect(
      () {
        Future<void>.microtask(() async {
          try {
            isLoading.value = true;
            final result = await getIt<UserRepository>().getBlockUser();
            isLoading.value = false;
            print('result users : $result');
            result.fold(
              (l) => restFailure.value = l,
              (r) => blockedUsers.value = r,
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
    final uri = Uri(
      scheme: environment.baseSchema,
      host: environment.baseApiUrl,
      port: environment.baseApiPort,
    );

    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      // color: Colors.red,
      padding: EdgeInsets.fromLTRB(38.4, 24, 38.4, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' บัญชีที่ถูกบล็อก ${blockedUsers.value.length} บัญชี',
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
                        elevation: 0,
                        primary: Theme.of(context).colorScheme.secondary,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      onPressed: (() {}),
                      child: Text(
                        'บล็อกผู้ใช้งาน',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .button!
                            .copyWith(
                                color: Theme.of(context).colorScheme.primary),
                      ),
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
                        ...(blockedUsers.value.map((e) {
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
                                          imgSrc: e.profilePicUrl == null ||
                                                  e.profilePicUrl == ''
                                              ? ''
                                              : uri.toString() +
                                                  '/' +
                                                  e.profilePicUrl!),
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
                                Padding(
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
                                          onPressed: () async {
                                            await showMenu(
                                                context: context,
                                                position: RelativeRect.fromLTRB(
                                                    100, 0, 200, 0),
                                                items: [
                                                  PopupMenuItem(
                                                      child: Text('data')),
                                                  PopupMenuItem(
                                                      child: Text('data')),
                                                ]);
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                    ],
                                  ),
                                ),
                              ]);
                        }))
                      ],
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
