import 'package:a_wack_flutter_v2/core/component/route_animation.dart';
import 'package:a_wack_flutter_v2/core/component/text_widget.dart';
import 'package:a_wack_flutter_v2/presentation/auth/sign_up/screen/sign_up_setting_password_screen.dart';
import 'package:a_wack_flutter_v2/presentation/auth/sign_up/widget/sign_up_button.dart';
import 'package:a_wack_flutter_v2/presentation/auth/sign_up/widget/sign_up_top_component.dart';
import 'package:a_wack_flutter_v2/presentation/auth/widget/auth_app_bar_widget.dart';
import 'package:a_wack_flutter_v2/presentation/auth/widget/auth_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpCheckEmailScreen extends StatefulWidget {
  const SignUpCheckEmailScreen({super.key});

  @override
  State<SignUpCheckEmailScreen> createState() => _SignUpCheckEmailScreenState();
}

class _SignUpCheckEmailScreenState extends State<SignUpCheckEmailScreen> {
  bool isError = false;
  late TextEditingController _passNumberController;

  @override
  void initState() {
    super.initState();
    _passNumberController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _passNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void checkPassNumber(String text) {
      // todo 여기도 더미 수정 필요
      if (text == "0000") {
        setState(() => isError = false);
        Navigator.push(
          context,
          RouteAnimation(const SignUpSettingPasswordScreen())
              .slideRightToLeft(),
        );
        return;
      }

      setState(() => isError = true);
    }

    return SafeArea(
      child: Scaffold(
        appBar: AuthAppBarWidget(appbarHeight: 54.h),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            children: [
              SignUpTopComponent(
                title: "회원가입",
                subTitle: "이메일로 인증번호를 전송했어요",
                statusBarWidth: 191.w,
              ),
              AuthTextField(
                controller: _passNumberController,
                title: "인증번호",
                focusNode: FocusNode(),
                keyboardType: TextInputType.number,
                isError: isError,
                errorText: "인증번호가 일치하지 않습니다",
                // todo 여기 suffixIcon을 GestureDetector로 수정
                suffixIcon: Container(
                  width: 66.w,
                  height: 35.h,
                  margin: EdgeInsets.only(bottom: 10.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE9E9E9),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: TextWidget.semiBold(
                      text: "재전송",
                      fontSize: 16.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: SignUpButton(
          onTap: () => checkPassNumber(_passNumberController.text),
          title: "확인 👌",
        ),
      ),
    );
  }
}
