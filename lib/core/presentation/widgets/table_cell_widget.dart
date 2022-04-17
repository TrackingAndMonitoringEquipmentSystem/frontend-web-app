import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';

class TableCellWidget {
  // final String text;
  // const TableCellWidget({required this.text});

  static Widget textTableCell({
    required BuildContext context,
    required String text,
    color,
    padding = const EdgeInsets.fromLTRB(38.4, 10, 0, 10),
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
        color: Colors.grey.shade500,
      ),
      onPressed: () {},
    );
  }
}
