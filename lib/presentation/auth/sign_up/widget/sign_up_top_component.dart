import 'package:a_wack_flutter_v2/presentation/auth/sign_up/widget/sign_up_status_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/component/gap.dart';
import '../../../../core/component/text_widget.dart';

class SignUpTopComponent extends StatelessWidget {
  final String title, subTitle;
  final double statusBarWidth;

  const SignUpTopComponent({
    super.key,
    required this.title,
    required this.subTitle,
    required this.statusBarWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(height: 24.h),
        SignUpStatusBar(width: statusBarWidth),
        Gap(height: 36.h),
        TextWidget.bold(text: title, fontSize: 32.sp),
        Gap(height: 12.h),
        TextWidget.medium(
          text: subTitle,
          fontSize: 18.sp,
          color: const Color(0xFF838383),
        ),
        Gap(height: 48.h),
      ],
    );
  }
}
