import 'package:flutter/material.dart';
import 'package:g99socialmedia/src/components/alert_update_profile.dart';
import 'package:g99socialmedia/src/screen/main_activity/home/components/catory_home.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/search_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  late List<Map> dataCatory = [{}];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      // showAlertUpdateProfile(context);
    });
    return RefreshIndicator(
        color: colorBlack,
        child: SizedBox(
          width: 375.w,
          height: 700.h,
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
            children: [
              const SearchHome(),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  height: 30,
                  width: 300.w,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CatoryHome(
                        index: 0,
                        title: 'All',
                        active: true,
                        onPress: (index) {},
                      ),
                      CatoryHome(
                        index: 1,
                        title: 'Places',
                        active: false,
                        onPress: (index) {},
                      ),
                      CatoryHome(
                        index: 2,
                        title: 'Food',
                        active: false,
                        onPress: (index) {},
                      ),
                      CatoryHome(
                        index: 3,
                        title: 'Nearby',
                        active: false,
                        onPress: (index) {},
                      )
                    ],
                  ))
            ],
          ),
        ),
        onRefresh: onRefresh);
  }
}

Future<void> onRefresh() async {}
