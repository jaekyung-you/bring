import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../common/circle_image_widget.dart';

class MyProfileEditScreen extends StatelessWidget {
  const MyProfileEditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CircleImageWidget(imageUrl: 'https://picsum.photos/id/237/200/300', width: 200.w),
          ],
        ),
      ),
    );
  }
}
