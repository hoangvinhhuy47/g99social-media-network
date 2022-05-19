import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/assets/images/index.dart';
import 'package:g99socialmedia/src/components/border_outline.dart';
import 'package:g99socialmedia/src/screen/home/home_view.dart';
import 'package:transition/transition.dart';
import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/styles/colors.dart';

class SignUpCatoryScreen extends StatefulWidget {
  const SignUpCatoryScreen({Key? key}) : super(key: key);

  @override
  State<SignUpCatoryScreen> createState() => _SignUpCatoryScreen();
}

class _SignUpCatoryScreen extends State<SignUpCatoryScreen> {
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
                      height: 60,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 50.w,
                          width: 50.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image:
                                  DecorationImage(image: AssetImage(IMG_SIGN))),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            textFieldBold('Monkey Boss', 18.sp, colorBlack),
                            textFieldRegular('g99.team.dev@gmail.com', 12.sp,
                                colorGrey, TextAlign.left)
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    _buidDitribute(context),
                    const SizedBox(
                      height: 80,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            Transition(
                                child:  HomeScreen(),
                                transitionEffect:
                                TransitionEffect.FADE,
                                curve: Curves.linear));
                      },
                      child: BorderOutLine(
                        height: 50.h,
                        width: 350.w,
                        borderRadius: BorderRadius.circular(25),
                        alignment: Alignment.center,
                        backgroundItem: colorBlack,
                        colorOutline: colorBlack,
                        child: textFieldBold('Go to Home', 12.sp, colorWhite),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget _buidDitribute(BuildContext context) {
    const bool valueRadio = false;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.center,
      width: 375.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colorWhite,
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: colorLight,
              spreadRadius: 3,
              offset: const Offset(
                1,
                1,
              ),
            ),
          ]),
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
            width: 350.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textFieldBold('Friend', 14.sp, colorBlack),
                Radio(
                    value: valueRadio,
                    groupValue: valueRadio,
                    activeColor: colorBlack,
                    onChanged: (val) {})
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
            width: 350.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textFieldBold('Business', 14.sp, colorBlack),
                Radio(
                    value: valueRadio,
                    groupValue: valueRadio,
                    activeColor: colorBlack,
                    onChanged: (val) {})
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
            width: 350.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textFieldBold('Math making', 14.sp, colorBlack),
                Radio(
                    value: !valueRadio,
                    groupValue: valueRadio,
                    activeColor: colorBlack,
                    onChanged: (val) {})
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
            width: 350.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                textFieldBold('Live location', 14.sp, colorBlack),
                Radio(
                    value: !valueRadio,
                    groupValue: valueRadio,
                    activeColor: colorBlack,
                    onChanged: (val) {})
              ],
            ),
          )
        ],
      ),
    );
  }
}
