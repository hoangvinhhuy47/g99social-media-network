import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/assets/images/index.dart';
import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/screen/Authencation/Login/components/index.dart';
import 'package:g99socialmedia/src/screen/Authencation/index.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:transition/transition.dart';

class Login_Screen extends StatelessWidget {
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
                children: [
                  SizedBox(
                    height: 150.h,
                  ),
                  Image.asset(
                    IMG_LOGIN_LOGO,
                    height: 50.h,
                    width: 50.w,
                    color: colorBlack,
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  textFieldBold('WellCome Back', 25.sp, colorBlack),
                  SizedBox(
                    height: 15.h,
                  ),
                  textFieldRegular('Enter your detail to proceed further.',
                      15.sp, colorGrey, TextAlign.center),
                  SizedBox(
                    height: 80.h,
                  ),
                  InputEmail_Screen(),
                  SizedBox(
                    height: 15.h,
                  ),
                  InputPassword_Screen(),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    width: 300.w,
                    height: 30.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        textFieldRegular(
                            'Remember me', 12.sp, colorBlack, TextAlign.center),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                Transition(
                                    child: ForGotPassWord_Screen(),
                                    transitionEffect:
                                        TransitionEffect.RIGHT_TO_LEFT,
                                    curve: Curves.linear));
                          },
                          child: textFieldRegular('Forgot password?', 13.sp,
                              colorBlack, TextAlign.center),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  GestureDetector(
                    child: Container(
                      width: 300.w,
                      height: 50.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: colorBlack,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: textFieldBold('Login', 14.sp, colorWhite),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  GestureDetector(
                    child: Container(
                      width: 300.w,
                      height: 50.h,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          textFieldRegular('Dont Have an Account?', 12.sp,
                              colorBlack, TextAlign.center),
                          textFieldBold('Sign Up Here', 14.sp, colorBlack),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
