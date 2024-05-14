import 'package:a_wack_flutter_v2/core/component/a_wack_text_field.dart';
import 'package:a_wack_flutter_v2/core/component/text_widget.dart';
import 'package:flutter/cupertino.dart';
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
  late TextEditingController _passwordController;

  final FocusNode emailNode = FocusNode();
  final FocusNode passwordNode = FocusNode();

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
              TextWidget.bold(
                text: '로그인',
                fontSize: 32.sp,
              ),
              SizedBox(height: 36.h),
              AWackTextField(
                controller: _emailController,
                title: "이메일",
                focusNode: emailNode,
                anotherNodes: [passwordNode],
                isError: false,
              ),
              SizedBox(height: 24.h),
              AWackTextField(
                controller: _passwordController,
                title: "비밀번호",
                focusNode: passwordNode,
                anotherNodes: [emailNode],
                isError: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
