import 'package:bring/common/bring_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/image_page_view.dart';
import '../controllers/item_detail_controller.dart';

class IdeaDetailScreen extends StatelessWidget {
  const IdeaDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ItemDetailController controller = Get.put(ItemDetailController());

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BringHeader(title: '상세화면'),
            // 이미지 페이징뷰
            ImagePageView(imageList: controller.imageList, height: 300),
            // 제목
            Text(
              '타이틀',
            )

            // 비전, 목표

            // 팀원 구성

            // 이런 사람 구해요

            // 장소

            // 연락처

            // 플로팅 버튼: 채팅하기 + 찜
          ],
        ),
      ),
    );
  }
}
