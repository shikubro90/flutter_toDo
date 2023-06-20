import 'package:flutter/material.dart';
import 'package:flutter_dev/common/utils/constant.dart';
import 'package:flutter_dev/common/widgets/app_style.dart';
import 'package:flutter_dev/common/widgets/height_spacer.dart';
import 'package:flutter_dev/common/widgets/resuable_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ResualbeText(
                text: "Todo with riverpod",
                style: appStyle(26, AppConst.kBlueLight, FontWeight.bold),
              ),
              HeightSpacer(size: 30),
              ResualbeText(
                text: "Todo with riverpod",
                style: appStyle(26, AppConst.kBlueLight, FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
