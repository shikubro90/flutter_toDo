import 'package:flutter/material.dart';
import 'package:flutter_dev/common/utils/constant.dart';
import 'package:flutter_dev/common/widgets/app_style.dart';
import 'package:flutter_dev/common/widgets/height_spacer.dart';
import 'package:flutter_dev/common/widgets/resuable_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppConst.kHight,
      width: AppConst.kWidht,
      color: AppConst.kBkDark,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(image: AssetImage('assets/images/todo_app.png')),
              ),
              const HeightSpacer(size: 50),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ResualbeText(
                      text: "Todo with Riverpod",
                      style: appStyle(30, AppConst.kLight, FontWeight.w600)),
                  const HeightSpacer(size: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Text(
                      'Welcome to Todo! Do you want to create your task list ease',
                      textAlign: TextAlign.center,
                      style: appStyle(15, AppConst.kGrayLight, FontWeight.w300),
                    ),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
