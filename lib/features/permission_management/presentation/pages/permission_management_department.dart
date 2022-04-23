import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/presentation/widgets/data_table_text_widget.dart';

import '../../../../core/presentation/widgets/search_box_widget.dart';
import '../../../../core/presentation/widgets/table_cell_widget.dart';
import '../../../../core/presentation/widgets/table_header_widget.dart';

class PermissionManagementDepartmentPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      //body
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        // color: Colors.red,
        padding: EdgeInsets.symmetric(horizontal: 38.4, vertical: 24),
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
                          primary:
                              Theme.of(context).colorScheme.primaryContainer,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                        onPressed: (() {}),
                        child: Text('+ เพิ่มแผนก'),
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TableHeaderWidget(
              columnWidths: <int, TableColumnWidth>{
                0: FlexColumnWidth(22),
                1: FlexColumnWidth(7),
                2: FlexColumnWidth(7),
                3: FlexColumnWidth(9),
                4: FlexColumnWidth(9),
                5: FlexColumnWidth(6),
              },
              columnHeader: [
                'ชื่อแผนก',
                'สมาชิก',
                'แก้ไขล่าสุด',
                'แก้ไขโดย',
                'สร้างโดย',
                ' ',
              ],
            ),
            DataTableTextWidget(
              columnWidths: <int, TableColumnWidth>{
                0: FlexColumnWidth(22),
                1: FlexColumnWidth(7),
                2: FlexColumnWidth(7),
                3: FlexColumnWidth(9),
                4: FlexColumnWidth(9),
                5: FlexColumnWidth(6),
              },
              columnData: [
                TableCellWidget.textTableCell(text: 'ESL', context: context),
                TableCellWidget.textTableCell(text: '8', context: context),
                TableCellWidget.textTableCell(
                    text: '20 ม.ค. 2022',
                    context: context,
                    color: Colors.grey.shade400),
                TableCellWidget.textTableCell(
                    text: 'Saitan Kittibullungkul',
                    context: context,
                    color: Colors.grey.shade400),
                TableCellWidget.textTableCell(
                  text: '1 ม.ค. 2022\nSaitan Kittibullungkul',
                  context: context,
                  color: Colors.grey.shade400,
                  padding: EdgeInsets.fromLTRB(38.4, 12, 0, 12),
                ),
              ],
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
