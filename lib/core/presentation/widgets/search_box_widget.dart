import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SearchBoxWidget extends HookWidget {
  final hintText;

  final width;
  final height;

  // final bool isError;
  // final String errorMessage;
  // final String? placeHolder;
  // final Widget? suffixIcon;
  // final bool isObscureText;
  // final TextInputType? keyboardType;
  const SearchBoxWidget({
    required this.hintText,
    this.width = 408 * 0.8,
    this.height = 48 * 0.8,

    // this.isError = false,
    // this.errorMessage = 'กรุณากรอกข้อมูลให้ถูกต้อง',
    // this.placeHolder,
    // this.suffixIcon,
    // this.isObscureText = false,
    // this.keyboardType,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: width,
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
