import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';
import 'package:frontend_web_app/core/presentation/widgets/data_table_text_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/dropdown_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_button_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';

class ManageLockerAndEquipmentLockerPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final departmentDropdown = useState<String>('ทุกแผนก');
    final locationDropdown = useState<String>('ทุกสถานที่ตั้ง');
    final columnWidths = <int, TableColumnWidth>{
      0: FlexColumnWidth(13),
      1: FlexColumnWidth(11),
      2: FlexColumnWidth(7),
      3: FlexColumnWidth(13),
      4: FlexColumnWidth(10),
      5: FlexColumnWidth(6),
    };

    return Container(
      // color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 38.4, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ตู้ล็อกเกอร์ทั้งหมด 3 รายการ',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Expanded(
                flex: 18,
                child: SearchBoxWidget(hintText: 'ชื่อตู้ล็อกเกอร์, Locker ID'),
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
                  onChanged: (newValue) {
                    if (newValue != null) {
                      departmentDropdown.value = newValue;
                    }
                  },
                ),
              ),
              Expanded(
                flex: 11,
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
              Expanded(flex: 12, child: SizedBox()),
              Expanded(
                  flex: 8,
                  child: PrimaryButtonWidget(
                    onPressed: () {
                      AutoRouter.of(context).push(AddLockerRoute());
                    },
                    text: '+ เพิ่มตู้ล็อคเกอร์',
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
              'ชื่อตู้ล็อกเกอร์',
              'Locker ID',
              'จำนวนอุปกรณ์',
              'สถานที่ตั้ง',
              'แก้ไขล่าสุด',
              ' ',
            ],
          ),
          DataTableTextWidget(
              columnWidths: columnWidths,
              columnData: [
                TableCellWidget.textTableCell(
                    text: 'Macbook Locker', context: context),
                TableCellWidget.textTableCell(text: '1', context: context),
                TableCellWidget.textTableCell(
                    text: '5 รายการ', context: context),
                TableCellWidget.textTableCell(
                    text: 'ห้อง 504 ชั้น 5 ECC Building', context: context),
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
