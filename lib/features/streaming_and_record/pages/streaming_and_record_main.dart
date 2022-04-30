import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/presentation/widgets/data_table_text_widget.dart';
import '../../../core/presentation/widgets/dropdown_box_widget.dart';
import '../../../core/presentation/widgets/primary_button_widget.dart';
import '../../../core/presentation/widgets/search_box_widget.dart';
import '../../../core/presentation/widgets/table_cell_widget.dart';
import '../../../core/presentation/widgets/table_header_widget.dart';

class StreamingAndRecordMainPage extends HookWidget {
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

    return Scaffold(
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
                    'assets/icons/core/svg/camera_icon_small.svg',
                    color: Colors.white,
                    height: 20,
                  ),
                ),
                Text(
                  'กล้องและวิดีโอ',
                  style: Theme.of(context).primaryTextTheme.headline1!.copyWith(
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
              decoration: BoxDecoration(
                // color: Colors.amber,
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      // color: Colors.red,
                      padding:
                          EdgeInsets.symmetric(horizontal: 38.4, vertical: 24),
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
                                child: SearchBoxWidget(
                                    hintText: 'ชื่อตู้ล็อกเกอร์, Locker ID'),
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
                              Expanded(
                                flex: 11,
                                child: DropdownBoxWidget(
                                  value: locationDropdown.value,
                                  items: <String>[
                                    'ทุกสถานที่ตั้ง',
                                    'ECC Building'
                                  ],
                                  onChanged: (newValue) {
                                    if (newValue != null) {
                                      locationDropdown.value = newValue;
                                    }
                                  },
                                ),
                              ),
                              Expanded(flex: 20, child: SizedBox()),
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
                                [
                                  TableCellWidget.textTableCell(
                                      text: 'Macbook Locker', context: context),
                                  TableCellWidget.textTableCell(
                                      text: '1', context: context),
                                  TableCellWidget.textTableCell(
                                      text: '5 รายการ', context: context),
                                  TableCellWidget.textTableCell(
                                      text: 'ห้อง 504 ชั้น 5 ECC Building',
                                      context: context),
                                  TableCellWidget.textTableCell(
                                    text: '1 ม.ค. 2022\nSaitan Kittibullungkul',
                                    context: context,
                                    color: Colors.grey.shade400,
                                    padding:
                                        EdgeInsets.fromLTRB(38.4, 12, 0, 12),
                                  ),
                                ]
                              ],
                              onPressed: [
                                () {}
                              ]),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
