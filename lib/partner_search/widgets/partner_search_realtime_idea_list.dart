import 'package:flutter/material.dart';
import '../../const/app_config.dart';
import '../../const/theme.dart';

class PartnerSearchRealtimeIdeaList extends StatelessWidget {
  const PartnerSearchRealtimeIdeaList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppConfig.contentPadding),
          child: Row(
            children: [
              Text(
                '실시간 아이디어',
                style: TextStyle(fontWeight: FontWeight.w700, color: BringColor.primaryNavy, fontSize: 24),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 24,
                color: BringColor.primaryNavy,
              )
            ],
          ),
        ),
        const SizedBox(height: 8),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            separatorBuilder: (context, index) {
              return SizedBox(height: 8);
            },
            itemBuilder: (context, index) {
              return realTimeItem();
            })
      ],
    );
  }

  // Model
  Widget realTimeItem() {
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
