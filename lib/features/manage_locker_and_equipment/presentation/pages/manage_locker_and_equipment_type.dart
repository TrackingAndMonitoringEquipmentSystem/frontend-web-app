import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/type_equipment.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/equipment-repository.dart';
import 'package:frontend_web_app/features/permission_management/presentation/widgets/alert_dialog_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/data_table_text_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_button_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';
import 'package:frontend_web_app/injection.dart';

import '../../../../core/presentation/widgets/search_box_widget.dart';

class ManageLockerAndEquipmentTypePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final typeEquipment = useState(<TypeEquipment>[]);

    final ValueNotifier<RestFailure?> restFailure = useState(null);
    final isLoading = useState(false);

    useEffect(
      () {
        Future<void>.microtask(() async {
          try {
            isLoading.value = true;
            final result = await getIt<EquipmentRepository>().getType();
            isLoading.value = false;
            print('result: $result');
            result.fold(
              (l) => restFailure.value = l,
              (r) => typeEquipment.value = r,
            );
          } catch (error) {
            print('error: $error');
          }
        });
        return null;
      },
      [],
    );
    final columnWidths = <int, TableColumnWidth>{
      0: FlexColumnWidth(22),
      1: FlexColumnWidth(32),
      2: FlexColumnWidth(6),
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
            columnHeader: ['ชื่อหมวดหมู่', 'ระยะการยืม', ''],
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
            DataTableTextWidget(columnWidths: columnWidths, columnData: [
              ...(typeEquipment.value.map((e) {
                return [
                  TableCellWidget.textTableCell(
                      text: e.name,
                      padding: EdgeInsets.fromLTRB(38.4, 24, 0, 24),
                      context: context),
                  TableCellWidget.textTableCell(
                      text: e.duration.toString(),
                      padding: EdgeInsets.fromLTRB(38.4, 24, 0, 24),
                      context: context),
                ];
              }))
            ], onPressed: [
              ...(typeEquipment.value.map((e) {
                return () {};
              }))
            ]),
        ],
      ),
    );
  }
}
