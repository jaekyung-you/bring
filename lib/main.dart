import 'package:bring/const/theme.dart';
import 'package:bring/consult_business/screens/consult_business_main_screen.dart';
import 'package:bring/funding_request/screens/funding_request_main_screen.dart';
import 'package:bring/my_profile/screens/login_screen.dart';
import 'package:bring/my_profile/screens/my_profile_main_screen.dart';
import 'package:bring/partner_search/screens/partner_search_main_screen.dart';
import 'package:bring/routes/bring_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      child: GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), useMaterial3: true, fontFamily: "Pretendard"),
        home: const MyHomePage(),
        getPages: BringRoutes.routes,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex = 0;

  static const List<Widget> screens = [
    PartnerSearchMainScreen(),
    ConsultBusinessMainScreen(),
    FundingRequestMainScreen(),
    // LoginScreen(),
    MyProfileMainScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavBar(),
      body: screens.elementAt(selectedIndex),
    );
  }

  Widget bottomNavBar() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: BringColor.grey02,
        selectedItemColor: BringColor.primaryNavy,
        selectedIconTheme: const IconThemeData(color: BringColor.primaryNavy),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        onTap: _onItemTapped,
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.handshake), label: "팀원 구해요"),
          BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: "자문 구해요"),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: "투자 구해요"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded), label: "마이 프로필"),
        ]);
  }
}
