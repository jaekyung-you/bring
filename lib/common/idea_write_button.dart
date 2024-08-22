import 'package:bring/const/app_config.dart';
import 'package:bring/const/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/bring_path.dart';

class IdeaWriteButton extends StatelessWidget {
  const IdeaWriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(BringPath.IDEA_WRITE);
      },
      child: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(color: BringColor.primaryNavy, borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain)),
        child: Icon(
          Icons.edit,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}
