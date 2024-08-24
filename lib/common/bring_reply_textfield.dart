import 'package:bring/common/bring_round_button.dart';
import 'package:bring/common/bring_textfield.dart';
import 'package:bring/common/circle_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/app_config.dart';
import '../const/bring_color.dart';
import '../session.dart';

class BringReplyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function onTapRegister;

  const BringReplyTextField({super.key, required this.controller, required this.hintText, required this.onTapRegister});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: AppConfig.innerPadding),
          height: 64,
          width: Get.width,
          color: Colors.white,
          child: Row(
            children: [
              CircleImageWidget(imageUrl: Session().profileImageUrl, width: 40),
              const SizedBox(width: AppConfig.contentPadding),
              Expanded(
                child: BringTextField(titleText: '', hintText: hintText, maxLength: 100),
              ),
              const SizedBox(width: AppConfig.contentPadding),
              BringRoundButton(
                buttonText: '등록',
                onPressed: () => onTapRegister(),
                buttonFgColor: BringColor.primaryNavy,
                buttonBgColor: Colors.white,
                borderColor: BringColor.primaryNavy,
                borderRadius: 30,
                width: 60,
                height: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
