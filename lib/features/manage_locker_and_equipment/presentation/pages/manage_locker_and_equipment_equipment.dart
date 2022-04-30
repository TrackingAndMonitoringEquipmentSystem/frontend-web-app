import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/core/presentation/widgets/dropdown_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/equipment_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/equipment.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/equipment-repository.dart';
import 'package:frontend_web_app/injection.dart';
import 'package:intl/intl.dart';

class ManageLockerAndEquipmentEquipmentPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final equipments = useState(<Equipment>[]);
    final ValueNotifier<RestFailure?> restFailure = useState(null);
    final isLoading = useState(false);
    useEffect(
      () {
        Future<void>.microtask(() async {
          try {
            isLoading.value = true;
            final result = await getIt<EquipmentRepository>().getAll();
            print("RESULT");
            print(result);
            isLoading.value = false;
            print('result: $result');
            result.fold(
              (l) => restFailure.value = l,
              (r) => equipments.value = r,
            );
          } catch (error) {
            print('error from equipment : $error');
          }
        });
        return null;
      },
      [],
    );

    final typeDropdown = useState<String>('ทุกหมวดหมู่');
    final statusDropdown = useState<String>('ทุกสถานะ');
    final columnWidths = <int, TableColumnWidth>{
      0: FlexColumnWidth(11),
      1: FlexColumnWidth(9),
      2: FlexColumnWidth(6),
      3: FlexColumnWidth(7),
      4: FlexColumnWidth(8),
      5: FlexColumnWidth(7),
      6: FlexColumnWidth(12),
    };

    return Container(
      // color: Colors.red,
      padding: EdgeInsets.fromLTRB(38.4, 24, 38.4, 0.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'อุปกรณ์ทั้งหมด 24 รายการ',
            style: Theme.of(context).primaryTextTheme.headline1,
          ),
          SizedBox(
            height: 32,
          ),
          Row(
            children: [
              Expanded(
                flex: 18,
                child: SearchBoxWidget(hintText: 'ชื่ออุปกรณ์, Mac address'),
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
            columnWidths: columnWidths,
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
          ...(equipments.value.map((e) {
            return EquipmentCellWidget(tableData: [
              [
                e.picUrl,
                e.name,
                e.tagId,
                e.duration == null
                    ? 'Not have duration'
                    : '${e.duration}' + ' วัน',
                // '${e.type}',
                e.locker.name,
                '${e.locker.id}',
                e.status,
                DateFormat('dd/mm/yyyy\nHH:mm:ss')
                    .format(e.updatedAt.toLocal()),
                'Saitan Kittibullungkul'
              ]
            ]);
          }))
        ],
      ),
    );
  }
}
