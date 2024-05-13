import 'package:a_wack_flutter_v2/presentation/auth/sign_in/screen/sign_in_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/component/route_animation.dart';

class OnBoardingBottomWidget extends StatelessWidget {
  const OnBoardingBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 240.w,
            height: 60.h,
            decoration: BoxDecoration(
              color: const Color(0xFFFFBC42),
              borderRadius: BorderRadius.circular(1000),
            ),
            child: Center(
              child: Text(
                '시작하기',
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 18.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 28),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              RouteAnimation(const SignInScreen()).slideRightToLeft(),
            );
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '계정이 있으신가요?',
                style: TextStyle(
                  color: const Color(0xFF919191),
                  fontSize: 18.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 8.w),
              Text(
                '로그인하기',
                style: TextStyle(
                  color: const Color(0xFF919191),
                  fontSize: 18.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
