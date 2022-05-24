import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/assets/images/index.dart';
import 'package:g99socialmedia/src/styles/colors.dart';

import 'bottomsheet_widget.dart';

class BottomSheetView extends StatefulWidget {
  const BottomSheetView({Key? key}) : super(key: key);

  @override
  State<BottomSheetView> createState() => _BottomSheetView();
}

class _BottomSheetView extends State<BottomSheetView> {
  late int indexActive = 3;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      color: colorWhite,
      child: Container(
        height: 75.h,
        width: 360.w,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          color: colorBlack,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ItemBottomSheet(
              label: 'Discover',
              active: indexActive == 1 ? true : false,
              icon: IC_DISCOVER,
              onPress: (index) {
                onTapBottom(index);
              },
              index: 1,
            ),
            ItemBottomSheet(
              label: 'Activities',
              active: indexActive == 2 ? true : false,
              icon: IC_ACTIVITIES,
              onPress: (index) {
                onTapBottom(index);
              },
              index: 2,
            ),
            ItemBottomSheet(
              label: 'Home',
              active: indexActive == 3 ? true : false,
              icon: IC_HOME,
              onPress: (index) {
                onTapBottom(index);
              },
              index: 3,
            ),
            ItemBottomSheet(
              label: 'Chat',
              active: indexActive == 4 ? true : false,
              icon: IC_CHAT,
              onPress: (index) {
                onTapBottom(index);
              },
              index: 4,
            ),
            ItemBottomSheet(
              label: 'Notification',
              active: indexActive == 5 ? true : false,
              icon: IC_NOTIFICATION,
              onPress: (index) {
                onTapBottom(index);
              },
              index: 5,
            ),
          ],
        ),
      ),
    );
  }

  void onTapBottom(int index) {
    if (index != indexActive) {
      setState(() {
        indexActive = index;
      });
    }
  }
}
