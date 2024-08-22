import 'package:flutter/material.dart';
import '../const/app_config.dart';

class BaseRoundButton extends StatefulWidget {
  String buttonText;
  Function onPressed;
  Color buttonFgColor;
  Color buttonBgColor;
  Color borderColor;
  double width;
  double height;
  double borderWidth;
  Icon? prefixIcon;
  Icon? suffixIcon;

  BaseRoundButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    required this.buttonFgColor,
    required this.buttonBgColor,
    this.borderColor = Colors.transparent,
    this.width = double.maxFinite,
    this.height = 56,
    this.borderWidth = 1,
    this.prefixIcon,
    this.suffixIcon,
  });

  @override
  State<BaseRoundButton> createState() => _BaseRoundButtonState();
}

class _BaseRoundButtonState extends State<BaseRoundButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late double _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 50),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  void _onTapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _onTapUp(TapUpDetails details) {
    _controller.reverse();
    widget.onPressed();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: () => _controller.reverse(),
      child: Transform.scale(
        scale: _scale,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: AppConfig.contentPadding),
          width: widget.width,
          height: widget.height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppConfig.borderRadiusMain),
            color: widget.buttonBgColor,
            border: Border.all(color: widget.borderColor, width: widget.borderWidth),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.prefixIcon != null) Padding(padding: const EdgeInsets.only(left: 4.0), child: widget.prefixIcon!),
              Text(
                widget.buttonText,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: widget.buttonFgColor),
              ),
              if (widget.suffixIcon != null) Padding(padding: const EdgeInsets.only(right: 4.0), child: widget.suffixIcon!),
            ],
          ),
        ),
      ),
    );
  }
}
