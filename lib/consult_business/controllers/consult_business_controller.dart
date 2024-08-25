import 'package:bring/data/response/filter_item.dart';
import 'package:get/get.dart';

import '../../common/bring_dialog.dart';

class ConsultBusinessController extends GetxController {
  RxList<FilterItem> filterList = <FilterItem>[].obs;
  Rx<FilterItem> selectedFilter = FilterItem(title: '', code: '').obs;

  @override
  void onInit() {
    super.onInit();
    filterList.addAll([
      FilterItem(title: '고민상담', code: 'CB01'),
      FilterItem(title: '업황', code: 'CB02'),
      FilterItem(title: '팁', code: 'CB03'),
      FilterItem(title: '잡담', code: 'CB04'),
    ]);
  }
}
