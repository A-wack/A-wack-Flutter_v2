import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpStatusBar extends StatelessWidget {
  final double width;

  const SignUpStatusBar({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 382.w,
          height: 6.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: const Color(0xFFF1F1F1),
          ),
        ),
        Container(
          width: width,
          height: 6.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: const Color(0xFFFFDB99),
          ),
        ),
      ],
    );
  }
}
