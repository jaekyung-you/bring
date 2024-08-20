import 'package:flutter/material.dart';

import '../../const/app_config.dart';
import '../../const/theme.dart';

class RealtimeItem extends StatelessWidget {
  const RealtimeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.all(AppConfig.contentPadding),
      decoration: BoxDecoration(
        color: BringColor.primaryGrey,
        borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain),
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '타이틀',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: BringColor.primaryNavy),
              ),
              Text(
                '날짜',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: BringColor.grey01,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '내용',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: BringColor.grey01),
              ),
              Text(
                '댓글',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: BringColor.grey01,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
