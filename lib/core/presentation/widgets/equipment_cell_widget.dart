import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';

class EquipmentCellWidget extends HookWidget {
  final String imgSrc;
  final String equipmentName;
  final String macAddress;
  final String duration;
  final String type;
  final String lockerName, lockerId;
  final String status;
  final String editDate, editBy;

  const EquipmentCellWidget(
      {required this.imgSrc,
      required this.equipmentName,
      required this.macAddress,
      required this.duration,
      required this.type,
      required this.lockerName,
      required this.lockerId,
      required this.status,
      required this.editDate,
      required this.editBy});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height - 426.4,
        // color: Colors.amber,
        child: ListView(
          children: [
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: <int, TableColumnWidth>{
                0: FlexColumnWidth(11),
                1: FlexColumnWidth(9),
                2: FlexColumnWidth(6),
                3: FlexColumnWidth(7),
                4: FlexColumnWidth(8),
                5: FlexColumnWidth(7),
                6: FlexColumnWidth(12),
              },
              children: [
                TableRow(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1, color: Colors.grey.shade300))),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 38.4, vertical: 16),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 9,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(4),
                                child: Image.asset(imgSrc),
                              ),
                            ),
                            Expanded(flex: 2, child: SizedBox()),
                            Expanded(
                              flex: 16,
                              child: Text(equipmentName),
                            )
                          ],
                        ),
                      ),
                      TableCellWidget.textTableCell(
                          text: macAddress, context: context),
                      TableCellWidget.textTableCell(
                          text: duration, context: context),
                      TableCellWidget.textTableCell(
                          text: type, context: context),
                      TableCellWidget.textTableCell(
                          text: lockerName + '\nLocker ID : ' + lockerId,
                          context: context),
                      if (status == 'พร้อมใช้งาน')
                        Container(
                          margin: EdgeInsets.only(left: 38.4),
                          height: 40 * 0.8,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(221, 245, 224, 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                              child: Text(
                            status,
                            style: Theme.of(context)
                                .primaryTextTheme
                                .caption!
                                .copyWith(color: Color.fromRGBO(0, 88, 30, 1)),
                          )),
                        )
                      else if (status == 'ถูกยืม')
                        Container(
                          margin: EdgeInsets.only(left: 38.4),
                          height: 40 * 0.8,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(251, 242, 255, 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                              child: Text(
                            status,
                            style: Theme.of(context)
                                .primaryTextTheme
                                .caption!
                                .copyWith(color: Color.fromRGBO(85, 8, 182, 1)),
                          )),
                        )
                      else if (status == 'ส่งซ่อม')
                        Container(
                          margin: EdgeInsets.only(left: 38.4),
                          height: 40 * 0.8,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 234, 219, 1),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                              child: Text(
                            status,
                            style: Theme.of(context)
                                .primaryTextTheme
                                .caption!
                                .copyWith(
                                    color: Color.fromRGBO(229, 124, 0, 1)),
                          )),
                        ),
                      TableCellWidget.textTableCell(
                        text: editDate + '\n' + editBy,
                        context: context,
                        color: Colors.grey.shade500,
                      ),
                    ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
