import 'package:bring/common/bouncing_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../const/app_config.dart';
import '../../const/bring_color.dart';
import '../../data/response/consult_business_filter.dart';

class ConsultBusinessFilterWidget extends StatelessWidget {
  final List<ConsultBusinessFilter> filterList;
  final Rx<ConsultBusinessFilter> selectedFilter;

  const ConsultBusinessFilterWidget({super.key, required this.filterList, required this.selectedFilter});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 52,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 0; i < filterList.length; i++)
              Padding(
                padding: EdgeInsets.only(right: AppConfig.contentPadding, left: i == 0 ? AppConfig.innerPadding : 0),
                child: Obx(() {
                  return BouncingWidget(
                    onPressed: () {
                      if (selectedFilter.value == filterList[i]) {
                        selectedFilter.value = ConsultBusinessFilter(title: '', code: '');
                      } else {
                        selectedFilter.value = filterList[i];
                      }
                    },
                    child: Container(
                      height: 32,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      decoration: BoxDecoration(
                        color: selectedFilter.value == filterList[i] ? BringColor.primaryNavy : BringColor.navy04.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(
                          filterList[i].title,
                          style: const TextStyle(fontSize: 16.0, color: Colors.white),
                        ),
                      ),
                    ),
                  );
                }),
              ),
          ],
        ),
      ),
    );
  }
}
