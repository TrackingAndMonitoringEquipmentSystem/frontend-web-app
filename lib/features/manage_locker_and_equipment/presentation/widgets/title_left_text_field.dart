import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/presentation/widgets/table_cell_widget.dart';

class TitleLeftTextField extends HookWidget {
  final List<String> title;
  final List<String> hint;
  final List<Function> onChanged;
  final titleMargin;
  final fieldMargin;

  const TitleLeftTextField({
    required this.title,
    required this.hint,
    required this.onChanged,
    this.titleMargin = const EdgeInsets.only(top: 25.6),
    this.fieldMargin = const EdgeInsets.fromLTRB(38.4, 25.6, 182, 0.0),
  });

  @override
  Widget build(BuildContext context) {
    List<TableRow> tableChildren = [];
    for (var i = 0; i < title.length; i++) {
      tableChildren.add(
        TableRow(children: [
          Container(
            margin: titleMargin,
            height: 38.4,
            alignment: Alignment.centerRight,
            child: Text(
              title[i],
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2!
                  .copyWith(color: Colors.grey.shade700),
            ),
          ),
          TableCellWidget.textFieldCell(
              context: context,
              margin: fieldMargin,
              hintText: hint[i],
              onChanged: onChanged[i])
        ]),
      );
    }

    return Table(
      columnWidths: <int, TableColumnWidth>{
        0: FlexColumnWidth(13),
        1: FlexColumnWidth(59),
      },
      children: [...tableChildren],
    );
  }
}
