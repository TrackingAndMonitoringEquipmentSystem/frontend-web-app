import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AlertDialogWidget extends HookWidget {
  final title;
  final hintText;
  final void Function() onPressed;

  const AlertDialogWidget(
      {required this.title, required this.hintText, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return AlertDialog(
      titlePadding: EdgeInsets.only(left: 24, top: 24),
      titleTextStyle: Theme.of(context).primaryTextTheme.subtitle1,
      title: Text(title),
      content: Container(
        height: size.height * (40 / size.height),
        width: size.width * (312 / size.width),
        child: TextField(
          decoration: InputDecoration(
            isDense: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            hintText: hintText,
          ),
          onChanged: (value) {},
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'ยกเลิก',
                style: Theme.of(context)
                    .primaryTextTheme
                    .bodyText2!
                    .copyWith(color: Colors.grey.shade500),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24, bottom: 24),
          child: TextButton(onPressed: onPressed, child: Text('บันทึก')),
        ),
      ],
    );
  }
}
