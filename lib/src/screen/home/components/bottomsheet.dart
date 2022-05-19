import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
class BottomSheetView extends StatefulWidget {
  State<BottomSheetView> createState() => _BottomSheetView();
}

class _BottomSheetView extends State<BottomSheetView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      color: colorWhite,
      child: Container(
        height: 50.h,
        width: 360.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
          color: colorBlack,
          boxShadow: [
            BoxShadow(
                color: colorBlack,
                blurRadius: 1,
                offset: Offset(3,3))
          ]
        ),
      ),
    );
  }
}
