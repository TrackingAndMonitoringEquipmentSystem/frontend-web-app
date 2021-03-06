import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/core/presentation/widgets/data_table_text_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/dropdown_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/primary_button_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/building.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/floor.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/room.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/locker-repository.dart';
import 'package:frontend_web_app/injection.dart';
import 'package:intl/intl.dart';

class ManageLockerAndEquipmentLocationPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final buildings = useState(<Building>[]);

    final ValueNotifier<RestFailure?> restFailure = useState(null);
    final isLoading = useState(false);

    useEffect(
      () {
        Future<void>.microtask(() async {
          try {
            isLoading.value = true;
            final result = await getIt<LockerRepository>().getBuildings();
            isLoading.value = false;
            print('result: $result');
            result.fold(
              (l) => restFailure.value = l,
              (r) => buildings.value = r,
            );
          } catch (error) {
            print('error: $error');
          }
        });
        return null;
      },
      [],
    );

    final locationDropdown = useState<String>('??????????????????????????????????????????');
    final columnWidths = <int, TableColumnWidth>{
      0: FlexColumnWidth(6),
      1: FlexColumnWidth(4),
      2: FlexColumnWidth(9),
      3: FlexColumnWidth(15),
      4: FlexColumnWidth(10),
      5: FlexColumnWidth(10),
      6: FlexColumnWidth(6),
    };
    final rooms = extractRoom(context, buildings.value);
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
                child: DropdownBoxWidget(
                  value: locationDropdown.value,
                  items: <String>['??????????????????????????????????????????', '503, 5, ECC Building'],
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
                    text: '+ ????????????????????????????????????',
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
              '????????????',
              '????????????',
              '???????????????',
              '???????????????????????????????????????????????????',
              '?????????????????????????????????',
              '??????????????????????????????',
              ''
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
                columnData: rooms,
                onPressed: [
                  ...(rooms.map((e) {
                    return () {};
                  }))
                ]),
        ],
      ),
    );
  }

  List<List<Widget>> extractRoom(
      BuildContext context, List<Building> buildings) {
    final rooms = <Map<String, dynamic>>[];
    for (final building in buildings) {
      for (final floor in building.floors) {
        for (final room in floor.rooms) {
          rooms.add({'room': room, 'floor': floor, 'building': building});
        }
      }
    }
    return rooms.map((room) {
      return [
        TableCellWidget.textTableCell(
            text: (room['room'] as Room).name, context: context),
        TableCellWidget.textTableCell(
            text: (room['floor'] as Floor).name, context: context),
        TableCellWidget.textTableCell(
            text: (room['building'] as Building).name, context: context),
        TableCellWidget.textTableCell(
            text: (room['room'] as Room).lockers == null
                ? '???????????????????????????????????????????????????'
                : '${(room['room'] as Room).lockers!.length} ??????????????????',
            context: context),
        TableCellWidget.textTableCell(
            text: DateFormat('dd/MM/yyyy\nHH:mm:ss')
                .format((room['room'] as Room).updatedAt.toLocal()),
            context: context,
            color: Colors.grey.shade400),
        TableCellWidget.textTableCell(
          text: DateFormat('dd/MM/yyyy\nHH:mm:ss')
              .format((room['room'] as Room).createdAt.toLocal()),
          context: context,
          color: Colors.grey.shade400,
          padding: EdgeInsets.fromLTRB(38.4, 12, 0, 12),
        ),
      ];
    }).toList();
  }
}
