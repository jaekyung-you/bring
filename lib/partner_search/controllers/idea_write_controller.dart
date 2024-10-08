import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/bring_dialog.dart';

class IdeaWriteController extends GetxController {
  TextEditingController titleTextController = TextEditingController();
  TextEditingController contentTextController = TextEditingController();
  TextEditingController goalTextController = TextEditingController();
  TextEditingController progressTextController = TextEditingController();
  TextEditingController memberTextController = TextEditingController();
  TextEditingController recruitTextController = TextEditingController();
  TextEditingController placeTextController = TextEditingController();
  TextEditingController etcTextController = TextEditingController();



  void onTapRegisterButton() {
    Get.dialog(BringDialog.twoButton(
      title: '소중한 사업 아이디어를 등할까요?',
      // desc: '소중한 사업 아이디어를 등록하시겠습니까?',
      firstButtonText: '등록할래요!',
      onPressFirstButton: () {
        Get.back();
        Get.back();
      },
      secondButtonText: '잠시만요.',
      onPressSecondButton: () {
        Get.back();
      },
    ));
  }

  void onTapBackButton() {
    Get.dialog(BringDialog.twoButton(
      title: '작성을 취소할까요?',
      // desc: '작성을 취소하시겠어요?',
      firstButtonText: '취소할래요!',
      onPressFirstButton: () {
        Get.back();
        Get.back();
      },
      secondButtonText: '잠시만요.',
      onPressSecondButton: () {
        Get.back();
      },
    ));
  }
}
