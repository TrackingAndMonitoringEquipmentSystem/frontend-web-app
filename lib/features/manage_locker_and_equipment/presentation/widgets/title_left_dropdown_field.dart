import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../../core/presentation/widgets/table_cell_widget.dart';

class TitleLeftDropdownField extends HookWidget {
  final List<String> title;

  final titleMargin, fieldMargin;
  final List value;
  final List<List> items;
  final List<Function> onChanged;
  final List<String> hint;

  const TitleLeftDropdownField({
    required this.title,
    required this.hint,
    required this.value,
    required this.items,
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
          TableCellWidget.dropdownCell(
              context: context,
              value: value[i],
              items: items[i],
              hint: hint[i],
              margin: fieldMargin,
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
