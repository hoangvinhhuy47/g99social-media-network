import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/assets/images/index.dart';
import 'package:g99socialmedia/src/screen/Authencation/forgot_password/ResetPassWord/resetpassword_view.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transition/transition.dart';

class OTPVerification_Screen extends StatefulWidget {
  State<OTPVerification_Screen> createState() => _OTPVerification_Screen();
}

class _OTPVerification_Screen extends State<OTPVerification_Screen> {
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
                      IMG_OTP,
                      color: colorBlack,
                      width: 120.w,
                      height: 80.h,
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    textFieldBold('OTP Verification', 20.sp, colorBlack),
                    SizedBox(
                      height: 5.h,
                    ),
                    textFieldRegular('Please enter the OTP send to', 12.sp,
                        colorGrey, TextAlign.left),
                    SizedBox(
                      height: 5.h,
                    ),
                    textFieldBold('+84 901 909 514', 15.sp, colorBlack),
                    SizedBox(
                      height: 50.h,
                    ),
                    SizedBox(
                      width: 350.w,
                      child: PinCodeTextField(
                          appContext: context,
                          length: 5,
                          animationType: AnimationType.fade,
                          enableActiveFill: true,
                          pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(5),
                            fieldHeight: 50,
                            fieldWidth: 40,
                            activeFillColor: Colors.white,
                            borderWidth: 1,
                            inactiveFillColor: colorWhite,
                          ),
                          onChanged: (value) {}),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      width: 350.w,
                      alignment: Alignment.centerRight,
                      child:
                          textFieldUnderLine('Resend OTP', 13.sp, colorBlack),
                    ),
                    SizedBox(
                      height: 50.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            Transition(
                                child: ResetPassword(),
                                transitionEffect:
                                    TransitionEffect.RIGHT_TO_LEFT,
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
                        child: textFieldBold('Submit', 14.sp, colorWhite),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
