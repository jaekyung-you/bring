import 'package:bring/partner_search/widgets/realtime_item.dart';
import 'package:bring/routes/bring_path.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
              const Text(
                '실시간 아이디어',
                style: TextStyle(fontWeight: FontWeight.w700, color: BringColor.primaryNavy, fontSize: 24),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Get.toNamed(BringPath.PARTNER_SEARCH_REALTIME_IDEA);
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 24,
                  color: BringColor.primaryNavy,
                ),
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
              return SizedBox(height: AppConfig.innerPadding);
            },
            itemBuilder: (context, index) {
              return RealtimeItem();
            })
      ],
    );
  }
}
