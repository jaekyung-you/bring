import 'package:flutter/material.dart';

import '../../const/app_config.dart';
import '../../const/theme.dart';
import '../widgets/realtime_item.dart';

class RealtimeIdealListScreen extends StatelessWidget {
  const RealtimeIdealListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 32),
          Text(
            '실시간 아이디어',
            style: TextStyle(fontWeight: FontWeight.w700, color: BringColor.primaryNavy, fontSize: 24),
          ),
          // todo: 무한 스크롤 구현 필요
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppConfig.innerPadding),
              child: ListView.separated(
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 8);
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
