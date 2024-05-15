import 'package:a_wack_flutter_v2/core/component/gap.dart';
import 'package:a_wack_flutter_v2/presentation/auth/sign_up/widget/sign_up_button.dart';
import 'package:a_wack_flutter_v2/presentation/auth/sign_up/widget/sign_up_top_component.dart';
import 'package:a_wack_flutter_v2/presentation/auth/widget/auth_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/component/image_storage.dart';
import '../../../../core/component/image_widget.dart';
import '../../widget/auth_text_field.dart';

class SignUpSettingPasswordScreen extends StatefulWidget {
  const SignUpSettingPasswordScreen({super.key});

  @override
  State<SignUpSettingPasswordScreen> createState() =>
      _SignUpSettingPasswordScreenState();
}

class _SignUpSettingPasswordScreenState
    extends State<SignUpSettingPasswordScreen> {
  late TextEditingController _passwordController;
  late TextEditingController _passwordCheckController;

  FocusNode passwordNode = FocusNode();
  FocusNode passwordCheckNode = FocusNode();

  bool isPassWordError = false;
  bool isPassWordCheckError = false;

  bool isPassWordInvisible = false;
  bool isPassWordCheckInvisible = false;

  @override
  void initState() {
    super.initState();
    _passwordController = TextEditingController();
    _passwordCheckController = TextEditingController();

    passwordNode.addListener(() {
      if (passwordNode.hasFocus) {
        passwordCheckNode.unfocus();
        setState(() {});
      }
    });

    passwordCheckNode.addListener(() {
      if (passwordCheckNode.hasFocus) {
        passwordNode.unfocus();
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _passwordController.dispose();
    _passwordCheckController.dispose();
  }

  void clickPassWordInvisible() {
    isPassWordInvisible
        ? isPassWordInvisible = false
        : isPassWordInvisible = true;
    setState(() {});
  }

  void clickPassWordCheckInvisible() {
    isPassWordCheckInvisible
        ? isPassWordCheckInvisible = false
        : isPassWordCheckInvisible = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    bool checkPassword(String passWordText) {
      // todo 여기에 정규식을 넣어야 함
      if (passWordText == "" || passWordText.isEmpty) {
        setState(() => isPassWordError = true);
        return false;
      }

      setState(() => isPassWordError = false);
      return true;
    }

    void checkDiff(String passWordText, String passWordCheckText) {
      if (passWordText == passWordCheckText) {
        setState(() => isPassWordCheckError = false);
        return;
      }

      setState(() => isPassWordCheckError = true);
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
                subTitle: "비밀번호를 설정해주세요",
                statusBarWidth: 286.5.w,
              ),
              AuthTextField(
                controller: _passwordController,
                title: "비밀번호",
                focusNode: passwordNode,
                isError: isPassWordError,
                errorText: "비밀번호는 어쩌고저쩌고 양식",
                keyboardType: TextInputType.visiblePassword,
                isInvisible: isPassWordInvisible,
                onTapOutside: (event) {
                  passwordNode.unfocus();
                  setState(() {});
                },
                suffixIcon: GestureDetector(
                  onTap: () => clickPassWordInvisible(),
                  child: ImageWidget(
                    imageType: ImageType.png,
                    image: isPassWordInvisible
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
              const Gap(height: 24),
              AuthTextField(
                controller: _passwordCheckController,
                title: "비밀번호 확인",
                focusNode: passwordCheckNode,
                isError: isPassWordCheckError,
                errorText: "비밀번호가 일치하지 않습니다",
                keyboardType: TextInputType.visiblePassword,
                isInvisible: isPassWordCheckInvisible,
                onTapOutside: (event) {
                  passwordCheckNode.unfocus();
                  setState(() {});
                },
                suffixIcon: GestureDetector(
                  onTap: () => clickPassWordCheckInvisible(),
                  child: ImageWidget(
                    imageType: ImageType.png,
                    image: isPassWordCheckInvisible
                        ? ImageStorage.hide
                        : ImageStorage.notHide,
                    width: 24.w,
                    height: 24.h,
                    imageWidth: 24.w,
                    imageHeight: 24.h,
                    color: passwordCheckNode.hasFocus
                        ? Colors.black
                        : const Color(0xFFC1C1C1),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomSheet: SignUpButton(
          onTap: () {
            bool checkPassWordState = checkPassword(_passwordController.text);

            if (checkPassWordState) {
              checkDiff(
                _passwordController.text,
                _passwordCheckController.text,
              );
            }
          },
          title: "다음",
        ),
      ),
    );
  }
}
