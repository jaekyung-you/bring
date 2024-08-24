import 'package:get/get.dart';
import '../../common/bring_dialog.dart';
import '../../data/response/consult_business_filter.dart';

class ConsultBusinessWriteController extends GetxController {
  RxList<ConsultBusinessFilter> categoryList = <ConsultBusinessFilter>[].obs;
  Rx<ConsultBusinessFilter> selectedCategory = ConsultBusinessFilter(title: '', code: '').obs;

  @override
  void onInit() {
    super.onInit();
    // todo: 서버에서 fetch
    categoryList.addAll([
      ConsultBusinessFilter(title: '고민상담', code: 'CB01'),
      ConsultBusinessFilter(title: '업황', code: 'CB02'),
      ConsultBusinessFilter(title: '팁', code: 'CB03'),
      ConsultBusinessFilter(title: '잡담', code: 'CB04'),
    ]);
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
