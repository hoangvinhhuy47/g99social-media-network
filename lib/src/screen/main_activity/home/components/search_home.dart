import 'package:flutter/material.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchHome extends StatelessWidget {
  const SearchHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 45.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: colorGrey,
                offset: Offset.fromDirection(0, 1),
                blurRadius: 1)
          ]),
      child: TextField(
        textAlign: TextAlign.left,
        cursorColor: colorBlack,
        cursorWidth: 1,
        style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            fontFamily: 'Poppins',
            color: colorBlack),
        decoration: InputDecoration(

          alignLabelWithHint: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: colorBlack, width: 0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide(color: colorGrey, width: 0),
          ),
          hintStyle: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              fontFamily: 'Poppins',
              color: colorGrey),
          hintText: 'Create new posted',
          suffixIcon: IconButton(icon: const Icon(Icons.near_me), onPressed: () {  },)
        ),
      ),
    );
  }
}
