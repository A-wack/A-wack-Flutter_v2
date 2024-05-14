import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/on_boarding_bottom_widget.dart';
import '../widget/on_boarding_top_wiget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 48),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 96,
              height: 700.h,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnBoardingTopWidget(),
                  OnBoardingBottomWidget(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
