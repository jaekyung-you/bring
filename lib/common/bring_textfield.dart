import 'package:bring/const/app_config.dart';
import 'package:flutter/material.dart';

import '../const/theme.dart';

class BringTextField extends StatefulWidget {
  final String titleText;
  final String hintText;
  final int maxLength;

  const BringTextField({super.key, required this.titleText, required this.hintText, required this.maxLength});

  @override
  State<BringTextField> createState() => _BringTextFieldState();
}

class _BringTextFieldState extends State<BringTextField> {
  final BorderRadius borderRadius = BorderRadius.circular(AppConfig.borderRadiusSub);

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: widget.maxLength,
      decoration: InputDecoration(
        counterText: '',
        hintText: widget.hintText,
        labelText: widget.titleText,
        labelStyle: TextStyle(color: BringColor.grey02),
        hintStyle: TextStyle(color: BringColor.grey02),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: BringColor.grey01),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: BringColor.navy02),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: BringColor.red),
        ),
      ),
      onTapOutside: (PointerDownEvent event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
