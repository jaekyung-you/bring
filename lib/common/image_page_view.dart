import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../const/app_config.dart';
import '../const/bring_color.dart';

class ImagePageView extends StatefulWidget {
  final List<String> imageList;
  final double height;

  const ImagePageView({super.key, required this.imageList, required this.height});

  @override
  State<ImagePageView> createState() => _ImagePageViewState();
}

class _ImagePageViewState extends State<ImagePageView> {
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          children: [
            SizedBox(
              height: widget.height,
              width: Get.width,
              child: PageView.builder(
                controller: controller,
                onPageChanged: (index) {
                  setState(() {
                    currentPage = index + 1;
                  });
                },
                scrollDirection: Axis.horizontal,
                itemCount: widget.imageList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Image.network(
                    widget.imageList[index],
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: AppConfig.contentPadding, right: AppConfig.contentPadding),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: AppConfig.contentPadding / 2),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain), color: Colors.grey.withOpacity(0.5)),
                  child: Text(
                    "$currentPage/${widget.imageList.length}",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: AppConfig.contentPadding),
          child: SmoothPageIndicator(
              controller: controller, // PageController
              count: widget.imageList.length,
              effect: const ExpandingDotsEffect(
                activeDotColor: BringColor.primaryNavy,
                dotColor: BringColor.grey02,
              ), // your preferred effect
              onDotClicked: (index) {
                controller.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                setState(() {
                  currentPage = index + 1;
                });
              }),
        )
      ],
    );
  }
}
