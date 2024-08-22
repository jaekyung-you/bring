import 'package:bring/common/bouncing_widget.dart';
import 'package:bring/const/app_config.dart';
import 'package:flutter/material.dart';
import '../../const/theme.dart';

class MyProfileMainScreen extends StatefulWidget {
  const MyProfileMainScreen({super.key});

  @override
  State<MyProfileMainScreen> createState() => _MyProfileMainScreenState();
}

class _MyProfileMainScreenState extends State<MyProfileMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppConfig.innerPadding),
          child: Column(
            children: [
              Text('내 닉네임'),
              Text('내 사진'),
              editMyProfileButton(),
              Text('나의 포인트'),
              Text('내 등급'), // 애니메이션 활용
              Text('내가 투자한 건수'),
              Text('내가 쓴 글'),
              Text('내가 댓글단 글'),
              Text('대화 중인 상대'),
              settingItem(
                  title: '로그아웃',
                  onPress: () {
                    print("로그아웃 클릭");
                  }),
              Text('회원탈퇴'),
              Text('앱 정보'),
            ],
          ),
        ),
      ),
    );
  }

  Widget editMyProfileButton() {
    return BouncingWidget(
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: AppConfig.contentPadding),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppConfig.borderRadiusSub),
            border: Border.all(color: BringColor.primaryNavy),
          ),
          child: Text(
            '프로필 수정하기',
            style: TextStyle(color: BringColor.primaryNavy, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        onPressed: () {});
  }

  Widget settingItem({required String title, required Function onPress}) {
    return BouncingWidget(
        child: SizedBox(
          height: 52,
          child: Row(
            children: [
              Expanded(child: Text(title)),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
        onPressed: onPress);
  }
}
