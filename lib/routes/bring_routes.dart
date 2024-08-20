import 'package:bring/main.dart';
import 'package:bring/routes/bring_path.dart';
import 'package:get/get.dart';

import '../partner_search/screens/category_item_list_screen.dart';
import '../partner_search/screens/realtime_ideal_list_screen.dart';

class BringRoutes {
  BringRoutes._privateConstructor();

  static final _instance = BringRoutes._privateConstructor();

  factory BringRoutes() {
    return _instance;
  }

  static final routes = [
    GetPage(name: BringPath.HOME, page: () => const MyHomePage()),

    // todo: 정의 필요
    GetPage(name: BringPath.PARTNER_SEARCH, page: () => const MyHomePage()),
    GetPage(name: BringPath.PARTNER_SEARCH_CATEGORY, page: () => const CategoryItemListScreen()),
    GetPage(name: BringPath.PARTNER_SEARCH_REALTIME_IDEA, page: () => const RealtimeIdealListScreen()),
    GetPage(name: BringPath.IDEAL_DETAIL, page: () => const MyHomePage()),
  ];
}