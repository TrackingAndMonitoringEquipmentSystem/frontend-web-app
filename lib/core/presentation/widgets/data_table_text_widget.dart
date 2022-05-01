import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';

class DataTableTextWidget extends HookWidget {
  final Map<int, TableColumnWidth> columnWidths;
  final List<List<Widget>> columnData;
  // final List tableRow;

  final List<Function()> onPressed;

  const DataTableTextWidget({
    required this.columnWidths,
    required this.columnData,
    required this.onPressed,
    // required this.tableRow

    // this.tableRow,
  });
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(),
        clipBehavior: Clip.hardEdge,
        height: size.height * (367 / size.height),
        // color: Colors.amber,
        child: ListView(
          children: [
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: columnWidths,
              children: [
                ...(columnData.asMap().entries.map((e) {
                  return TableRow(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1, color: Colors.grey.shade200))),
                      children: [
                        ...e.value,
                        TableCellWidget.iconButtonCell(
                            context: context,
                            iconScr: Icons.more_horiz_outlined,
                            onPressed: onPressed[e.key])
                      ]);
                })),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
