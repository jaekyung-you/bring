import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/bring_header.dart';
import '../../common/bring_profile_header.dart';
import '../../common/divider_widget.dart';
import '../../const/app_config.dart';
import '../controllers/funding_request_detail_controller.dart';

class FundingRequestDetailScreen extends StatefulWidget {
  const FundingRequestDetailScreen({super.key});

  @override
  State<FundingRequestDetailScreen> createState() => _FundingRequestDetailScreenState();
}

class _FundingRequestDetailScreenState extends State<FundingRequestDetailScreen> {
  final FundingRequestDetailController controller = Get.put(FundingRequestDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const BringHeader(
              title: '',
              rightButton: InkWell(
                child: Icon(
                  Icons.report,
                  size: 30,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: AppConfig.innerPadding),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: AppConfig.contentPadding,
                          ),
                          Text(
                            '타이틀타이틀타이틀타이틀타이틀타이틀타이틀',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                            ),
                          ),
                          const SizedBox(
                            height: AppConfig.contentPadding,
                          ),
                          BringProfileHeader(
                            imageUrl: 'https://picsum.photos/id/237/200/300',
                            nickname: '닉네임이에요',
                            width: 48,
                            height: 52,
                          ),
                          DividerWidget(),
                          Text(
                            '내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용내용',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
