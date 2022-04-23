import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend_web_app/core/presentation/widgets/table_cell_widget.dart';

class DataTableTextWidget extends HookWidget {
  final Map<int, TableColumnWidth> columnWidths;
  final List<Widget> columnData;

  final void Function() onPressed;

  const DataTableTextWidget({
    required this.columnWidths,
    required this.columnData,
    required this.onPressed,

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
              columnWidths: columnWidths,
              children: [
                TableRow(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1, color: Colors.grey.shade300))),
                    children: [
                      ...columnData,
                      TableCellWidget.iconButtonCell(
                          context: context,
                          iconScr: Icons.more_horiz,
                          onPressed: onPressed)
                    ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
