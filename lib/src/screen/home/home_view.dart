import 'package:flutter/material.dart';
import 'package:g99socialmedia/src/screen/home/components/bottomsheet.dart';
import 'package:g99socialmedia/src/styles/colors.dart';

class HomeScreen extends StatefulWidget {
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorWhite,
      bottomSheet: BottomSheetView(),
    );
  }
}
