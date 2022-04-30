import 'package:flutter/material.dart';

class TableCellWidget {
  static Widget textTableCell({
    required BuildContext context,
    required String text,
    color,
    padding = const EdgeInsets.fromLTRB(38.4, 14, 0, 14),
  }) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: Theme.of(context)
            .primaryTextTheme
            .bodyText2!
            .copyWith(color: color),
      ),
    );
  }

  static Widget textFieldCell({
    required context,
    required String hintText,
    required final Function onChanged,
    margin = const EdgeInsets.fromLTRB(19.2, 10, 0, 10),
    height = 38.4,
  }) {
    return Expanded(
      child: Container(
        // padding: padding,
        margin: margin,
        // width: width,
        height: height,
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
            isDense: true,
            // contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            hintText: hintText,
            hintStyle: Theme.of(context)
                .primaryTextTheme
                .bodyText2!
                .copyWith(color: Colors.grey.shade400),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: Colors.grey.shade400,
              ),
            ),
            // prefixIcon: const Icon(Icons.search),
          ),
          style: Theme.of(context).primaryTextTheme.bodyText2,
          onChanged: (value) {
            onChanged(value);
          },
        ),
      ),
    );
  }

  static Widget dropdownCell({
    required context,
    required String? value,
    required List<String> items,
    required void Function(String) onChanged,
    height = 38.4,
    String hint = '',
    margin = const EdgeInsets.only(left: 19.2),
    padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
  }) {
    return Container(
      margin: margin,
      padding: padding,
      // width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            menuMaxHeight: 160,
            borderRadius: BorderRadius.circular(8),
            isExpanded: true,
            elevation: 2,
            iconEnabledColor: Colors.grey.shade400,
            focusColor: Theme.of(context).colorScheme.surface,
            dropdownColor: Theme.of(context).colorScheme.surface,
            hint: Text(
              hint,
              style: Theme.of(context)
                  .primaryTextTheme
                  .bodyText2!
                  .copyWith(color: Colors.grey.shade400),
            ),
            value: value,
            items: items.map<DropdownMenuItem<String>>((value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value.split(':')[1],
                  style: Theme.of(context).primaryTextTheme.bodyText2,
                ),
              );
            }).toList(),
            onChanged: (newValue) {
              onChanged(newValue as String);
            }),
      ),
    );
  }

  static Widget circleAvatarCell({
    required String imgSrc,
  }) {
    return CircleAvatar(
      radius: 20,
      backgroundImage: Image.asset(imgSrc).image,
    );
  }

  static Widget iconButtonCell({
    required context,
    required iconScr,
    required void Function() onPressed,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(16),
        primary: Theme.of(context).colorScheme.surface,
        onPrimary: Colors.grey.shade400,
        shadowColor: Theme.of(context).colorScheme.secondary,
        elevation: 0,
      ),
      child: Icon(
        iconScr,
        color: Colors.grey.shade400,
      ),
      onPressed: () {},
    );
  }
}
