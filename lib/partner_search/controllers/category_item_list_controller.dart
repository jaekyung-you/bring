import 'package:get/get.dart';

class CategoryItemListController extends GetxController {
  Rx<String> category = ''.obs;

  @override
  void onInit() {
    super.onInit();
    category.value = Get.arguments['category'];
  }
}