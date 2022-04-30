import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/core/presentation/routes/router.gr.dart';
import 'package:frontend_web_app/core/presentation/widgets/data_table_text_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/dropdown_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_button_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/locker.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/locker-repository.dart';
import 'package:frontend_web_app/injection.dart';
import 'package:intl/intl.dart';

class ManageLockerAndEquipmentLockerPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final lockers = useState(<Locker>[]);
    final ValueNotifier<RestFailure?> restFailure = useState(null);
    final isLoading = useState(false);

    useEffect(
      () {
        Future<void>.microtask(() async {
          try {
            isLoading.value = true;
            final result = await getIt<LockerRepository>().getAll();
            isLoading.value = false;
            print('result: $result');
            result.fold(
              (l) => restFailure.value = l,
              (r) => lockers.value = r,
            );
          } catch (error) {
            print('error: $error');
          }
        });
        return null;
      },
      [],
    );
//
    final departmentDropdown = useState<String>('ทุกแผนก');
    final locationDropdown = useState<String>('ทุกสถานที่ตั้ง');
    final columnWidths = <int, TableColumnWidth>{
      0: FlexColumnWidth(13),
      1: FlexColumnWidth(11),
      2: FlexColumnWidth(10),
      3: FlexColumnWidth(10),
      4: FlexColumnWidth(10),
      5: FlexColumnWidth(6),
    };

    return Container(
      // color: Colors.red,
      padding: EdgeInsets.fromLTRB(38.4, 24, 38.4, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'ตู้ล็อกเกอร์ทั้งหมด ' + '${lockers.value.length}' + ' รายการ',
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
              'จำนวนกล้อง',
              'แก้ไขล่าสุด',
              'สร้างเมื่อ',
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
                ...(lockers.value.map((e) {
                  return [
                    TableCellWidget.textTableCell(
                        text: e.name, context: context),
                    TableCellWidget.textTableCell(
                        text: '${e.id}', context: context),
                    TableCellWidget.textTableCell(
                        text: '${e.totalCams} ตัว', context: context),
                    TableCellWidget.textTableCell(
                        text: DateFormat('dd/MM/yyyy\nHH:mm:ss')
                            .format(e.updatedAt.toLocal()),
                        color: Colors.grey.shade400,
                        context: context),
                    TableCellWidget.textTableCell(
                      text: DateFormat('dd/MM/yyyy\nHH:mm:ss')
                          .format(e.createdAt.toLocal()),
                      context: context,
                      color: Colors.grey.shade400,
                      padding: EdgeInsets.fromLTRB(38.4, 12, 0, 12),
                    ),
                  ];
                }))
              ],
              onPressed: [
                ...(lockers.value.map((e) {
                  return () {};
                }))
              ],
            ),
        ],
      ),
    );
  }
}
