import 'package:flutter/material.dart';

String pretendard = 'Pretendard';

class TextWidget {
  static Text thin({
    required String text,
    Color color = Colors.black,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: pretendard,
        fontWeight: FontWeight.w100,
        height: 0,
      ),
    );
  }

  static Text extraLight({
    required String text,
    Color color = Colors.black,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: pretendard,
        fontWeight: FontWeight.w200,
        height: 0,
      ),
    );
  }

  static Text light({
    required String text,
    Color color = Colors.black,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: pretendard,
        fontWeight: FontWeight.w300,
        height: 0,
      ),
    );
  }

  static Text regular({
    required String text,
    Color color = Colors.black,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: pretendard,
        fontWeight: FontWeight.w400,
        height: 0,
      ),
    );
  }

  static Text medium({
    required String text,
    Color color = Colors.black,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: pretendard,
        fontWeight: FontWeight.w500,
        height: 0,
      ),
    );
  }

  static Text semiBold({
    required String text,
    Color color = Colors.black,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: pretendard,
        fontWeight: FontWeight.w600,
        height: 0,
      ),
    );
  }

  static Text bold({
    required String text,
    Color color = Colors.black,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: pretendard,
        fontWeight: FontWeight.w700,
        height: 0,
      ),
    );
  }

  static Text extraBold({
    required String text,
    Color color = Colors.black,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: pretendard,
        fontWeight: FontWeight.w800,
        height: 0,
      ),
    );
  }

  static Text black({
    required String text,
    Color color = Colors.black,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: pretendard,
        fontWeight: FontWeight.w900,
        height: 0,
      ),
    );
  }
}
