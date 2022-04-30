import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/department.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/department-repository.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/locker-repository.dart';
import 'package:frontend_web_app/features/permission_management/presentation/widgets/alert_dialog_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/data_table_text_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_button_widget.dart';
import 'package:frontend_web_app/injection.dart';
import 'package:intl/intl.dart';

import '../../../../core/presentation/widgets/search_box_widget.dart';
import '../../../../core/presentation/widgets/table_cell_widget.dart';
import '../../../../core/presentation/widgets/table_header_widget.dart';

class PermissionManagementDepartmentPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final departments = useState(<Department>[]);
    final ValueNotifier<RestFailure?> restFailure = useState(null);
    final isLoading = useState(false);

    useEffect(
      () {
        Future<void>.microtask(() async {
          try {
            isLoading.value = true;
            final result = await getIt<DepartmentRepository>().getAll();
            isLoading.value = false;
            print('result: $result');
            result.fold(
              (l) => restFailure.value = l,
              (r) => departments.value = r,
            );
          } catch (error) {
            print('error from department : $error');
          }
        });
        return null;
      },
      [],
    );
    final size = MediaQuery.of(context).size;
    final columnWidths = <int, TableColumnWidth>{
      0: FlexColumnWidth(22),
      1: FlexColumnWidth(7),
      2: FlexColumnWidth(7),
      3: FlexColumnWidth(9),
      4: FlexColumnWidth(9),
      5: FlexColumnWidth(6),
    };
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      // color: Colors.red,
      padding: EdgeInsets.fromLTRB(38.4, 24, 38.4, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 23,
                child: SearchBoxWidget(hintText: 'ชื่อแผนก'),
              ),
              Expanded(flex: 29, child: SizedBox()),
              Expanded(
                  flex: 8,
                  child: Container(
                    height: 48 * 0.8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        textStyle: Theme.of(context).primaryTextTheme.button,
                        primary: Theme.of(context).colorScheme.primaryContainer,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                      ),
                      onPressed: () async {
                        await showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialogWidget(
                                  title: 'เพิ่มแผนก',
                                  hintText: 'กรอกชื่อแผนก',
                                  onPressed: () {});
                            });
                      },
                      child: Text('+ เพิ่มแผนก'),
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
              'ชื่อแผนก',
              ' ',
              'แก้ไขล่าสุด',
              'แก้ไขโดย',
              'สร้างโดย',
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
            DataTableTextWidget(
              columnWidths: columnWidths,
              columnData: [
                ...(departments.value.map((e) {
                  return [
                    TableCellWidget.textTableCell(
                        text: e.name, context: context),
                    TableCellWidget.textTableCell(text: ' ', context: context),
                    TableCellWidget.textTableCell(
                        text: DateFormat('dd/mm/yyyy\nHH:mm:ss')
                            .format(e.updatedAt.toLocal()),
                        context: context,
                        color: Colors.grey.shade400),
                    TableCellWidget.textTableCell(
                        text: e.updatedBy == null
                            ? 'Not have data'
                            : e.updatedBy!.firstName + e.updatedBy!.lastName,
                        context: context,
                        color: Colors.grey.shade400),
                    TableCellWidget.textTableCell(
                      text: e.createdBy == null
                          ? 'Not have data'
                          : DateFormat('dd/mm/yyyy\n')
                                  .format(e.createdAt.toLocal()) +
                              e.createdBy!.firstName +
                              e.createdBy!.lastName,
                      context: context,
                      color: Colors.grey.shade400,
                      padding: EdgeInsets.fromLTRB(38.4, 12, 0, 12),
                    ),
                  ];
                }))
              ],
              onPressed: [
                ...(departments.value.map((e) {
                  return () {};
                }))
              ],
            )
        ],
      ),
    );
  }
}
