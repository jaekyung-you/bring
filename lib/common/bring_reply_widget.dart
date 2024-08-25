import 'package:bring/common/circle_image_widget.dart';
import 'package:bring/const/app_config.dart';
import 'package:bring/const/bring_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/response/reply_response.dart';

class BringReplyWidget extends StatelessWidget {
  final ReplyResponse reply;
  final Function onTapReply;
  final Function onTapLike;

  const BringReplyWidget({super.key, required this.reply, required this.onTapReply, required this.onTapLike});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(vertical: AppConfig.contentPadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (reply.isRereply == true) const SizedBox(width: AppConfig.innerPadding * 2),
          CircleImageWidget(imageUrl: reply.profileImage, width: 40),
          const SizedBox(width: AppConfig.contentPadding),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  reply.nickname,
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Text(
                  reply.content,
                  // textAlign: TextAlign.left,
                  style: const TextStyle(fontSize: 12,),
                ),
                Row(
                  children: [
                    const Spacer(),
                    Row(
                      children: [
                        replyButton(),
                        const SizedBox(width: AppConfig.contentPadding),
                        likeButton(),
                        const SizedBox(width: 4),
                        Text('${reply.likeCount}'),
                      ],
                    ),
                    const SizedBox(width: 4),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget replyButton() {
    return InkWell(
      onTap: () {
        // todo: 추후 해시태그 기능
        onTapReply();
      },
      child: Icon(
        Icons.reply,
        size: 20,
        color: BringColor.grey02,
      ),
    );
  }

  Widget likeButton() {
    return InkWell(
      onTap: () {
        onTapLike();
      },
      child: Icon(
        Icons.thumb_up_sharp,
        color: reply.isLiked ? BringColor.red : BringColor.grey02,
        size: 20,
      ),
    );
  }
}
