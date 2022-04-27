import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend_web_app/core/presentation/widgets/equipment_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/dropdown_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_tab_bar_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment_location.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment_locker.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/presentation/pages/manage_locker_and_equipment_type.dart';

class ManageLockerAndEquipmentMainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final currentTab = useState(0);
    final typeDropdown = useState<String>('ทุกหมวดหมู่');
    final statusDropdown = useState<String>('ทุกสถานะ');

    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
                      'assets/icons/core/svg/locker_icon_small.svg',
                      color: Colors.white,
                      height: 20,
                    ),
                  ),
                  Text(
                    'ตู้และอุปกรณ์',
                    style:
                        Theme.of(context).primaryTextTheme.headline1!.copyWith(
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
                    PrimaryTabBarWidget(
                      onTap: (index) {
                        currentTab.value = index;
                      },
                      tabs: const [
                        Tab(text: 'อุปกรณ์ทั้งหมด'),
                        Tab(text: 'ตู้ล็อคเกอร์'),
                        Tab(text: 'จัดการสถานที่'),
                        Tab(text: 'จัดการหมวดหมู่'),
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          Container(
                            // color: Colors.red,
                            padding: EdgeInsets.symmetric(
                                horizontal: 38.4, vertical: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'อุปกรณ์ทั้งหมด 24 รายการ',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline1,
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
                                        onChanged: (newValue) {
                                          if (newValue != null) {
                                            typeDropdown.value = newValue;
                                          }
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      flex: 11,
                                      child: DropdownBoxWidget(
                                        value: statusDropdown.value,
                                        items: <String>[
                                          'ทุกสถานะ',
                                          'พร้อมใช้งาน',
                                          'ถูกยืม',
                                          'ส่งซ่อม'
                                        ],
                                        onChanged: (String? newValue) {
                                          if (newValue != null) {
                                            statusDropdown.value = newValue;
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
                                  columnWidths: <int, TableColumnWidth>{
                                    0: FlexColumnWidth(11),
                                    1: FlexColumnWidth(9),
                                    2: FlexColumnWidth(6),
                                    3: FlexColumnWidth(7),
                                    4: FlexColumnWidth(8),
                                    5: FlexColumnWidth(7),
                                    6: FlexColumnWidth(12),
                                  },
                                  columnHeader: [
                                    'ชื่ออุปกรณ์',
                                    'Mac address',
                                    'ระยะการยืม',
                                    'หมวดหมู่',
                                    'ตู้ล็อคเกอร์',
                                    'สถานะ',
                                    'แก้ไขล่าสุด',
                                  ],
                                ),
                                EquipmentCellWidget(
                                    imgSrc:
                                        'assets/images/core/equipment_fluke27ii.png',
                                    equipmentName: 'Fluke 27 II',
                                    macAddress: '8C-29-23-DC-F0-7A',
                                    duration: '7 วัน',
                                    type: 'Multimeter',
                                    lockerName: 'อุปกรณ์การช่าง',
                                    lockerId: '1',
                                    status: 'ส่งซ่อม',
                                    editDate: '25 ม.ค. 2022',
                                    editBy: 'Saitan Kittibullungkul')
                              ],
                            ),
                          ),
                          ManageLockerAndEquipmentLockerPage(),
                          ManageLockerAndEquipmentLocationPage(),
                          ManageLockerAndEquipmentTypePage(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
