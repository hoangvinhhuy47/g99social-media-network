import 'package:flutter/material.dart';
import 'package:g99socialmedia/src/styles/colors.dart';


class MyStyles {
  late ThemeData themeData;

  MyStyles(this.themeData);

  factory MyStyles.of(BuildContext context) {
    return MyStyles(Theme.of(context));
  }

  TextStyle tooltipText() => TextStyle(
    color: colorBlack,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  TextStyle secondaryText() =>  TextStyle(
    color: colorBlack,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  TextStyle hintText() =>  TextStyle(
    color: colorBlack,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  TextStyle valueText() => const TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontFamily: 'Poppins',
    fontStyle: FontStyle.normal
  );

  TextStyle buttonTextStyle() =>  TextStyle(
      color: colorBlack,
      fontSize: 16,
      fontWeight: FontWeight.w500
  );

  TextStyle settingWalletTextStyle() => const TextStyle(
      color: Color(0xFFB1BBD2),
      fontSize: 12,
      fontWeight: FontWeight.w500
  );

  TextStyle screenTitleText() =>  TextStyle(
    color: colorBlack,
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );

  static const horizontalMargin = 16.0;
  static const verticalMargin = 18.0;
}


TextStyle s(BuildContext context, {double? fontSize, Color? color, FontWeight? fontWeight, double? height, String? fontFamily,TextDecoration? decoration}) {
  return MyStyles.of(context).valueText().copyWith(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
    height: height,
    fontFamily: fontFamily,
    decoration: decoration,
  );
}

TextStyle ls(BuildContext context, {double? fontSize, Color? color, FontWeight? fontWeight = FontWeight.w500, double? height, String? fontFamily}) {
  return MyStyles.of(context).valueText().copyWith(
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
    height: height,
    fontFamily: fontFamily,
  );
}