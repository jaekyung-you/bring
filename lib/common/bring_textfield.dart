import 'package:bring/const/app_config.dart';
import 'package:flutter/material.dart';

import '../const/bring_color.dart';

class BringTextField extends StatefulWidget {
  final TextEditingController controller;
  final String titleText;
  final String hintText;
  final int maxLength;

  const BringTextField({
    super.key,
    required this.controller,
    required this.titleText,
    required this.hintText,
    required this.maxLength,
  });

  @override
  State<BringTextField> createState() => _BringTextFieldState();
}

class _BringTextFieldState extends State<BringTextField> {
  final BorderRadius borderRadius = BorderRadius.circular(AppConfig.borderRadiusMain);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      maxLength: widget.maxLength,
      decoration: InputDecoration(
        counterText: '',
        hintText: widget.hintText,
        labelText: widget.titleText,
        labelStyle: const TextStyle(color: BringColor.grey02),
        hintStyle: const TextStyle(color: BringColor.grey02),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(color: BringColor.grey01),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(color: BringColor.navy02),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: const BorderSide(color: BringColor.red),
        ),
      ),
      onTapOutside: (PointerDownEvent event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
