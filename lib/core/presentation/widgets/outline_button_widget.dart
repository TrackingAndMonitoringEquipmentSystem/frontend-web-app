import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class OutlineButtonWidget extends HookWidget {
  final text;
  final margin;
  final double height;
  const OutlineButtonWidget({
    required this.text,
    this.margin = const EdgeInsets.only(left: 16, right: 20),
    this.height = 38.4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          elevation: 0,
          primary: Theme.of(context).colorScheme.primary,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
        onPressed: (() {}),
        child: Text(
          text,
          style: Theme.of(context)
              .primaryTextTheme
              .button!
              .copyWith(color: Theme.of(context).colorScheme.primaryContainer),
        ),
      ),
    );
  }
}
