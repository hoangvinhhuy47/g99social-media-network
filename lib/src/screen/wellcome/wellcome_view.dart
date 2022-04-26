import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:g99socialmedia/src/assets/lottie/index.dart';
import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/screen/Authencation/authen_view.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:logger/logger.dart';
import 'package:lottie/lottie.dart';
import 'package:transition/transition.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../assets/index.dart';

class WellCome_Screen extends StatelessWidget {
  @override
  var logger = Logger(
    printer: PrettyPrinter(),
  );
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      splitScreenMode: true,
      builder: ((context) {
        ScreenUtil.setContext(context);
        return OnBoardingSlider(
          totalPage: 3,
          headerBackgroundColor: colorWhite,
          speed: 1.8,
          skipTextButton:
              textFieldRegular("Skip", 15.sp, colorBlack, TextAlign.center),
          skipFunctionOverride: () {
            Navigator.push(
                context,
                Transition(
                    child: Authencation_Screen(),
                    transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                    curve: Curves.linear));
          },
          controllerColor: colorBlack,
          pageBackgroundColor: colorWhite,
          addButton: false,
          background: [
            Container(
                width: 375.w,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(IMG_WELLCOME1),
                        fit: BoxFit.contain))),
            Container(
                width: 375.w,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(IMG_WELLCOME2),
                        fit: BoxFit.contain))),
            Container(
                width: 375.w,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(IMG_WELLCOME3),
                        fit: BoxFit.contain))),
          ],
          pageBodies: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 500,
                  ),
                  textFieldBold(
                    'Find Some One',
                    20.sp,
                    colorGrey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  textFieldRegular(
                      'Lonely in crowded place? Find interesting people nearbly and make friends!',
                      15.sp,
                      colorBlack,
                      TextAlign.center),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 500,
                  ),
                  textFieldBold(
                    'Kepp Surfing',
                    20.sp,
                    colorGrey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  textFieldRegular(
                      'Tag profile and if you like them tab \n on the ♥ icon',
                      15.sp,
                      colorBlack,
                      TextAlign.center),
                ],
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 450,
                  ),
                  textFieldBold(
                    'Match Making',
                    20.sp,
                    colorGrey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  textFieldRegular(
                      'If some one likes you back, \n Its a match and you can connect',
                      15.sp,
                      colorBlack,
                      TextAlign.center),
                  const SizedBox(
                    height: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          Transition(
                              child: Authencation_Screen(),
                              transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
                              curve: Curves.linear));
                    },
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      width: 350.w,
                      decoration: BoxDecoration(
                          color: colorBlack,
                          borderRadius: BorderRadius.circular(15)),
                      child: textFieldBold('Get Stated', 15, colorWhite),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
