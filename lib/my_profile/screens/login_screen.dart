import 'package:bring/common/bouncing_widget.dart';
import 'package:bring/const/app_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('로그인이 필요해요'),
            const SizedBox(height: AppConfig.innerPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kakaoLoginButton(),
                const SizedBox(width: AppConfig.contentPadding),
                naverLoginButton(),
                const SizedBox(width: AppConfig.contentPadding),
                googleLoginButton(),
                const SizedBox(width: AppConfig.contentPadding),
                if (GetPlatform.isIOS) appleLoginButton(),
              ],
            ),
            const SizedBox(height: AppConfig.innerPadding),
            Text('카카오 고객센터 문의하기 > '),
          ],
        ),
      ),
    );
  }

  Widget kakaoLoginButton() {
    return BouncingWidget(
      onPressed: () {},
      child: SizedBox(
        width: 40,
        height: 40,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/images/kakao_login_icon_bg.png', width: 40),
            Image.asset('assets/images/kakao_login_icon_fg.png', width: 20),
          ],
        ),
      ),
    );
  }

  Widget googleLoginButton() {
    return BouncingWidget(
      onPressed: () {},
      child: Container(
        width: 40,
        height: 40,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppConfig.borderRadiusSub),
        ),
        child: Image.asset('assets/images/google_login_icon.png'),
      ),
    );
  }

  Widget appleLoginButton() {
    return BouncingWidget(
      onPressed: () {},
      child: Image.asset('assets/images/apple_login_icon.png', width: 40),
    );
  }

  Widget naverLoginButton() {
    return BouncingWidget(
      onPressed: () {
        controller.loginWithNaver();
      },
      child: Image.asset('assets/images/naver_login_icon.png', width: 40),
    );
  }
}
