import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';

class EquipmentCellWidget extends HookWidget {
  // final String imgSrc;
  // final String equipmentName;
  // final String macAddress;
  // final String duration;
  // final String type;
  // final String lockerName, lockerId;
  // final String status;
  // final String editDate, editBy;
  final List<List<String>> tableData;
  final columnWidths;

  const EquipmentCellWidget({
    // required this.imgSrc,
    // required this.equipmentName,
    // required this.macAddress,
    // required this.duration,
    // required this.type,
    // required this.lockerName,
    // required this.lockerId,
    // required this.status,
    // required this.editDate,
    // required this.editBy,
    required this.tableData,
    this.columnWidths = const <int, TableColumnWidth>{
      0: FlexColumnWidth(11),
      1: FlexColumnWidth(9),
      2: FlexColumnWidth(6),
      3: FlexColumnWidth(7),
      4: FlexColumnWidth(8),
      5: FlexColumnWidth(7),
      6: FlexColumnWidth(12),
    },
  });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height - 426.4,
        child: ListView(
          children: [
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: columnWidths,
              children: [
                ...(tableData.asMap().entries.map((e) {
                  return TableRow(
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
                                  child: Image.asset(e.value[0]),
                                ),
                              ),
                              Expanded(flex: 2, child: SizedBox()),
                              Expanded(
                                flex: 16,
                                child: Text(e.value[1]),
                              )
                            ],
                          ),
                        ),
                        TableCellWidget.textTableCell(
                            text: e.value[2], context: context),
                        TableCellWidget.textTableCell(
                            text: e.value[3], context: context),
                        TableCellWidget.textTableCell(
                            text: e.value[4], context: context),
                        TableCellWidget.textTableCell(
                            text: e.value[5] + '\nLocker ID : ' + e.value[6],
                            context: context),
                        if (e.value[7] == 'พร้อมใช้งาน')
                          Container(
                            margin: EdgeInsets.only(left: 38.4),
                            height: 40 * 0.8,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(221, 245, 224, 1),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Text(
                              e.value[7],
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .caption!
                                  .copyWith(
                                      color: Color.fromRGBO(0, 88, 30, 1)),
                            )),
                          )
                        else if (e.value[7] == 'ยืมอยู่')
                          Container(
                            margin: EdgeInsets.only(left: 38.4),
                            height: 40 * 0.8,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(251, 242, 255, 1),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Text(
                              e.value[7],
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .caption!
                                  .copyWith(
                                      color: Color.fromRGBO(85, 8, 182, 1)),
                            )),
                          )
                        else if (e.value[7] == 'ส่งซ่อม')
                          Container(
                            margin: EdgeInsets.only(left: 38.4),
                            height: 40 * 0.8,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 234, 219, 1),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Center(
                                child: Text(
                              e.value[7],
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .caption!
                                  .copyWith(
                                      color: Color.fromRGBO(229, 124, 0, 1)),
                            )),
                          ),
                        TableCellWidget.textTableCell(
                          text: e.value[8] + '\n' + e.value[9],
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
    );
  }
}
