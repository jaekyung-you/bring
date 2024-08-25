import 'package:bring/common/bring_round_button.dart';
import 'package:bring/common/bring_textfield.dart';
import 'package:bring/common/circle_image_widget.dart';
import 'package:bring/util/tag_text_editing_controller.dart';
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
                child: TextField(
                  controller: controller,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain),
                      borderSide: const BorderSide(color: BringColor.grey01),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain),
                      borderSide: const BorderSide(color: BringColor.grey01),
                    ),
                    hintText: '댓글을 달아보세요.',
                  ),
                  onTapOutside: (PointerDownEvent event) {
                    FocusManager.instance.primaryFocus?.unfocus();
                  },
                ),
              ),
              const SizedBox(width: AppConfig.contentPadding),
              BringRoundButton(
                buttonText: '등록',
                onPressed: () => onTapRegister(),
                buttonFgColor: BringColor.primaryNavy,
                buttonBgColor: Colors.white,
                width: 50,
                height: 40,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
