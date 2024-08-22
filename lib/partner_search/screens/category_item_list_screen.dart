import 'package:bring/common/idea_write_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/bring_header.dart';
import '../../const/app_config.dart';
import '../controllers/category_item_list_controller.dart';
import '../widgets/realtime_item.dart';

class CategoryItemListScreen extends StatefulWidget {
  const CategoryItemListScreen({super.key});

  @override
  State<CategoryItemListScreen> createState() => _CategoryItemListScreenState();
}

class _CategoryItemListScreenState extends State<CategoryItemListScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoryItemListController>(
        init: CategoryItemListController(),
        builder: (controller) {
          return Scaffold(
            floatingActionButton: IdeaWriteButton(),
            body: Column(
              children: [
                const SizedBox(height: 32),
                Obx(() {
                  return BringHeader(title: controller.category.value);
                }),
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
        });
  }
}
