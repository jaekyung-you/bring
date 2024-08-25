import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/app_config.dart';
import '../const/bring_color.dart';

// 대댓글 기능
class BringRereplyWidget extends StatelessWidget {
  final String nickname;
  final String content;
  final Function onTapClose;

  const BringRereplyWidget({super.key, required this.nickname, required this.content, required this.onTapClose});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppConfig.innerPadding),
      color: Colors.white.withOpacity(0.5),
      width: Get.width,
      height: 52,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$nickname에게 답장',
                  style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
                const SizedBox(height: 4),
                Text(
                  content,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 12, color: BringColor.grey02),
                )
              ],
            ),
          ),
          SizedBox(
            height: 32,
            width: 32,
            child: InkWell(
              onTap: () => onTapClose(),
              child: const Icon(Icons.close),
            ),
          )
        ],
      ),
    );
  }
}
