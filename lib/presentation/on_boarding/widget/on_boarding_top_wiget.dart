import 'package:flutter/material.dart';

import '../../../core/image_storage.dart';
import '../../../core/image_widget.dart';

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
              imageWidth: 24,
              imageHeight: 24,
            ),
            const SizedBox(width: 8),
            const Text(
              'AWACK',
              style: TextStyle(
                fontFamily: "Pretendard",
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 36),
        const Text(
          '반가워요!',
          style: TextStyle(
            fontFamily: "Pretendard",
            fontSize: 44,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'AWAKE로 신청한 노래를 들으며\n아침에 기분 좋게 일어나봐요!',
          style: TextStyle(
            fontFamily: "Pretendard",
            fontSize: 18,
            color: Color(0xFF838383),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
