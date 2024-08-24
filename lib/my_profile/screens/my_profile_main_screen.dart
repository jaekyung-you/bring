import 'package:bring/common/bouncing_widget.dart';
import 'package:bring/const/app_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:styled_text/styled_text.dart';
import '../../common/bring_badge.dart';
import '../../common/bring_profile_header.dart';
import '../../const/bring_color.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: [
              BringProfileHeader(
                imageUrl: 'https://picsum.photos/id/237/200/300',
                nickname: '닉네임이에요',
                width: 80,
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppConfig.innerPadding),
                child: Column(
                  children: [
                    editMyProfileButton(),
                    // 추후 등급제, 멤버쉽, 구독 기능
                    // Text('나의 포인트'),
                    // Text('내 등급'), // 애니메이션 활용
                    const SizedBox(height: AppConfig.innerPadding),
                    Row(
                      children: [
                        getContent('나의 투자', 5),
                        Container(
                          height: 50,
                          width: 1.0,
                          color: Colors.black,
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: VerticalDivider(thickness: 1.0),
                        ),
                        getContent('나의 글', 10),
                        Container(
                          height: 50,
                          width: 1.0,
                          color: Colors.black,
                          margin: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: VerticalDivider(thickness: 1.0),
                        ),
                        getContent('나의 댓글', 2),
                      ],
                    ),
                    const SizedBox(height: AppConfig.innerPadding),
                    Text('대화 중인 상대'),
                    settingItem(
                        title: '로그아웃',
                        onPress: () {
                          print("로그아웃 클릭");
                        }),
                    settingItem(
                        title: '회원탈퇴',
                        onPress: () {
                          print("회원탈퇴 클릭");
                        }),
                    settingItem(
                        title: '앱 정보 v1.0.0',
                        badge: SizedBox(
                          height: 28,
                          child: BringBadge(
                            fgColor: Colors.pink,
                            bgColor: Colors.pink.withOpacity(0.2),
                            title: '업데이트',
                            fontSize: 12,
                            verticalPadding: 4,
                            horizontalPadding: 8,
                          ),
                        ),
                        onPress: () {
                          print("회원탈퇴 클릭");
                        }),
                  ],
                ),
              ),
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
          child: const Text(
            '프로필 수정하기',
            style: TextStyle(color: BringColor.primaryNavy, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
        onPressed: () {});
  }

  Widget settingItem({required String title, required Function onPress, Widget? badge}) {
    return BouncingWidget(
        child: SizedBox(
          height: 52,
          child: Row(
            children: [
              Expanded(child: Text(title)),
              if (badge != null)
                Padding(
                  padding: const EdgeInsets.only(right: AppConfig.contentPadding),
                  child: badge,
                ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
              ),
            ],
          ),
        ),
        onPressed: onPress);
  }

  Widget getContent(title, count) => Expanded(
        child: BouncingWidget(
          onPressed: () {},
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16.sp),
              ),
              const SizedBox(height: 4),
              StyledText(
                style: TextStyle(fontSize: 14.sp),
                text: '<b>$count</b>건',
                tags: {
                  'b': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp)),
                },
              )
            ],
          ),
        ),
      );
}
