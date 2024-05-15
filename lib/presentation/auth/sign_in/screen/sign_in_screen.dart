import 'package:a_wack_flutter_v2/presentation/auth/widget/auth_text_field.dart';
import 'package:a_wack_flutter_v2/core/component/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:a_wack_flutter_v2/presentation/auth/widget/auth_app_bar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/component/gap.dart';
import '../../../../core/component/image_storage.dart';
import '../../../../core/component/image_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  final FocusNode emailNode = FocusNode();
  final FocusNode passwordNode = FocusNode();

  bool isInvisible = true;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();

    emailNode.addListener(() {
      if (emailNode.hasFocus) {
        passwordNode.unfocus();
        setState(() {});
      }
    });

    passwordNode.addListener(() {
      if (passwordNode.hasFocus) {
        emailNode.unfocus();
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void clickInvisible() {
    isInvisible ? isInvisible = false : isInvisible = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // todo 여기 있는 더미값 수정
    bool isError = true;

    return SafeArea(
      child: Scaffold(
        appBar: AuthAppBarWidget(appbarHeight: 54.h),
        body: Padding(
          padding: EdgeInsets.fromLTRB(24.w, 36.h, 24.w, 0.h),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget.bold(
                  text: '로그인',
                  fontSize: 32.sp,
                ),
                Gap(height: 36.h),
                AuthTextField(
                  controller: _emailController,
                  title: "이메일",
                  focusNode: emailNode,
                  keyboardType: TextInputType.emailAddress,
                  isError: isError,
                ),
                Gap(height: 24.h),
                AuthTextField(
                  controller: _passwordController,
                  title: "비밀번호",
                  focusNode: passwordNode,
                  isError: isError,
                  errorText: "이메일 또는 비밀번호를 확인해주세요",
                  keyboardType: TextInputType.visiblePassword,
                  isInvisible: isInvisible,
                  onTapOutside: (event) {
                    passwordNode.unfocus();
                    setState(() {});
                  },
                  suffixIcon: GestureDetector(
                    onTap: () => clickInvisible(),
                    child: ImageWidget(
                      imageType: ImageType.png,
                      image: isInvisible
                          ? ImageStorage.hide
                          : ImageStorage.notHide,
                      width: 24.w,
                      height: 24.h,
                      imageWidth: 24.w,
                      imageHeight: 24.h,
                      color: passwordNode.hasFocus
                          ? Colors.black
                          : const Color(0xFFC1C1C1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Padding(
          padding: EdgeInsets.only(bottom: 30.h),
          child: Container(
            width: 240.w,
            height: 60.h,
            decoration: BoxDecoration(
              color: const Color(0xFFFFBD43),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: TextWidget.semiBold(
                text: "로그인",
                fontSize: 18.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
