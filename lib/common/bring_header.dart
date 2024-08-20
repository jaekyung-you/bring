import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../const/theme.dart';

class BringHeader extends StatelessWidget {
  final String title;
  final bool isHiddenBack;

  const BringHeader({super.key, required this.title, this.isHiddenBack = false});

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
            style: const TextStyle(fontWeight: FontWeight.w700, color: BringColor.primaryNavy, fontSize: 24),
          ),
        ],
      ),
    );
  }
}
