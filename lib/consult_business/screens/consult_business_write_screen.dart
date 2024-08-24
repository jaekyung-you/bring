import 'package:bring/common/bring_round_button.dart';
import 'package:bring/common/bring_header.dart';
import 'package:bring/const/bring_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../common/bring_botom_sheet.dart';
import '../../common/bring_textfield.dart';
import '../../common/bring_textformfield.dart';
import '../../const/app_config.dart';
import '../controllers/consult_business_write_controller.dart';

class ConsultBusinessWriteScreen extends StatefulWidget {
  const ConsultBusinessWriteScreen({super.key});

  @override
  State<ConsultBusinessWriteScreen> createState() => _ConsultBusinessWriteScreenState();
}

class _ConsultBusinessWriteScreenState extends State<ConsultBusinessWriteScreen> {
  final ConsultBusinessWriteController controller = Get.put(ConsultBusinessWriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                        const BringTextField(
                          titleText: '제목',
                          hintText: '제목을 입력해주세요 (20자 제한)',
                          maxLength: 20,
                        ),
                        const SizedBox(height: AppConfig.innerPadding),
                        InkWell(
                          onTap: () {
                            int selectedIndex = 0;
                            int initialIndex = controller.categoryList.indexOf(controller.selectedCategory.value);
                            final FixedExtentScrollController pickerController =
                                FixedExtentScrollController(initialItem: initialIndex); // 초기 인덱스 설정

                            Get.bottomSheet(
                              BringBottomSheet(
                                title: '바텀시트 타이틀',
                                buttonText: '확인',
                                content: SizedBox(
                                  height: 150,
                                  width: Get.width,
                                  child: CupertinoPicker(
                                      scrollController: pickerController,
                                      itemExtent: 40,
                                      onSelectedItemChanged: (int index) {
                                        selectedIndex = index;
                                      },
                                      children: controller.categoryList
                                          .map((item) => Center(
                                                child: Text(
                                                  item.title,
                                                  style: TextStyle(fontSize: 14.sp),
                                                ),
                                              ))
                                          .toList()),
                                ),
                                onPressed: () {
                                  controller.selectedCategory.value = controller.categoryList[selectedIndex];
                                  print(controller.selectedCategory.value);
                                  Get.back();
                                },
                              ),
                            );
                          },
                          child: Container(
                            height: 56,
                            decoration: BoxDecoration(
                                border: Border.all(color: BringColor.grey01),
                                borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: AppConfig.contentPadding),
                              child: Obx(() {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      controller.selectedCategory.value.title.isNotEmpty
                                          ? controller.selectedCategory.value.title
                                          : '카테고리 선택',
                                      style: TextStyle(
                                          color: controller.selectedCategory.value.title.isNotEmpty ? Colors.black : BringColor.grey02,
                                          fontSize: 16),
                                    ),
                                    const Icon(Icons.arrow_drop_down_outlined)
                                  ],
                                );
                              }),
                            ),
                          ),
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
                              border: Border.all(color: BringColor.grey01),
                              borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain)),
                        ),
                        const SizedBox(height: AppConfig.innerPadding),
                        BringRoundButton(
                          buttonText: '등록하기',
                          onPressed: () {
                            controller.onTapRegisterButton();
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
      ),
    );
  }
}
