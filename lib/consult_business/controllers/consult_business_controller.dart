import 'package:bring/data/response/consult_business_filter.dart';
import 'package:get/get.dart';

class ConsultBusinessController extends GetxController {
  RxList<ConsultBusinessFilter> filterList = <ConsultBusinessFilter>[].obs;
  Rx<ConsultBusinessFilter> selectedFilter = ConsultBusinessFilter(title: '', code: '').obs;

  @override
  void onInit() {
    super.onInit();
    filterList.addAll([
      ConsultBusinessFilter(title: '고민상담', code: 'CB01'),
      ConsultBusinessFilter(title: '업황', code: 'CB02'),
      ConsultBusinessFilter(title: '팁', code: 'CB03'),
      ConsultBusinessFilter(title: '잡담', code: 'CB04'),
    ]);
  }
}
