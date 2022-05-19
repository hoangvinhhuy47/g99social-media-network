import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/base/index.dart';
import 'package:g99socialmedia/src/styles/colors.dart';

class InputSignUp extends StatelessWidget {
  const InputSignUp({Key? key, required this.valueTitle}) : super(key: key);
  final String valueTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.w,
      height: 45.h,
      margin: const EdgeInsets.symmetric(vertical: 10),
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
              valueTitle, 13.sp, colorGrey, TextAlign.center),
        ),
      ),
    );
  }
}
