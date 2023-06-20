import 'package:flutter/material.dart';
import 'package:flutter_dev/common/widgets/app_style.dart';
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
      body: Center(child: ResualbeText(text: "Todo with riverpod", style: appStyle(26, Colors.blue, FontWeight.bold),)),
    );
  }
}