import 'package:a_wack_flutter_v2/presentation/auth/sign_up/widget/sign_up_button.dart';
import 'package:a_wack_flutter_v2/presentation/auth/sign_up/widget/sign_up_top_component.dart';
import 'package:a_wack_flutter_v2/presentation/auth/widget/auth_app_bar_widget.dart';
import 'package:a_wack_flutter_v2/presentation/auth/widget/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpSendEmailScreen extends StatefulWidget {
  const SignUpSendEmailScreen({super.key});

  @override
  State<SignUpSendEmailScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpSendEmailScreen> {
  bool isError = false;
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

  void sendEmail(String text) {
    if (text.contains("@dsm.hs.kr")) {
      return;
    }

    setState(() => isError = true);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AuthAppBarWidget(appbarHeight: 54.h),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SignUpTopComponent(
                title: "회원가입",
                subTitle: "인증을 위해 DSM 이메일을 입력해주세요",
                statusBarWidth: 95.5.w,
              ),
              AuthTextField(
                controller: _emailController,
                title: "이메일",
                focusNode: FocusNode(),
                keyboardType: TextInputType.emailAddress,
                errorText: "DSM 이메일이 아닙니다",
                isError: isError,
              ),
            ],
          ),
        ),
        bottomSheet: SignUpButton(
          onTap: () => sendEmail(_emailController.text),
          title: "인증번호 전송",
        ),
      ),
    );
  }
}
