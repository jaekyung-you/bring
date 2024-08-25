import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/bring_header.dart';
import '../../common/bring_round_button.dart';
import '../../common/bring_textfield.dart';
import '../../common/bring_textformfield.dart';
import '../../const/app_config.dart';
import '../../const/bring_color.dart';
import '../controllers/funding_request_write_controller.dart';

class FundingRequestWriteScreen extends StatefulWidget {
  const FundingRequestWriteScreen({super.key});

  @override
  State<FundingRequestWriteScreen> createState() => _FundingRequestWriteScreenState();
}

class _FundingRequestWriteScreenState extends State<FundingRequestWriteScreen> {
  final FundingRequestWriteController controller = Get.put(FundingRequestWriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            BringHeader(
              title: '질문 작성',
              rightButton: TextButton(
                onPressed: () {
                  controller.onTapRegisterButton();
                },
                child: Text(
                  '등록',
                  style: TextStyle(fontSize: 16),
                ),
              ),
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
                      const BringTextField(
                        titleText: '제목',
                        hintText: '제목을 입력해주세요 (20자 제한)',
                        maxLength: 20,
                      ),
                      const SizedBox(height: AppConfig.innerPadding),
                      BringTextformfield(
                        titleText: '내용',
                        hintText: '궁금한 것에 대해 자유롭게 작성해주세요 (200자 제한)\n업황, 예산, 경험담 등에 대해 나눠보세요.',
                        maxLenth: 200,
                      ),
                      const SizedBox(height: AppConfig.innerPadding),
                      BringTextformfield(
                        titleText: '내용',
                        hintText: '궁금한 것에 대해 자유롭게 작성해주세요 (200자 제한)\n업황, 예산, 경험담 등에 대해 나눠보세요.',
                        maxLenth: 200,
                      ),
                      const SizedBox(height: AppConfig.innerPadding),
                      Text('이미지 첨부 기능'),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            border: Border.all(color: BringColor.grey01), borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain)),
                      ),
                      const SizedBox(height: AppConfig.innerPadding),
                      BringRoundButton(
                        buttonText: '등록하기',
                        onPressed: () {
                          // controller.onTapRegisterButton();
                        },
                        buttonBgColor: BringColor.primaryNavy,
                        buttonFgColor: Colors.white,
                      ),
                      const SizedBox(height: AppConfig.innerPadding * 2),
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
