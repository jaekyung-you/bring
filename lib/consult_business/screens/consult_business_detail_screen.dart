import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/bring_header.dart';
import '../../common/bring_profile_header.dart';
import '../../common/bring_reply_textfield.dart';
import '../../common/bring_reply_widget.dart';
import '../../common/bring_rereply_widget.dart';
import '../../common/divider_widget.dart';
import '../../const/app_config.dart';
import '../controllers/consult_business_detail_controller.dart';

class ConsultBusinessDetailScreen extends StatefulWidget {
  const ConsultBusinessDetailScreen({super.key});

  @override
  State<ConsultBusinessDetailScreen> createState() => _ConsultBusinessDetailScreenState();
}

class _ConsultBusinessDetailScreenState extends State<ConsultBusinessDetailScreen> {
  final ConsultBusinessDetailController controller = Get.put(ConsultBusinessDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BringHeader(
              title: '',
              rightButton: InkWell(
                child: Icon(
                  Icons.report,
                  size: 30,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
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
                          BringProfileHeader(
                            imageUrl: 'https://picsum.photos/id/237/200/300',
                            nickname: '닉네임이에요',
                            width: 48,
                            height: 52,
                          ),
                          DividerWidget(),
                          Obx(() {
                            return Container(
                              constraints: BoxConstraints(minHeight: 200),
                              child: Text(controller.content.value),
                            );
                          }),
                          DividerWidget(),
                          Text(
                            '댓글 n개',
                            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          const SizedBox(height: AppConfig.innerPadding),
                          ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: controller.testReplies.length,
                              itemBuilder: (context, index) {
                                return GetBuilder<ConsultBusinessDetailController>(builder: (controller) {
                                  return BringReplyWidget(
                                    reply: controller.testReplies[index],
                                    onTapReply: () {
                                      controller.onTapReply(index);
                                    },
                                    onTapLike: () {
                                      controller.toggleLikeButton(controller.testReplies[index].id);
                                    },
                                  );
                                });
                              })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Obx(() {
              return controller.showReplyField.value
                  ? BringRereplyWidget(
                      nickname: controller.replyNickname.value,
                      content: controller.replyContent.value,
                      onTapClose: () {
                        controller.showReplyField.value = false;
                      },
                    )
                  : const SizedBox.shrink();
            }),
            BringReplyTextField(
              controller: controller.replyTextController,
              hintText: '댓글을 달아보세요.',
              onTapRegister: () {},
            ),
          ],
        ),
      ),
    );
  }
}
