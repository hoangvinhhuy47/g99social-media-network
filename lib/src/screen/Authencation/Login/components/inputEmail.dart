import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/base/index.dart';
import 'package:g99socialmedia/src/styles/colors.dart';

class InputEmail_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
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
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: colorBlack, width: 0.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: colorGrey, width: 0.5),
          ),
          label: textFieldRegular(
              'Email or Number', 13.sp, colorGrey, TextAlign.center),
        ),
      ),
    );
  }
}
