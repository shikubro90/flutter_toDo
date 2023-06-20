import 'package:flutter/material.dart';

class OnBorading extends StatelessWidget {
  const OnBorading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            physics: AlwaysScrollableScrollPhysics(),
          )
        ],
      ),
    )
  }
}