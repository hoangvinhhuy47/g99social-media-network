import 'package:flutter/material.dart';
import 'package:g99socialmedia/src/base/index.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class InputForgotPassword extends StatelessWidget{
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 55.h,
      child: TextField(
        style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontFamily: 'Poppins',
            color: colorBlack),
        decoration: new InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: colorBlack, width: 0.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: colorGrey, width: 0.5),
          ),
          label: textFieldRegular(
              'Mobile number', 13.sp, colorGrey, TextAlign.center),
        ),
      ),
    );
  }

}