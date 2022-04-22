import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';

class AccoutCellWidget extends HookWidget {
  final String imgSrc;
  final String name;
  final String email;
  final String role;
  final String department;
  final String phone;
  final Widget action;
  const AccoutCellWidget(
      {required this.imgSrc,
      required this.name,
      required this.email,
      required this.role,
      required this.department,
      required this.phone,
      required this.action

      // this.tableRow,
      });
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
                0: FlexColumnWidth(44),
                1: FlexColumnWidth(37),
                2: FlexColumnWidth(24),
                3: FlexColumnWidth(22),
                4: FlexColumnWidth(20),
                5: FlexColumnWidth(33),
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
                            TableCellWidget.circleAvatarCell(imgSrc: imgSrc),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Text(
                                name,
                              ),
                            )
                          ],
                        ),
                      ),
                      TableCellWidget.textTableCell(
                          text: email, context: context),
                      TableCellWidget.textTableCell(
                          text: role, context: context),
                      TableCellWidget.textTableCell(
                          text: department, context: context),
                      TableCellWidget.textTableCell(
                          text: phone, context: context),
                      action
                    ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
