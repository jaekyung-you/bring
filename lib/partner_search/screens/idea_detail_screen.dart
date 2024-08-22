import 'package:bring/common/bring_header.dart';
import 'package:bring/const/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/base_round_button.dart';
import '../../common/divider_widget.dart';
import '../../common/image_page_view.dart';
import '../../const/app_config.dart';
import '../../routes/bring_path.dart';
import '../controllers/item_detail_controller.dart';

class IdeaDetailScreen extends StatelessWidget {
  const IdeaDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ItemDetailController controller = Get.put(ItemDetailController());

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                const BringHeader(title: '상세화면'),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // 이미지 페이징뷰
                        ImagePageView(imageList: controller.imageList, height: 300),
                        // 제목
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: AppConfig.innerPadding),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: AppConfig.contentPadding,
                              ),
                              Text(
                                '타이틀타이틀타이틀타이틀타이틀타이틀타이틀',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24,
                                ),
                              ),
                              const SizedBox(
                                height: AppConfig.contentPadding,
                              ),
                              Row(
                                children: [
                                  Text('찜 n |'),
                                  const SizedBox(width: 4),
                                  Text('채팅 n |'),
                                  const SizedBox(width: 4),
                                  Text('카테고리 |'),
                                  const Spacer(),
                                  Text('2024-08-21'),
                                ],
                              ),

                              DividerWidget(),
                              // 비전, 목표
                              subTitleWidget(image: '', title: '우리 프로젝트에요'),
                              Text(
                                '우리 프로젝트 블라블라_우리 프로젝트 블라블라_우리 프로젝트 블라블라_우리 프로젝트 블라블라_우리 프로젝트 블라블라_우리 프로젝트 블라블라_',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),

                              DividerWidget(),
                              // 비전, 목표
                              subTitleWidget(image: '', title: '우리 비전이에요'),
                              Text(
                                '비전: 비전 블라블라_블라_비전 블라블라_블라_비전 블라블라_블라_비전 블라블라_블라_비전 블라블라_블라_비전 블라블라_블라_비전 블라블라_블라_',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),

                              DividerWidget(),
                              // 장소
                              subTitleWidget(image: '', title: '현재 진행된 사항이에요'),
                              Text(
                                '현재 이런거 하고 있음 블라블라 현재 이런거 하고 있음 블라블라 현재 이런거 하고 있음 블라블라 현재 이런거 하고 있음 블라블라',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),

                              DividerWidget(),
                              // 팀원 구성
                              subTitleWidget(image: '', title: '우리 구성원이에요'),
                              Text(
                                '팀원 구성: 팀원 블라블라_팀원 블라블라_팀원 블라블라_팀원 블라블라_팀원 블라블라_팀원 블라블라_',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),

                              DividerWidget(),

                              // 이런 사람 구해요
                              subTitleWidget(image: '', title: '이런 분 구해요'),
                              Text(
                                '이런 사람 구해요: 팀원 블라블라_팀원 블라블라_팀원 블라블라_팀원 블라블라_팀원 블라블라_팀원 블라블라_',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              DividerWidget(),
                              // 장소
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  subTitleWidget(image: '', title: '우리 장소에요'),
                                  Spacer(),
                                  InkWell(
                                    onTap: () {
                                      // todo: 구글지도 연결
                                    },
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        size: 16,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                '장소: 강남구 선릉로 402 104호, 패스트파이브',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),

                              DividerWidget(),
                              // 장소
                              subTitleWidget(image: '', title: '기타 사항이에요'),
                              Text(
                                '기타 사항, 사진은 여기여기 기타 사항, 사진은 여기여기 기타 사항, 사진은 여기여기 기타 사항, 사진은 여기여기 ',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),

                              const SizedBox(height: 100),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // 플로팅 버튼: 채팅하기 + 찜
            Row(
              children: [
                const SizedBox(width: AppConfig.innerPadding),
                Expanded(
                    child: BaseRoundButton(
                        buttonText: '채팅하기', onPressed: () {}, buttonFgColor: Colors.white, buttonBgColor: BringColor.primaryNavy)),
                SizedBox(
                  height: 64,
                  width: 64,
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.heart_broken)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget subTitleWidget({required String image, required String title}) {
    return Row(
      children: [
        Container(
          color: Colors.blue,
          width: 32,
          height: 32,
        ),
        // Image.asset('assets/images/$image.png'),
        const SizedBox(width: AppConfig.contentPadding),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: BringColor.primaryNavy,
          ),
        )
      ],
    );
  }
}
