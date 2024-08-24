import 'package:bring/common/circle_image_widget.dart';
import 'package:bring/const/app_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BringReplyWidget extends StatelessWidget {
  final bool isRereply; // 대댓글

  const BringReplyWidget({super.key, this.isRereply = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(vertical: AppConfig.contentPadding),
      color: Colors.blue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (isRereply == true)
            const SizedBox(width: AppConfig.innerPadding * 2),

          CircleImageWidget(imageUrl: '', width: 40),
          const SizedBox(width: AppConfig.contentPadding),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '닉네임이야',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                ),
                Center(
                  child: Text(
                    '댓글입니다. 댓글입니다. 댓글입니다. 댓글입니다. 댓글입니다. 댓글입니다. 댓글입니다. 댓글입니다.',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Row(
                  children: [
                    Spacer(),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Icon(Icons.reply),
                          const SizedBox(width: 4),
                          Icon(Icons.thumb_up_sharp),
                          const SizedBox(width: 4),
                          Text('10'),
                        ],
                      ),
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
}
