import 'package:flutter/material.dart';
import 'package:g99socialmedia/src/assets/images/index.dart';
import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/components/border_outline.dart';
import 'package:g99socialmedia/src/screen/Authencation/Login/login_view.dart';
import 'package:g99socialmedia/src/screen/Authencation/SignUp/components/input_signup_view.dart';
import 'package:g99socialmedia/src/screen/Authencation/SignUp/signup_suceessfull/signup_successfull_view.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/styles/textStyle.dart';
import 'package:transition/transition.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
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
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 120,
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
                        textFieldBold('Create Account', 20.sp, colorBlack),
                        textFieldRegular('Sign up get started', 12.sp,
                            colorGrey, TextAlign.left),
                        const InputSignUp(valueTitle: 'First Name'),
                        const InputSignUp(valueTitle: 'Last Name'),
                        const InputSignUp(valueTitle: 'Email'),
                        const InputSignUp(valueTitle: 'Phone Number'),
                        const InputSignUp(valueTitle: 'Date of birth'),
                        const InputSignUp(valueTitle: 'Password'),
                        const SizedBox(
                          height: 10,
                        ),
                        _termCondition(context),
                        const SizedBox(
                          height: 15,
                        ),
                        _button(context),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                Transition(
                                    child: const LoginScreen(),
                                    transitionEffect:
                                        TransitionEffect.LEFT_TO_RIGHT,
                                    curve: Curves.linear));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              textFieldRegular('Already Have an account?',
                                  12.sp, colorBlack, TextAlign.center),
                              textFieldBold('Login Here', 14.sp, colorBlack),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ],
                    ),
                  )));
        });
  }

  Widget _termCondition(BuildContext context) {
    const bool valueCheck = false;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(value: valueCheck, onChanged: (val) {}),
        RichText(
            text: TextSpan(children: [
          TextSpan(
            text: 'i agree to the',
            style: s(context,
                fontWeight: FontWeight.w400, color: colorBlack, fontSize: 12),
          ),
          TextSpan(
            text: 'Term & Conditions',
            style: s(context,
                fontWeight: FontWeight.w700,
                color: colorBlack,
                fontSize: 14,
                decoration: TextDecoration.underline),
          ),
          TextSpan(
            text: ' and\n ',
            style: s(context,
                fontWeight: FontWeight.w400, color: colorBlack, fontSize: 12),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: s(context,
                fontWeight: FontWeight.w700,
                color: colorBlack,
                fontSize: 14,
                decoration: TextDecoration.underline),
          ),
          TextSpan(
            text: ' without reservation  ',
            style: s(context,
                fontWeight: FontWeight.w400, color: colorBlack, fontSize: 12),
          ),
        ]))
      ],
    );
  }

  Widget _button(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            Transition(
                child: const SignUpSuccessfullScreen(),
                transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                curve: Curves.linear));
      },
      child: BorderOutLine(
        width: 350.w,
        height: 45.h,
        colorOutline: colorBlack,
        alignment: Alignment.center,
        borderRadius: BorderRadius.circular(15),
        backgroundItem: colorBlack,
        child: textFieldBold('Sign Up', 16.sp, colorWhite),
      ),
    );
  }
}
