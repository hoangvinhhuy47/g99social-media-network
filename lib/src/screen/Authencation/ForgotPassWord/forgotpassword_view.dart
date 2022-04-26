import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/assets/images/index.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForGotPassWord_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 812),
        splitScreenMode: true,
        builder: (context) {
          ScreenUtil.setContext(context);
          return Scaffold(
            backgroundColor: colorWhite,
            body: Container(
              height: 812.h,
              width: 375.w,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 120.h,
                    ),
                    SvgPicture.asset(
                      IMG_LOCK,
                      color: colorBlack,
                      width: 120.w,
                      height: 80.h,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
