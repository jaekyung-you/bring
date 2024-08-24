import 'package:bring/common/circle_image_widget.dart';
import 'package:flutter/material.dart';

import '../const/app_config.dart';

class BringProfileHeader extends StatelessWidget {
  final String imageUrl;
  final String nickname;
  final double width;
  final double height;

  const BringProfileHeader({super.key, required this.imageUrl, required this.nickname, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleImageWidget(imageUrl: imageUrl, width: width),
          const SizedBox(width: AppConfig.contentPadding),
          Text(
            nickname,
            style: const TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
