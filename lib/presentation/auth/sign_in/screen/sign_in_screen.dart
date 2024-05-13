import 'package:flutter/material.dart';
import 'package:a_wack_flutter_v2/presentation/auth/sign_in/widget/sign_in_app_bar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController _emailController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SignInAppBarWidget(appbarHeight: 54.h),
        body: Padding(
          padding: EdgeInsets.fromLTRB(24.w, 36.h, 24.w, 0.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '로그인',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 36.h),
              Text(
                '이메일',
                style: TextStyle(
                  color: const Color(0xFF222222),
                  fontSize: 16.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              TextField(
                controller: _emailController,
                cursorColor: const Color(0xFFFFA500),
                cursorHeight: 24.h,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFC0C0C0)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                style: TextStyle(
                  height: 1.h,
                  decorationThickness: 0,
                  color: const Color(0xFF1E1E1E),
                  fontSize: 24.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
