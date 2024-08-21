import 'package:flutter/material.dart';

import '../../const/app_config.dart';
import '../widgets/partner_search_category_widget.dart';
import '../widgets/partner_search_realtime_idea_list.dart';

class PartnerSearchMainScreen extends StatefulWidget {
  const PartnerSearchMainScreen({super.key});

  @override
  State<PartnerSearchMainScreen> createState() => _PartnerSearchMainScreenState();
}

class _PartnerSearchMainScreenState extends State<PartnerSearchMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppConfig.innerPadding),
          child: SingleChildScrollView(
            child: Column(
              children: [
                searchTextField(),
                const SizedBox(height: 32),
                PartnerSearchCategoryWidget(),
                const SizedBox(height: 32),
                PartnerSearchRealtimeIdeaList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget searchTextField() {
    return TextField(
      decoration: InputDecoration(hintText: '검색어를 입력해주세요.'),

    );
  }
}
