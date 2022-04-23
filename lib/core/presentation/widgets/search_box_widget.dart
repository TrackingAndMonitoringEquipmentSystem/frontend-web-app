import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchBoxWidget extends HookWidget {
  final String hintText;
  final height;
  final margin;

  const SearchBoxWidget({
    required this.hintText,
    this.height = 48 * 0.8,
    this.margin = const EdgeInsets.only(right: 20),
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      // width: width,
      height: height,
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.grey.shade400,
            ),
          ),
          prefixIcon: const Icon(Icons.search),
        ),
        style: Theme.of(context).primaryTextTheme.bodyText2,
      ),
    );
  }
}
