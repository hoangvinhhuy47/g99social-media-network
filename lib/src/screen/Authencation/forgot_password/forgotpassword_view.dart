import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/assets/images/index.dart';
import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/screen/Authencation/forgot_password/components/InputForgotPassWord.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transition/transition.dart';

import 'OTP/otpverification_view.dart';
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
                padding: const EdgeInsets.only(left: 15),
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
                    ),
                    SizedBox(
                      height:50.h ,
                    ),
                    textFieldBold('Forgot PassWord', 20.sp, colorBlack),
                    SizedBox(height: 10.h,),
                    textFieldRegular('Please enter your registerted mobile number\nfor the verification process,we will send you\nan OTP', 12.sp, colorGrey,TextAlign.left),
                    SizedBox(height: 20.h,),
                    InputForgotPassword(),
                    SizedBox(height: 250.h,),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            Transition(
                                child: OTPVerification_Screen(),
                                transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                                curve: Curves.linear));
                      },
                      child: Container(
                        width: 350.w,
                        height: 50.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: colorBlack,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: textFieldBold('Send OTP', 14.sp, colorWhite),
                      ),
                    ),

                  ],
                ),
              )
            ),
          );
        });
  }
}
