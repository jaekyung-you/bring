import 'package:bring/common/bring_header.dart';
import 'package:flutter/material.dart';

class IdeaDetailScreen extends StatelessWidget {
  const IdeaDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            BringHeader(title: '상세화면')
            // 이미지 페이징뷰

            // 제목

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
