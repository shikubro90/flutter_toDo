import 'package:flutter/material.dart';
import 'package:flutter_dev/common/utils/constant.dart';
import 'package:flutter_dev/common/widgets/app_style.dart';
import 'package:flutter_dev/common/widgets/resuable_text.dart';

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton(
      {super.key,
      required this.onTap,
      required this.height,
      required this.width,
      required this.color2,
      required this.text});

  final Function onTap;
  final double height;
  final double width;
  final Color color2;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        child: ResualbeText(
            text: text, style: appStyle(20, color2, FontWeight.w300)),
      ),
    );
  }
}
