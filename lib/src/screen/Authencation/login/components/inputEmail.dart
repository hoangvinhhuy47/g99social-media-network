import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/base/index.dart';
import 'package:g99socialmedia/src/styles/colors.dart';

class InputEmail_Screen extends StatelessWidget {
  const InputEmail_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 55.h,
      child: TextField(
        style: TextStyle(
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontFamily: 'Poppins',
            color: colorBlack),
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: colorBlack, width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: colorGrey, width: 1),
          ),
          label: textFieldRegular(
              'Email or Number', 13.sp, colorGrey, TextAlign.center),
        ),
      ),
    );
  }
}
