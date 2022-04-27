import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/presentation/widgets/data_table_text_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/dropdown_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_button_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';

class ManageLockerAndEquipmentLocationPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final locationDropdown = useState<String>('ทุกสถานที่ตั้ง');
    final columnWidths = <int, TableColumnWidth>{
      0: FlexColumnWidth(6),
      1: FlexColumnWidth(4),
      2: FlexColumnWidth(9),
      3: FlexColumnWidth(8),
      4: FlexColumnWidth(7),
      5: FlexColumnWidth(10),
      6: FlexColumnWidth(10),
      7: FlexColumnWidth(6),
    };

    return Container(
      // color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 38.4, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                flex: 18,
                child: DropdownBoxWidget(
                  value: locationDropdown.value,
                  items: <String>['ทุกสถานที่ตั้ง', '503, 5, ECC Building'],
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      locationDropdown.value = newValue;
                    }
                  },
                ),
              ),
              Expanded(flex: 34, child: SizedBox()),
              Expanded(
                  flex: 8,
                  child: PrimaryButtonWidget(
                    onPressed: () {},
                    text: '+ เพิ่มสถานที่',
                    height: 48 * 0.8,
                  ))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          TableHeaderWidget(
            columnWidths: columnWidths,
            columnHeader: [
              'ห้อง',
              'ชั้น',
              'อาคาร',
              'จำนวนตู้ล็อกเกอร์',
              'แก้ไขล่าสุด',
              'แก้ไขโดย',
              'สร้างโดย',
              ''
            ],
          ),
          DataTableTextWidget(
              columnWidths: columnWidths,
              columnData: [
                TableCellWidget.textTableCell(text: '503', context: context),
                TableCellWidget.textTableCell(text: '5', context: context),
                TableCellWidget.textTableCell(
                    text: 'ECC Building', context: context),
                TableCellWidget.textTableCell(
                    text: '2 รายการ', context: context),
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
              onPressed: () {}),
        ],
      ),
    );
  }
}
