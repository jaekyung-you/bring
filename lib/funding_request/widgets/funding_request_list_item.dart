import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/bouncing_widget.dart';
import '../../const/app_config.dart';
import '../../const/bring_color.dart';
import '../../routes/bring_path.dart';
import '../../util/number_formatter.dart';

class FilterRequestListItem extends StatelessWidget {
  const FilterRequestListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
      onPressed: () {
        Get.toNamed(BringPath.FUNDING_REQUEST_DETAIL);
      },
      child: Container(
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
                Expanded(
                  child: Text(
                    '타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀타이틀',
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: BringColor.primaryNavy,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Text(
                  '08-21 17:30',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: BringColor.grey01,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConfig.contentPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    '내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용',
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: BringColor.grey01,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      NumberFormatter().numberWithComma(10000),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: BringColor.grey01,
                      ),
                    ),
                    Text(
                      ' / ',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      NumberFormatter().numberWithComma(5000000),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: BringColor.grey01,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
