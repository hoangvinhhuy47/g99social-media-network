import 'package:flutter/material.dart';
import 'package:g99socialmedia/src/assets/images/index.dart';
import 'package:g99socialmedia/src/base/Button/button_item.dart';
import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/screen/main_activity/home/home_view.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/bottomsheet.dart';

class MainActivityScreen extends StatefulWidget {
  const MainActivityScreen({Key? key}) : super(key: key);

  @override
  State<MainActivityScreen> createState() => _MainActivityScreen();
}

class _MainActivityScreen extends State<MainActivityScreen> {
  late bool inActive;
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      splitScreenMode: true,
      builder: (context) {
        ScreenUtil.setContext(context);
        return Scaffold(
          backgroundColor: colorWhite,
          bottomSheet: const BottomSheetView(),
          appBar: _buildAppbar(context),
          body: const HomeScreen(),
        );
      },
    );
  }
  AppBar _buildAppbar(BuildContext context){
    return AppBar(
      backgroundColor: colorWhite,
      toolbarHeight: 50.h,
      elevation:0,
      automaticallyImplyLeading: false,
      centerTitle: true,
      title: textFieldBold('G99', 16.sp, colorBlack),
      shadowColor: colorWhite,
      foregroundColor: colorWhite,
      leading: InkClickItem(
        onTap: () {},
        padding: const EdgeInsets.only(left: 10),
        child: Image.asset(
          IC_MENU,
          fit: BoxFit.contain,
        ),
      ),
      leadingWidth: 30.w,
      actions: [
        InkClickItem(
          onTap: () {},
          padding: const EdgeInsets.only(right: 15),
          child: CircleAvatar(
            radius: 15,
            child: ClipRRect(
              child: Image.asset(
                IMG_SIGN,
                fit: BoxFit.contain,
              ),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
      ],
    );
  }
}
