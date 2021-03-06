import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/presentation/widgets/data_table_text_widget.dart';
import '../../../core/presentation/widgets/dropdown_box_widget.dart';
import '../../../core/presentation/widgets/equipment_cell_widget.dart';
import '../../../core/presentation/widgets/search_box_widget.dart';
import '../../../core/presentation/widgets/table_cell_widget.dart';
import '../../../core/presentation/widgets/table_header_widget.dart';

class RepairReportMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final typeDropdown = useState<String>('ทุกหมวดหมู่');

    final columnWidths = <int, TableColumnWidth>{
      0: FlexColumnWidth(12),
      1: FlexColumnWidth(10),
      2: FlexColumnWidth(1),
      3: FlexColumnWidth(8),
      4: FlexColumnWidth(8),
      5: FlexColumnWidth(7),
      6: FlexColumnWidth(14),
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
                    'assets/icons/core/svg/tool_icon_small.svg',
                    color: Colors.white,
                    height: 20,
                  ),
                ),
                Text(
                  'การแจ้งซ่อม',
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
                            'อุปกรณ์ที่แจ้งซ่อม 2 รายการ',
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
                                    hintText: 'ชื่ออุปกรณ์, Mac address'),
                              ),
                              Expanded(
                                flex: 11,
                                child: DropdownBoxWidget(
                                  value: typeDropdown.value,
                                  items: <String>[
                                    'ทุกหมวดหมู่',
                                    'Macbook air',
                                    'Macbook pro',
                                    'Multimitter',
                                    'สว่านไร้สาย',
                                    'หัวแร้ง'
                                  ],
                                  onChanged: (String? newValue) {
                                    if (newValue != null) {
                                      typeDropdown.value = newValue;
                                    }
                                  },
                                ),
                              ),
                              Expanded(flex: 31, child: SizedBox()),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TableHeaderWidget(
                            columnWidths: columnWidths,
                            columnHeader: [
                              'ชื่ออุปกรณ์',
                              'Mac address',
                              '',
                              'หมวดหมู่',
                              'ตู้ล็อคเกอร์',
                              'สถานะ',
                              'วันที่แจ้งซ่อม',
                            ],
                          ),
                          // EquipmentCellWidget(
                          //     columnWidths: columnWidths,
                          //     imgSrc:
                          //         'assets/images/core/equipment_fluke27ii.png',
                          //     equipmentName: 'Fluke 27 II',
                          //     macAddress: '8C-29-23-DC-F0-7A',
                          //     duration: '',
                          //     type: 'Multimeter',
                          //     lockerName: 'อุปกรณ์การช่าง',
                          //     lockerId: '1',
                          //     status: 'ส่งซ่อม',
                          //     editDate: '25 ม.ค. 2022',
                          //     editBy: 'Saitan Kittibullungkul')
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
