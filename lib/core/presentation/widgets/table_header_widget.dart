import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class TableHeaderWidget extends HookWidget {
  final Map<int, TableColumnWidth> columnWidths;
  final List<dynamic> columnHeader;
  // final tableRow;

  const TableHeaderWidget({
    required this.columnWidths,
    required this.columnHeader,
    // this.tableRow,
  });
  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.fromLTRB(38.4, 10, 0.0, 10);
    List<Widget> tableChildren = [];
    for (var i in columnHeader) {
      tableChildren.add(
        Padding(
          padding: padding,
          child: Text(
            i,
            style: Theme.of(context)
                .primaryTextTheme
                .bodyText1!
                .copyWith(color: Color.fromRGBO(85, 8, 182, 0.5)),
          ),
        ),
      );
    }
    return Table(
      columnWidths: columnWidths,
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: [
        TableRow(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            children: tableChildren),
        // ...tableRow
      ],
    );
  }
}
