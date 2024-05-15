import 'package:a_wack_flutter_v2/core/component/text_widget.dart';
import 'package:a_wack_flutter_v2/presentation/auth/sign_in/screen/sign_in_screen.dart';
import 'package:a_wack_flutter_v2/presentation/auth/sign_up/screen/sign_up_send_email_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/component/gap.dart';
import '../../../core/component/route_animation.dart';

class OnBoardingBottomWidget extends StatelessWidget {
  const OnBoardingBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              RouteAnimation(const SignUpSendEmailScreen()).slideRightToLeft(),
            );
          },
          child: Container(
            width: 240.w,
            height: 60.h,
            decoration: BoxDecoration(
              color: const Color(0xFFFFBC42),
              borderRadius: BorderRadius.circular(1000),
            ),
            child: Center(
              child: TextWidget.semiBold(
                text: "시작하기",
                color: const Color(0xFF1E1E1E),
                fontSize: 18.sp,
              ),
            ),
          ),
        ),
        const Gap(height: 28),
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
              TextWidget.medium(
                text: '계정이 있으신가요?',
                color: const Color(0xFF919191),
                fontSize: 18.sp,
              ),
              Gap(width: 8.w),
              TextWidget.medium(
                text: '로그인하기',
                color: const Color(0xFF919191),
                fontSize: 18.sp,
              ),
            ],
          ),
        )
      ],
    );
  }
}
