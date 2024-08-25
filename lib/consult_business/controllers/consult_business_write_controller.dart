import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../common/bring_dialog.dart';
import '../../data/response/filter_item.dart';

class ConsultBusinessWriteController extends GetxController {
  RxList<FilterItem> categoryList = <FilterItem>[].obs;
  Rx<FilterItem> selectedCategory = FilterItem(title: '', code: '').obs;
  TextEditingController titleTextController = TextEditingController();
  TextEditingController contentTextController = TextEditingController();

  RxBool enableButton = false.obs;

  @override
  void onInit() {
    super.onInit();
    // todo: 서버에서 fetch
    categoryList.addAll([
      FilterItem(title: '고민상담', code: 'CB01'),
      FilterItem(title: '업황', code: 'CB02'),
      FilterItem(title: '팁', code: 'CB03'),
      FilterItem(title: '잡담', code: 'CB04'),
    ]);
    titleTextController.addListener(checkEnableButton);
    contentTextController.addListener(checkEnableButton);
  }

  void checkEnableButton() {
    enableButton.value = titleTextController.text.trim().isNotEmpty &&
        contentTextController.text.trim().isNotEmpty &&
        selectedCategory.value.title.isNotEmpty;
  }

  void onTapRegisterButton() {
    Get.dialog(BringDialog.twoButton(
      title: '질문글을 등록할까요?',
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
