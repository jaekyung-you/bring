import 'package:bring/common/bring_round_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../const/app_config.dart';
import '../const/theme.dart';

class BringDialog extends StatefulWidget {
  String title;
  String? desc;
  Widget? content;
  String firstButtonText;
  String? secondButtonText;
  // String? thirdButtonText;
  Function? onPressFirstButton;
  Function? onPressSecondButton;
  // Function? onPressThirdButton;

  // 버튼 1개
  BringDialog({super.key, required this.title, this.desc, this.content, required this.firstButtonText, this.onPressFirstButton});

  // 버튼 2개
  BringDialog.twoButton({
    super.key,
    required this.title,
    this.desc,
    this.content,
    required this.firstButtonText,
    required this.secondButtonText,
    this.onPressFirstButton,
    this.onPressSecondButton,
  });

  // // 버튼 3개
  // BringDialog.threeButton({
  //   super.key,
  //   required this.title,
  //   this.desc,
  //   this.content,
  //   required this.firstButtonText,
  //   required this.secondButtonText,
  //   required this.thirdButtonText,
  //   this.onPressFirstButton,
  //   this.onPressSecondButton,
  //   this.onPressThirdButton,
  // });

  @override
  State<BringDialog> createState() => _BringDialogState();
}

class _BringDialogState extends State<BringDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(horizontal: AppConfig.innerPadding * 2),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain)),
      backgroundColor: Colors.white,
      shadowColor: null,
      surfaceTintColor: null,
      child: Container(
        padding: const EdgeInsets.all(AppConfig.innerPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /// 닫기 버튼
            // Row(
            //   children: [
            //     const Spacer(),
            //     IconButton(
            //         onPressed: () {
            //           Get.back();
            //         },
            //         icon: const Icon(Icons.close)),
            //   ],
            // ),

            /// 제목
            Text(
              widget.title,
              style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
            ),

            /// 내용
            widget.desc != null ?
              Padding(
                padding: const EdgeInsets.symmetric(vertical: AppConfig.contentPadding),
                child: Text(
                  widget.desc!,
                  style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w500),
                ),
              ) : const SizedBox(height: AppConfig.innerPadding),

            if (widget.content != null)
              Padding(
                padding: const EdgeInsets.only(bottom: AppConfig.contentPadding),
                child: widget.content!,
              ),

            /// 버튼
            Row(
              children: [
                Expanded(
                  child: BringRoundButton(
                    buttonText: widget.firstButtonText,
                    onPressed: () {
                      if (widget.onPressFirstButton != null) {
                        widget.onPressFirstButton!();
                      }
                    },
                    buttonFgColor: Colors.white,
                    buttonBgColor: BringColor.primaryNavy,
                    height: 40,
                  ),
                ),
                if (widget.secondButtonText != null)
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: AppConfig.contentPadding),
                      child: BringRoundButton(
                        buttonText: widget.secondButtonText!,
                        onPressed: () {
                          if (widget.onPressSecondButton != null) {
                            widget.onPressSecondButton!();
                          }
                        },
                        buttonFgColor: Colors.white,
                        buttonBgColor: BringColor.primaryNavy.withOpacity(0.5),
                        height: 40,
                      ),
                    ),
                  ),
              ],
            )

            // if (widget.thirdButtonText != null)
            //   Padding(
            //     padding: const EdgeInsets.only(top: AppConfig.contentPadding),
            //     child: BaseRoundButton(
            //       buttonText: widget.thirdButtonText!,
            //       onPressed: () {
            //         if (widget.onPressThirdButton != null) {
            //           widget.onPressThirdButton!();
            //         }
            //       },
            //       buttonFgColor: Colors.white,
            //       buttonBgColor: Colors.black,
            //       height: 50,
            //     ),
            //   ),
          ],
        ),
      ),
    );
  }
}
