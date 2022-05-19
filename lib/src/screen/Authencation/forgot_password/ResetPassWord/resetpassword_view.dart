import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/screen/Authencation/index.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:transition/transition.dart';
import 'package:lottie/lottie.dart';

import 'components/input_password_view.dart';
class ResetPassword extends StatefulWidget {
  State<ResetPassword> createState() => _ResetPassword();
}

class _ResetPassword extends State<ResetPassword> {
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
                    textFieldBold('Reset Password', 20.sp, colorBlack),
                    SizedBox(
                      height: 5.h,
                    ),
                    textFieldRegular('Set your new password', 12.sp, colorGrey,
                        TextAlign.left),
                    SizedBox(
                      height: 15.h,
                    ),
                    InputResetPassWord(
                      inputTitle: 'New PassWord',
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    InputResetPassWord(
                      inputTitle: 'Confirm PassWord',
                    ),
                    SizedBox(
                      height: 100.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            Transition(
                                child: VerificationSuccessfull(),
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
                        child: textFieldBold('Reset PassWord', 14.sp, colorWhite),
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

class VerificationSuccessfull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    _onGoToLogin(context);
    return ScreenUtilInit(
        designSize: Size(375, 812),
        splitScreenMode: true,
        builder: (context) {
          ScreenUtil.setContext(context);
          return Scaffold(
            body: Center(
              child: Lottie.network('https://assets3.lottiefiles.com/packages/lf20_XY61yC.json',width: 250.w,height: 250.h,),
            ),
          );
        });
  }
  _onGoToLogin(BuildContext context){
    new Future.delayed( Duration(seconds: 3), () {
      Navigator.push(
          context,
          Transition(
              child: LoginScreen(),
              transitionEffect:
              TransitionEffect.FADE,
              curve: Curves.linear));
    });

  }
}
