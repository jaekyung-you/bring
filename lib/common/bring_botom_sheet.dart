import 'package:bring/const/bring_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../const/app_config.dart';
import 'bring_round_button.dart';

class BringBottomSheet extends StatelessWidget {
  final String title;
  final String? desc;
  final Widget? content;
  final String buttonText;
  final double? bottomSheetHeight;
  final Function onPressed;

  const BringBottomSheet(
      {super.key, required this.title, this.desc, this.content, required this.buttonText, required this.onPressed, this.bottomSheetHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppConfig.contentPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppConfig.borderRadiusSub),
        color: Colors.white,
      ),
      height: bottomSheetHeight,
      child: SingleChildScrollView(
        child: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: AppConfig.innerPadding),

              /// 핸들바
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 28,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.0),
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppConfig.innerPadding * 2),
              Text(
                title,
                style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
              if (desc != null)
                Container(
                  padding: const EdgeInsets.symmetric(vertical: AppConfig.innerPadding),
                  child: Text(
                    desc!,
                    style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                  ),
                ),
              if (content != null)
                Padding(
                  padding: const EdgeInsets.only(bottom: AppConfig.innerPadding),
                  child: content!,
                ),
              BringRoundButton(
                  buttonText: buttonText, onPressed: onPressed, buttonFgColor: Colors.white, buttonBgColor: BringColor.primaryNavy)
            ],
          ),
        ),
      ),
    );
  }
}
