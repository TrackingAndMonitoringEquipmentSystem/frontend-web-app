import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DropdownBoxWidget extends HookWidget {
  final value;
  final List<dynamic> items;
  // final void Function(String?) onChanged;
  final Function onChanged;
  final width;
  final height;
  const DropdownBoxWidget({
    required this.value,
    required this.items,
    required this.onChanged,
    this.width = 192,
    this.height = 48 * 0.8,
  });
  @override
  Widget build(BuildContext context) {
    // final dropdownValue = useState<String>(items[0]);
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
            menuMaxHeight: 160,
            borderRadius: BorderRadius.circular(8),
            isExpanded: true,
            elevation: 2,
            iconEnabledColor: Colors.grey.shade400,
            focusColor: Theme.of(context).colorScheme.surface,
            dropdownColor: Theme.of(context).colorScheme.surface,
            value: value,
            items: items.map<DropdownMenuItem<String>>((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: Theme.of(context).primaryTextTheme.bodyText2,
                ),
              );
            }).toList(),
            onChanged: (newValue) {
              onChanged(newValue);
            }),
      ),
    );
  }
}
