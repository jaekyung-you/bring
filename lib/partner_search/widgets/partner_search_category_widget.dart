import 'package:bring/const/app_config.dart';
import 'package:bring/const/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import '../../routes/bring_path.dart';

class PartnerSearchCategoryWidget extends StatelessWidget {
  const PartnerSearchCategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppConfig.contentPadding),
          child: Text(
            '사업 카테고리',
            style: TextStyle(fontWeight: FontWeight.w700, color: BringColor.primaryNavy, fontSize: 24),
          ),
        ),
        const SizedBox(height: 8),
        GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: AppConfig.contentPadding,
              crossAxisSpacing: AppConfig.contentPadding,
            ),
            itemCount: 9,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.toNamed(BringPath.PARTNER_SEARCH_CATEGORY, arguments: {'category': index.toString()});
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain),
                    color: BringColor.primaryGrey,
                  ),
                  child: Text(
                    'Category ${index}',
                    style: TextStyle(
                      color: BringColor.primaryNavy,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              );
            }),
      ],
    );
  }
}
