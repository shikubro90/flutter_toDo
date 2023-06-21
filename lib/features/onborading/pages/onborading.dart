import 'package:flutter/material.dart';
import 'package:flutter_dev/common/utils/constant.dart';
import 'package:flutter_dev/common/widgets/app_style.dart';
import 'package:flutter_dev/common/widgets/resuable_text.dart';
import 'package:flutter_dev/features/onborading/pages/page_one.dart';
import 'package:flutter_dev/features/onborading/pages/page_two.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBorading extends StatefulWidget {
  const OnBorading({super.key});

  @override
  State<OnBorading> createState() => _OnBoradingState();
}

class _OnBoradingState extends State<OnBorading> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: pageController,
            children: const [PageOne(), PageTwo()],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            pageController.nextPage(
                                duration: const Duration(milliseconds: 600),
                                curve: Curves.ease);
                          },
                          child: const Icon(
                            Ionicons.chevron_forward_circle,
                            size: 30,
                            color: AppConst.kLight,
                          ),
                        ),
                        ResualbeText(
                            text: "Skip",
                            style:
                                appStyle(16, AppConst.kLight, FontWeight.w500)),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.ease);
                      },
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: 2,
                        effect: const WormEffect(
                            dotHeight: 12,
                            dotWidth: 16,
                            dotColor: AppConst.kYellow),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
