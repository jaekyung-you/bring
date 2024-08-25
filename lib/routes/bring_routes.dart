import 'package:bring/funding_request/screens/funding_request_detail_screen.dart';
import 'package:bring/funding_request/screens/funding_request_main_screen.dart';
import 'package:bring/funding_request/screens/funding_request_write_screen.dart';
import 'package:bring/main.dart';
import 'package:bring/my_profile/screens/login_screen.dart';
import 'package:bring/my_profile/screens/my_profile_edit_screen.dart';
import 'package:bring/my_profile/screens/my_profile_main_screen.dart';
import 'package:bring/routes/bring_path.dart';
import 'package:get/get.dart';

import '../consult_business/screens/consult_business_detail_screen.dart';
import '../consult_business/screens/consult_business_main_screen.dart';
import '../consult_business/screens/consult_business_write_screen.dart';
import '../partner_search/screens/category_item_list_screen.dart';
import '../partner_search/screens/idea_detail_screen.dart';
import '../partner_search/screens/idea_write_screen.dart';
import '../partner_search/screens/realtime_idea_list_screen.dart';

class BringRoutes {
  BringRoutes._privateConstructor();

  static final _instance = BringRoutes._privateConstructor();

  factory BringRoutes() {
    return _instance;
  }

  static final routes = [
    GetPage(name: BringPath.HOME, page: () => const MyHomePage()),

    GetPage(name: BringPath.PARTNER_SEARCH, page: () => const MyHomePage()),
    GetPage(name: BringPath.PARTNER_SEARCH_CATEGORY, page: () => const CategoryItemListScreen()),
    GetPage(name: BringPath.PARTNER_SEARCH_REALTIME_IDEA, page: () => const RealtimeIdeaListScreen()),
    GetPage(name: BringPath.BUSINESS_IDEA_DETAIL, page: () => const IdeaDetailScreen()),
    GetPage(name: BringPath.BUSINESS_IDEA_WRITE, page: () => const IdeaWriteScreen()),

    GetPage(name: BringPath.CONSULT_BUSINESS, page: () => const ConsultBusinessMainScreen()),
    GetPage(name: BringPath.CONSULT_BUSINESS_DETAIL, page: () => const ConsultBusinessDetailScreen()),
    GetPage(name: BringPath.CONSULT_BUSINESS_WRITE, page: () => const ConsultBusinessWriteScreen()),

    GetPage(name: BringPath.FUNDING_REQUEST, page: () => const FundingRequestMainScreen()),
    GetPage(name: BringPath.FUNDING_REQUEST_DETAIL, page: () => const FundingRequestDetailScreen()),
    GetPage(name: BringPath.FUNDING_REQUEST_WRITE, page: () => const FundingRequestWriteScreen()),

    GetPage(name: BringPath.LOGIN, page: () => const LoginScreen()),

    GetPage(name: BringPath.MY_PROFILE, page: () => const MyProfileMainScreen()),
    GetPage(name: BringPath.MY_PROFILE_EDIT, page: () => const MyProfileEditScreen()),
  ];
}