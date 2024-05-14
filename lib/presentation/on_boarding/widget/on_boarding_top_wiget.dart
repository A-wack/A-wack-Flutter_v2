import 'package:a_wack_flutter_v2/core/component/text_widget.dart';
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
            TextWidget.medium(
              text: 'AWACK',
              fontSize: 16.sp,
            ),
          ],
        ),
        SizedBox(height: 36.h),
        TextWidget.bold(
          text: '반가워요!',
          fontSize: 44.sp,
        ),
        SizedBox(height: 12.h),
        TextWidget.medium(
          text: 'AWAKE로 신청한 노래를 들으며\n아침에 기분 좋게 일어나봐요!',
          color: const Color(0xFF838383),
          fontSize: 18.sp,
        ),
      ],
    );
  }
}
