import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../common/bring_dialog.dart';

class FundingRequestWriteController extends GetxController {
  RxBool enableButton = false.obs;
  TextEditingController titleTextController = TextEditingController();
  TextEditingController contentTextController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    titleTextController.addListener(_checkEnableButton);
    contentTextController.addListener(_checkEnableButton);
  }


  void _checkEnableButton() {
    enableButton.value = titleTextController.text.trim().isNotEmpty &&
        contentTextController.text.trim().isNotEmpty;
  }

  void onTapRegisterButton() {
    Get.dialog(BringDialog.twoButton(
      title: '투자글을 등록할까요?',
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