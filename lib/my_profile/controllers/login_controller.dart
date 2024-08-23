import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:get/get.dart';

import '../../const/enum/login_type.dart';
import '../../session.dart';

class LoginController extends GetxController {
  // 카카오 로그인

  // 구글 로그인

  // 네이버 로그인
  // todo: 어플리케이션 아이콘 등록하고, 네이버 개발 검수 받아야함
  Future<void> loginWithNaver() async {
    NaverLoginResult res = await FlutterNaverLogin.logIn();
    print(res.accessToken);
    print(res.account);
  }

  Future<void> _logoutNaver() async {
    NaverLoginResult res = await FlutterNaverLogin.logOut();
    print("네이버 로그아웃 성공: $res");
  }

  Future<void> onTapLogout() async {
    switch (Session().loginType) {
      case LoginType.kakao:
      case LoginType.google:
      case LoginType.apple:
      case LoginType.naver:
        await _logoutNaver();
      case LoginType.none:
        break;
    }

    // todo: 화면전환
  }
}
