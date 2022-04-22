import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PrimaryButtonWidget extends HookWidget {
  final width;
  final height;
  final void Function() onPressed;
  final text;
  final colorButton;
  final colorText;

  const PrimaryButtonWidget({
    required this.onPressed,
    required this.text,
    this.height = 38.4,
    this.width,
    this.colorButton = const Color.fromRGBO(34, 2, 78, 1),
    this.colorText = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: colorButton,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Theme.of(context)
              .primaryTextTheme
              .button!
              .copyWith(color: colorText),
        ),
      ),
    );
  }
}
