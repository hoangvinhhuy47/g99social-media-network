import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/assets/images/index.dart';
import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/components/border_outline.dart';
import 'package:g99socialmedia/src/screen/Authencation/signup/signup_catory/signup_catory_view.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:transition/transition.dart';

class SignUpSuccessfullScreen extends StatefulWidget {
  const SignUpSuccessfullScreen({Key? key}) : super(key: key);

  @override
  State<SignUpSuccessfullScreen> createState() => _SignUpSuccessfullScreen();
}

class _SignUpSuccessfullScreen extends State<SignUpSuccessfullScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        splitScreenMode: true,
        builder: (context) {
          ScreenUtil.setContext(context);
          return Scaffold(
            backgroundColor: colorWhite,
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 812.h,
              width: 375.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 120,
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 250.w,
                        width: 250.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(250),
                            image: DecorationImage(
                                image: AssetImage(IMG_SIGN),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                          bottom: 10,
                          right: 10,
                          child: Image.asset(
                            IMG_EDIT,
                            width: 30,
                            height: 30,
                          ))
                    ],
                  ),
                  SizedBox(
                    height: 120.h,
                    width: 350.w,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: BorderOutLine(
                            height: 50.h,
                            width: 120.w,
                            borderRadius: BorderRadius.circular(25),
                            alignment: Alignment.center,
                            backgroundItem: colorWhite,
                            colorOutline: colorWhite,
                            child: textFieldBold('Back', 12.sp, colorBlack),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                Transition(
                                    child: const SignUpCatoryScreen(),
                                    transitionEffect:
                                        TransitionEffect.RIGHT_TO_LEFT,
                                    curve: Curves.linear));
                          },
                          child: BorderOutLine(
                            height: 50.h,
                            width: 120.w,
                            borderRadius: BorderRadius.circular(25),
                            alignment: Alignment.center,
                            backgroundItem: colorBlack,
                            colorOutline: colorBlack,
                            child: textFieldBold('Next', 12.sp, colorWhite),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
