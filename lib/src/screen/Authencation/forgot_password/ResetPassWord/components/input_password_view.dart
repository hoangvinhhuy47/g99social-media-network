import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/base/index.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
class InputResetPassWord extends StatefulWidget{
  const InputResetPassWord({Key? key, required this.inputTitle}) : super(key: key);

  State<InputResetPassWord> createState()=>_InputResetPassWord();
  final String inputTitle;
}
class _InputResetPassWord extends State<InputResetPassWord>{
  @override
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
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: colorBlack, width:1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: colorGrey, width: 1),
          ),
          label: textFieldRegular(
              widget.inputTitle, 13.sp, colorGrey, TextAlign.center),
        ),
      ),
    );
  }

}