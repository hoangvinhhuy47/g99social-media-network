import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/screen/Authencation/Login/login_view.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:transition/transition.dart';
import '../../assets/index.dart';

class AuthencationScreen extends StatelessWidget {
  const AuthencationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      builder: (BuildContext context) {
        ScreenUtil.setContext(context);
        return Scaffold(
          backgroundColor: colorWhite,
          body: SizedBox(
            height: 812.h,
            width: 375.w,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                      width: 350.w,
                      height: 350.h,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage(IMG_LOGIN),
                      ))),
                  SizedBox(
                    height: 20.h,
                  ),
                  textFieldBold('Find New Friends Nearby', 22.sp, colorBlack),
                  SizedBox(
                    height: 5.h,
                  ),
                  textFieldRegular(
                      'With milions of user all over the world. \nwe give you the aility to connect with \n people no matter where you are',
                      13.sp,
                      colorGrey,
                      TextAlign.center),
                  const Button(),
                  const Option()
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.h,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                Transition(
                    child: const LoginScreen(),
                    transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                    curve: Curves.linear));
          },
          child: Container(
            width: 330.w,
            height: 50.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: colorBlack, borderRadius: BorderRadius.circular(25)),
            child: textFieldBold('Login', 12.sp, colorWhite),
          ),
        ),
        SizedBox(
          height: 15.h,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 330.w,
            height: 50.h,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: colorWhite,
                border: Border.all(width: 1, color: colorBlack),
                borderRadius: BorderRadius.circular(25)),
            child: textFieldBold('Sign up', 12.sp, colorBlack),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        textFieldRegular('-OR-', 15.sp, colorGrey, TextAlign.center),
        SizedBox(
          height: 5.h,
        ),
      ],
    );
  }
}

class Option extends StatelessWidget {
  const Option({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 80.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(IMG_GOOGLE), fit: BoxFit.contain)),
          ),
          Container(
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(IMG_FACEBOOK), fit: BoxFit.contain)),
          ),
          Container(
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(IMG_CALL), fit: BoxFit.contain)),
          ),
          Container(
            height: 30.h,
            width: 30.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(IMG_SLACK), fit: BoxFit.contain)),
          )
        ],
      ),
    );
  }
}
