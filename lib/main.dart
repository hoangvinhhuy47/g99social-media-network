import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:g99socialmedia/src/screen/index.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:device_preview/device_preview.dart';
import 'package:get/get.dart';
import 'package:splash_screen_view/SplashScreenView.dart';
import 'src/assets/images/index.dart';
import 'src/styles/colors.dart';

void main() async {
  // await Hive.initFlutter();
  // runApp(DevicePreview(
  //   builder: (context) => MyApp(),
  //   enabled: !kReleaseMode,
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const  SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SplashScreenView(
            navigateRoute: WellComeScreen(),
            duration: 3000,
            imageSize: 80,
            imageSrc: IMG_LOGO,
            backgroundColor: colorBlue));
  }
}
