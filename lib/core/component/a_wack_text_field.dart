import 'package:a_wack_flutter_v2/core/component/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AWackTextField extends StatefulWidget {
  final String title;
  final TextEditingController controller;
  final FocusNode focusNode;
  final bool isError, isInvisible;
  final String errorText;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final GestureTapCallback? onTap;
  final TapRegionCallback? onTapOutside;

  const AWackTextField({
    super.key,
    required this.controller,
    required this.title,
    required this.focusNode,
    this.isError = false,
    this.keyboardType = TextInputType.text,
    this.isInvisible = false,
    this.suffixIcon,
    this.onTap,
    this.onTapOutside,
    this.errorText = "",
  });

  @override
  State<AWackTextField> createState() => _AWackTextFieldState();
}

class _AWackTextFieldState extends State<AWackTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget.semiBold(
          text: widget.title,
          fontSize: 16.sp,
          color: widget.focusNode.hasFocus
              ? const Color(0xFF222222)
              : const Color(0xFFC1C1C1),
        ),
        TextField(
          focusNode: widget.focusNode,
          onTap: widget.onTap ?? () => setState(() {}),
          onTapOutside: widget.onTapOutside ??
              (event) {
                widget.focusNode.unfocus();
                setState(() {});
              },
          controller: widget.controller,
          cursorColor: const Color(0xFFFFA500),
          cursorHeight: 24.h,
          decoration: InputDecoration(
            suffixIcon: widget.suffixIcon,
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFC0C0C0),
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            focusedErrorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFC5555)),
            ),
            errorBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFC5555)),
            ),
            error: widget.isError
                ? TextWidget.medium(
                    text: widget.errorText,
                    color: const Color(0xFFFC5555),
                    fontSize: 14.sp,
                  )
                : null,
          ),
          style: TextStyle(
            height: 1.h,
            decorationThickness: 0,
            color: const Color(0xFF1E1E1E),
            fontSize: 24.sp,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w500,
          ),
          keyboardType: widget.keyboardType,
          obscureText: widget.isInvisible ? true : false,
          enableSuggestions: widget.isInvisible ? false : true,
          autocorrect: widget.isInvisible ? false : true,
        ),
      ],
    );
  }
}
