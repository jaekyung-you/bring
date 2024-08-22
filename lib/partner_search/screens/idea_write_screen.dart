import 'package:bring/common/bring_header.dart';
import 'package:flutter/material.dart';

import '../../common/bring_textfield.dart';
import '../../common/bring_textformfield.dart';
import '../../const/app_config.dart';

class IdeaWriteScreen extends StatelessWidget {
  const IdeaWriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BringHeader(title: '아이디어 작성'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppConfig.innerPadding),
              child: Column(
                children: [
                  BringTextField(
                    titleText: '제목',
                    hintText: '제목을 입력해주세요 (20자 제한)',
                    maxLenth: 20,
                  ),
                  const SizedBox(height: AppConfig.contentPadding),
                  const SizedBox(height: AppConfig.contentPadding),
                  BringTextformfield(
                    titleText: '프로젝트 설명',
                    hintText: '프로젝트에 대해 설명해주세요 (200자 제한)',
                    maxLenth: 200,
                  ),
                  const SizedBox(height: AppConfig.contentPadding),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
