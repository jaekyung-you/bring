import 'package:flutter/material.dart';

import '../const/app_config.dart';
import '../const/theme.dart';

class BringTextformfield extends StatefulWidget {
  final String titleText;
  final String hintText;
  final int maxLenth;

  const BringTextformfield({super.key, required this.titleText, required this.hintText, required this.maxLenth});

  @override
  State<BringTextformfield> createState() => _BringTextformfieldState();
}

class _BringTextformfieldState extends State<BringTextformfield> {
  final BorderRadius borderRadius = BorderRadius.circular(AppConfig.borderRadiusSub);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 5, // 여러 줄 입력 가능
      decoration: InputDecoration(
        hintText: widget.hintText,
        alignLabelWithHint: true,
        // labelText를 입력 필드의 상단에 고정
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
