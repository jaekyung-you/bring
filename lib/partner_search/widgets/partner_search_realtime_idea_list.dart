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
          child: Text(
            '실시간 아이디어',
            style: TextStyle(fontWeight: FontWeight.w700, color: BringColor.primaryNavy, fontSize: 24),
          ),
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 10,
            separatorBuilder: (context, index) {
              return SizedBox(height: 8);
            },
            itemBuilder: (context, index) {
              return Container(
                height: 80,
                decoration: BoxDecoration(
                  color: BringColor.primaryGrey,
                  borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain),
                ),
                child: Text(
                  '실시간 아이디어 ${index}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: BringColor.primaryNavy),
                ),
              );
            })
      ],
    );
  }
}
