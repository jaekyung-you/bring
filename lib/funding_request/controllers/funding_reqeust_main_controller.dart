import 'package:get/get.dart';

import '../../data/response/filter_item.dart';

class FundingRequestMainController extends GetxController {
  RxList<FilterItem> filterList = <FilterItem>[].obs;
  Rx<FilterItem> selectedFilter = FilterItem(title: '', code: '').obs;

  @override
  void onInit() {
    super.onInit();
    filterList.addAll([
      FilterItem(title: '인기순', code: 'FR01'),
      FilterItem(title: '최신순', code: 'FR02'),
    ]);
  }
}
