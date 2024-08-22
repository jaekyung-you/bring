import 'package:bring/const/app_config.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('로그인이 필요해요'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                kakaoLoginButton(),
                const SizedBox(width: AppConfig.contentPadding),
                googleLoginButton(),
                const SizedBox(width: AppConfig.contentPadding),
                appleLoginButton(),
                const SizedBox(width: AppConfig.contentPadding),
                naverLoginButton(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget kakaoLoginButton() {
    return Container(
      width: 40,
      height: 40,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/images/kakao_login_icon_bg.png', width: 40),
          Image.asset('assets/images/kakao_login_icon_fg.png', width: 20),
        ],
      ),
    );
  }

  Widget googleLoginButton() {
    return Container(
      width: 40,
      height: 40,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(AppConfig.borderRadiusSub),
      ),
      child: Image.asset('assets/images/google_login_icon.png'),
    );
  }

  Widget appleLoginButton() {
    return Image.asset('assets/images/apple_login_icon.png', width: 40);
  }

  Widget naverLoginButton() {
    return Image.asset('assets/images/naver_login_icon.png', width: 40);
  }
}
