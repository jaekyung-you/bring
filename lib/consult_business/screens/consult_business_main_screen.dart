import 'package:bring/common/bring_header.dart';
import 'package:flutter/material.dart';

import '../../const/app_config.dart';
import '../../const/bring_color.dart';
import '../widgets/consult_business_filter_widget.dart';
import '../widgets/consult_business_list_item.dart';
import '../widgets/consult_business_write_button.dart';

class ConsultBusinessMainScreen extends StatefulWidget {
  const ConsultBusinessMainScreen({super.key});

  @override
  State<ConsultBusinessMainScreen> createState() => _ConsultBusinessMainScreenState();
}

class _ConsultBusinessMainScreenState extends State<ConsultBusinessMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ConsultBusinessWriteButton(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: const EdgeInsets.symmetric(vertical: AppConfig.contentPadding, horizontal: AppConfig.innerPadding),
              child: Text(
                '사업 Q&A',
                style: TextStyle(fontWeight: FontWeight.w700, color: BringColor.primaryNavy, fontSize: 24),
              ),
            ),
            const ConsultBusinessFilterWidget(),
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
                      return ConsultBusinessListItem();
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
