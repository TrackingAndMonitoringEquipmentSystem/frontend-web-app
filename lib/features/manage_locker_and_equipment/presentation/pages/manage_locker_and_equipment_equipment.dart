import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:frontend_web_app/core/domain/repositories/rest_failure.dart';
import 'package:frontend_web_app/core/presentation/widgets/dropdown_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/equipment_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/search_box_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_header_widget.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/entities/equipment.dart';
import 'package:frontend_web_app/features/manage_locker_and_equipment/domain/repositories/equipment-repository.dart';
import 'package:frontend_web_app/injection.dart';
import 'package:intl/intl.dart';
import 'package:frontend_web_app/core/utils/environment.dart' as environment;

class ManageLockerAndEquipmentEquipmentPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final equipments = useState(<Equipment>[]);
    final ValueNotifier<RestFailure?> restFailure = useState(null);
    final isLoading = useState(false);
    final size = MediaQuery.of(context).size;
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
      0: FlexColumnWidth(13),
      1: FlexColumnWidth(9),
      2: FlexColumnWidth(6),
      3: FlexColumnWidth(7),
      4: FlexColumnWidth(8),
      5: FlexColumnWidth(7),
      6: FlexColumnWidth(10),
    };
    final uri = Uri(
      scheme: environment.baseSchema,
      host: environment.baseApiUrl,
      port: environment.baseApiPort,
    );
    print('img uri : ' + uri.toString());

    return Container(
      // color: Colors.red,
      padding: EdgeInsets.fromLTRB(38.4, 24, 38.4, 0.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'อุปกรณ์ทั้งหมด ${equipments.value.length} รายการ',
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
              'แก้ไขล่าสุดโดย',
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
            SingleChildScrollView(
              child: Container(
                height: size.height * (367 / size.height),
                child: ListView(
                  children: [
                    Table(
                      defaultVerticalAlignment:
                          TableCellVerticalAlignment.middle,
                      columnWidths: columnWidths,
                      children: [
                        ...(equipments.value.map((e) {
                          return TableRow(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          width: 1,
                                          color: Colors.grey.shade300))),
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 38.4, vertical: 16),
                                  child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 8),
                                        height:
                                            size.height * (56 / size.height),
                                        width: size.height * (56 / size.height),
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                228, 237, 245, 1),
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            border: Border.all(
                                                width: 1,
                                                color: Colors.grey.shade400),
                                            image: DecorationImage(
                                                fit: BoxFit.fitWidth,
                                                image: NetworkImage(
                                                    uri.toString() +
                                                        '/' +
                                                        e.picUrl))),
                                      ),
                                      Expanded(
                                        child: Text(e.name),
                                      )
                                    ],
                                  ),
                                ),
                                TableCellWidget.textTableCell(
                                    text: e.tagId, context: context),
                                TableCellWidget.textTableCell(
                                    text: e.duration == null && e.type != null
                                        ? e.type!['duration'].toString()
                                        : e.duration.toString(),
                                    context: context),
                                TableCellWidget.textTableCell(
                                    text: e.duration == null && e.type != null
                                        ? e.type!['name'].toString()
                                        : 'ไม่มีหมวดหมู่',
                                    context: context),
                                TableCellWidget.textTableCell(
                                    text: e.locker.name +
                                        '\nLocker ID : ' +
                                        e.locker.id.toString(),
                                    context: context),
                                if (e.status == 'พร้อมใช้งาน')
                                  Container(
                                    margin: EdgeInsets.only(left: 38.4),
                                    height: 40 * 0.8,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(221, 245, 224, 1),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                        child: Text(
                                      e.status,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .caption!
                                          .copyWith(
                                              color:
                                                  Color.fromRGBO(0, 88, 30, 1)),
                                    )),
                                  )
                                else if (e.status == 'ยืมอยู่')
                                  Container(
                                    margin: EdgeInsets.only(left: 38.4),
                                    height: 40 * 0.8,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(251, 242, 255, 1),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                        child: Text(
                                      e.status,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .caption!
                                          .copyWith(
                                              color: Color.fromRGBO(
                                                  85, 8, 182, 1)),
                                    )),
                                  )
                                else if (e.status == 'ส่งซ่อม')
                                  Container(
                                    margin: EdgeInsets.only(left: 38.4),
                                    height: 40 * 0.8,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(255, 234, 219, 1),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                        child: Text(
                                      e.status,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .caption!
                                          .copyWith(
                                              color: Color.fromRGBO(
                                                  229, 124, 0, 1)),
                                    )),
                                  ),
                                TableCellWidget.textTableCell(
                                  text: e.updatedAt == null
                                      ? 'ไม่มีข้อมูล'
                                      : DateFormat('dd/MM/yyyy\n')
                                              .format(e.updatedAt.toLocal()) +
                                          e.updatedBy!.firstName +
                                          e.updatedBy!.lastName,
                                  context: context,
                                  color: Colors.grey.shade500,
                                ),
                              ]);
                        }))
                      ],
                    ),
                  ],
                ),
              ),
            )
          // ...(equipments.value.map((e) {
          //   return EquipmentCellWidget(tableData: [
          //     [
          //       e.picUrl,
          //       e.name,
          //       e.tagId,
          //       e.duration == null
          //           ? 'Not have duration'
          //           : '${e.duration}' + ' วัน',
          //       // '${e.type}',
          //       e.locker.name,
          //       '${e.locker.id}',
          //       e.status,
          //       DateFormat('dd/mm/yyyy\nHH:mm:ss')
          //           .format(e.updatedAt.toLocal()),
          //       'Saitan Kittibullungkul'
          //     ]
          //   ]);
          // }))
        ],
      ),
    );
  }
}
