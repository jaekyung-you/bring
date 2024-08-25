import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/filter_widget.dart';
import '../../const/app_config.dart';
import '../../const/bring_color.dart';
import '../controllers/funding_reqeust_main_controller.dart';
import '../widgets/funding_request_list_item.dart';
import '../widgets/funding_request_write_button.dart';

class FundingRequestMainScreen extends StatefulWidget {
  const FundingRequestMainScreen({super.key});

  @override
  State<FundingRequestMainScreen> createState() => _FundingRequestMainScreenState();
}

class _FundingRequestMainScreenState extends State<FundingRequestMainScreen> {
  FundingRequestMainController controller = Get.put(FundingRequestMainController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FundingRequestWriteButton(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.symmetric(vertical: AppConfig.contentPadding, horizontal: AppConfig.innerPadding),
              child: Text(
                '투자 구해요',
                style: TextStyle(fontWeight: FontWeight.w700, color: BringColor.primaryNavy, fontSize: 24),
              ),
            ),
            FilterWidget(filterList: controller.filterList, selectedFilter: controller.selectedFilter),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppConfig.innerPadding),
                child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: 10,
                    separatorBuilder: (context, index) {
                      return const SizedBox(height: AppConfig.innerPadding);
                    },
                    itemBuilder: (context, index) {
                      return FilterRequestListItem();
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
