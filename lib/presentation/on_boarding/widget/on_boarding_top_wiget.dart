import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/component/image_storage.dart';
import '../../../core/component/image_widget.dart';

class OnBoardingTopWidget extends StatelessWidget {
  const OnBoardingTopWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            ImageWidget(
              image: ImageStorage.awackLogo,
              imageType: ImageType.png,
              imageWidth: 24.w,
              imageHeight: 24.h,
            ),
            SizedBox(width: 8.w),
            Text(
              'AWACK',
              style: TextStyle(
                fontFamily: "Pretendard",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        SizedBox(height: 36.h),
        Text(
          '반가워요!',
          style: TextStyle(
            fontFamily: "Pretendard",
            fontSize: 44.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 12.h),
        Text(
          'AWAKE로 신청한 노래를 들으며\n아침에 기분 좋게 일어나봐요!',
          style: TextStyle(
            fontFamily: "Pretendard",
            fontSize: 18.sp,
            color: const Color(0xFF838383),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
