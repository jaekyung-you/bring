import 'package:flutter/material.dart';
import '../../common/bring_header.dart';
import '../../common/idea_write_button.dart';
import '../../const/app_config.dart';
import '../widgets/realtime_item.dart';

class RealtimeIdeaListScreen extends StatelessWidget {
  const RealtimeIdeaListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: IdeaWriteButton(),
      body: SafeArea(
        child: Column(
          children: [
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
      ),
    );
  }
}
