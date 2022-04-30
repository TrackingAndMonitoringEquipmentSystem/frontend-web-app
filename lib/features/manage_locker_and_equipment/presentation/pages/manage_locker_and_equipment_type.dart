import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/features/permission_management/presentation/widgets/alert_dialog_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/data_table_text_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_button_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';

import '../../../../core/presentation/widgets/search_box_widget.dart';

class ManageLockerAndEquipmentTypePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final columnWidths = <int, TableColumnWidth>{
      0: FlexColumnWidth(22),
      1: FlexColumnWidth(7),
      2: FlexColumnWidth(7),
      3: FlexColumnWidth(9),
      4: FlexColumnWidth(9),
      5: FlexColumnWidth(6),
    };

    return Container(
      // color: Colors.red,
      padding: EdgeInsets.fromLTRB(38.4, 24, 38.4, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 18,
                child: SearchBoxWidget(hintText: 'ชื่อหมวดหมู่'),
              ),
              Expanded(flex: 34, child: SizedBox()),
              Expanded(
                  flex: 8,
                  child: PrimaryButtonWidget(
                    text: '+ เพิ่มหมวดหมู่',
                    height: 48 * 0.8,
                    onPressed: () {},
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TableHeaderWidget(
            columnWidths: columnWidths,
            columnHeader: [
              'ชื่อหมวดหมู่',
              'จำนวนอุปกรณ์',
              'แก้ไขล่าสุด',
              'แก้ไขโดย',
              'สร้างโดย',
              ''
            ],
          ),
          DataTableTextWidget(columnWidths: columnWidths, columnData: [
            [
              TableCellWidget.textTableCell(
                  text: 'อุปกรณ์สำนักงาน', context: context),
              TableCellWidget.textTableCell(text: '23', context: context),
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
            ]
          ], onPressed: [
            () {}
          ]),
        ],
      ),
    );
  }
}
