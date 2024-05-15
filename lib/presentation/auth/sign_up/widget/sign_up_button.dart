import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/component/text_widget.dart';

class SignUpButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String title;

  const SignUpButton({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 28.h),
      child: GestureDetector(
        onTap: onTap ?? () {},
        child: Container(
          width: 240.w,
          height: 60.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: const Color(0xFFC1C1C1)),
          ),
          child: Center(
            child: TextWidget.semiBold(
              text: title,
              fontSize: 18.sp,
            ),
          ),
        ),
      ),
    );
  }
}
