import 'package:flutter/material.dart';

class OnBoardingBottomWidget extends StatelessWidget {
  const OnBoardingBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 240,
            height: 60,
            decoration: BoxDecoration(
              color: const Color(0xFFFFBC42),
              borderRadius: BorderRadius.circular(1000),
            ),
            child: const Center(
              child: Text(
                '시작하기',
                style: TextStyle(
                  color: Color(0xFF1E1E1E),
                  fontSize: 18,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 28),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '계정이 있으신가요?',
              style: TextStyle(
                color: Color(0xFF919191),
                fontSize: 18,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 8),
            Text(
              '로그인하기',
              style: TextStyle(
                color: Color(0xFF919191),
                fontSize: 18,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),
            )
          ],
        )
      ],
    );
  }
}
