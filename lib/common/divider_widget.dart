import 'package:bring/const/bring_color.dart';
import 'package:flutter/material.dart';
import '../const/app_config.dart';

class DividerWidget extends StatelessWidget {
  const DividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: AppConfig.contentPadding),
      child: Divider(
        color: BringColor.grey05,
      ),
    );
  }
}
