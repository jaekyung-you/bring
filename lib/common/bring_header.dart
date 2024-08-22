import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BringHeader extends StatelessWidget {
  final String title;
  final bool isHiddenBack;
  final Function? onTapBackButton;

  const BringHeader({super.key, required this.title, this.isHiddenBack = false, this.onTapBackButton});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          if (!isHiddenBack)
            SizedBox(
              width: 48,
              height: 48,
              child: InkWell(
                onTap: () {
                  // 특정 기능이 있다면
                  if (onTapBackButton != null) {
                    onTapBackButton!();
                    return;
                  }
                  Get.back();
                },
                child: const Icon(
                  Icons.arrow_back_outlined,
                  size: 32,
                ),
              ),
            ),
          if (isHiddenBack) const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
