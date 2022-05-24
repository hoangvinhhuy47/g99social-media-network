import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/assets/images/index.dart';
import 'package:g99socialmedia/src/base/Button/button_item.dart';
import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/screen/Authencation/forgot_password/forgotpassword_view.dart';
import 'package:g99socialmedia/src/screen/Authencation/signup/signup_view.dart';
import 'package:g99socialmedia/src/screen/main_activity/main_activity_view.dart';

import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:transition/transition.dart';

import 'components/index.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      builder: (context) {
        ScreenUtil.setContext(context);
        return Scaffold(
          backgroundColor: colorWhite,
          body: SizedBox(
            height: 812.h,
            width: 375.w,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 150,
                  ),
                  Image.asset(
                    IMG_LOGIN_LOGO,
                    height: 50.h,
                    width: 50.w,
                    color: colorBlack,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  textFieldBold('WellCome Back', 25.sp, colorBlack),
                  const SizedBox(
                    height: 15,
                  ),
                  textFieldRegular('Enter your detail to proceed further.',
                      15.sp, colorGrey, TextAlign.center),
                  const SizedBox(
                    height: 80,
                  ),
                  const InputEmail_Screen(),
                  const SizedBox(
                    height: 15,
                  ),
                  const InputPassword_Screen(),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
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
                  InkClickItem(
                    onTap: () {
                      Navigator.push(
                          context,
                          Transition(
                              child: const MainActivityScreen(),
                              transitionEffect: TransitionEffect.FADE,
                              curve: Curves.linear));
                    },
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
                    onTap: () {
                      Navigator.push(
                          context,
                          Transition(
                              child: const SignUpScreen(),
                              transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                              curve: Curves.linear));
                    },
                    child: SizedBox(
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
