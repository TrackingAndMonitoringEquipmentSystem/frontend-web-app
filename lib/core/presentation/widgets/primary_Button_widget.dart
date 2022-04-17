import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PrimaryButtonWidget extends HookWidget {
  final width;
  final height;
  final void Function() onPressed;
  final text;

  const PrimaryButtonWidget({
    required this.onPressed,
    required this.text,
    this.height = 38.4,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).colorScheme.primaryContainer,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        onPressed: (() {}),
        child: Text(
          text,
          style: Theme.of(context).primaryTextTheme.button,
        ),
      ),
    );
  }
}
