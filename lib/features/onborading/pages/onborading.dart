import 'package:flutter/material.dart';

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
            physics: AlwaysScrollableScrollPhysics(),
            controller: pageController,
          )
        ],
      ),
    )
  }
}