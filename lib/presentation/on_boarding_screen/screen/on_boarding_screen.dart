import 'package:a_wack_flutter_v2/presentation/on_boarding_screen/widget/on_boarding_bottom_widget.dart';
import 'package:a_wack_flutter_v2/presentation/on_boarding_screen/widget/on_boarding_top_wiget.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120, left: 48),
            child: SizedBox(
              width: MediaQuery.of(context).size.width - 96,
              height: 700,
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
