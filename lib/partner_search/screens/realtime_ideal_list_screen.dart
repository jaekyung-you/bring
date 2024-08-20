import 'package:flutter/material.dart';
import '../../common/bring_header.dart';
import '../../const/app_config.dart';
import '../widgets/realtime_item.dart';

class RealtimeIdealListScreen extends StatelessWidget {
  const RealtimeIdealListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 32),
          const BringHeader(title: '실시간 아이디어'),
          // todo: 무한 스크롤 구현 필요
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
                    return RealtimeItem();
                  }),
            ),
          )
        ],
      ),
    );
  }
}
