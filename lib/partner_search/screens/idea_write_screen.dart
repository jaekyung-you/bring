import 'package:bring/common/bring_header.dart';
import 'package:bring/partner_search/controllers/idea_write_controller.dart';
import 'package:flutter/material.dart';
import '../../common/bring_textfield.dart';
import '../../common/bring_textformfield.dart';
import '../../const/app_config.dart';

class IdeaWriteScreen extends StatefulWidget {
  const IdeaWriteScreen({super.key});

  @override
  State<IdeaWriteScreen> createState() => _IdeaWriteScreenState();
}

class _IdeaWriteScreenState extends State<IdeaWriteScreen> {
  final IdeaWriteController controller = IdeaWriteController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BringHeader(
              title: '아이디어 작성',
              rightButton: TextButton(
                  onPressed: () {
                    controller.onTapRegisterButton();
                  },
                  child: Text(
                    '등록',
                    style: TextStyle(fontSize: 16),
                  )),
              onTapBackButton: () {
                controller.onTapBackButton();
              },
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppConfig.innerPadding),
                  child: Column(
                    children: [
                      const SizedBox(height: AppConfig.innerPadding),
                      BringTextField(
                        titleText: '제목',
                        hintText: '제목을 입력해주세요 (20자 제한)',
                        maxLenth: 20,
                      ),
                      const SizedBox(height: AppConfig.innerPadding),
                      BringTextformfield(
                        titleText: '프로젝트 설명',
                        hintText: '프로젝트에 대해 설명해주세요 (200자 제한)',
                        maxLenth: 200,
                      ),
                      const SizedBox(height: AppConfig.innerPadding),
                      BringTextformfield(
                        titleText: '비전/목표 설명',
                        hintText: '비전/목표에 대해 설명해주세요 (200자 제한)',
                        maxLenth: 200,
                      ),
                      const SizedBox(height: AppConfig.innerPadding),
                      BringTextformfield(
                        titleText: '진행된 사항',
                        hintText: '진행된 사항에 대해 설명해주세요 (200자 제한)',
                        maxLenth: 200,
                      ),
                      const SizedBox(height: AppConfig.innerPadding),
                      BringTextformfield(
                        titleText: '구성원 설명',
                        hintText: '구성원에 대해 설명해주세요 (100자 제한)',
                        maxLenth: 200,
                      ),
                      const SizedBox(height: AppConfig.innerPadding),
                      BringTextformfield(
                        titleText: '구하는 팀원',
                        hintText: '구하는 팀원에 대해 설명해주세요 (200자 제한)',
                        maxLenth: 200,
                      ),
                      const SizedBox(height: AppConfig.innerPadding),
                      BringTextField(
                        titleText: '장소',
                        hintText: '미팅 장소(사무실)에 대해 설명해주세요 (20자 제한)',
                        maxLenth: 20,
                      ),
                      const SizedBox(height: AppConfig.innerPadding),
                      BringTextformfield(
                        titleText: '기타 사항',
                        hintText: '부가적인 설명이 있다면 추가해주세요 (200자 제한)',
                        maxLenth: 200,
                      ),
                      const SizedBox(height: AppConfig.innerPadding),
                      Text('이미지 첨부 기능'),
                      Text('등록하기'),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
