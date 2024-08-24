import 'package:bring/common/bouncing_widget.dart';
import 'package:bring/const/app_config.dart';
import 'package:bring/const/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../routes/bring_path.dart';

class IdeaWriteButton extends StatelessWidget {
  const IdeaWriteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
      onPressed: () {
        // if (!Session().isLogined) {
        //   Get.toNamed(BringPath.LOGIN);
        //   return;
        // }

        Get.toNamed(BringPath.BUSINESS_IDEA_WRITE);
      },
      child: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(color: BringColor.primaryNavy, borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain)),
        child: const Icon(
          Icons.edit,
          color: Colors.white,
          size: 32,
        ),
      ),
    );
  }
}
