import 'package:bring/const/app_config.dart';
import 'package:flutter/material.dart';

class BringBadge extends StatelessWidget {
  final Color fgColor;
  final Color bgColor;
  final String title;
  final double verticalPadding;
  final double horizontalPadding;
  final double fontSize;

  const BringBadge(
      {super.key,
      required this.fgColor,
      required this.bgColor,
      required this.title,
      required this.verticalPadding,
      required this.horizontalPadding,
      required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
      decoration: BoxDecoration(color: bgColor, borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain)),
      child: Text(
        title,
        style: TextStyle(fontSize: fontSize, color: fgColor),
      ),
    );
  }
}
