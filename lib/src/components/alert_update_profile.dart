import 'package:flutter/material.dart';
import 'package:g99socialmedia/src/base/Button/button_item.dart';
import 'package:g99socialmedia/src/base/RadiusWidget/radius_widget.dart';
import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:lottie/lottie.dart';

showAlertUpdateProfile(BuildContext context) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: RadiusWidget(
                  height: 250,
                  width: MediaQuery.of(context).size.width - 80,
                  borderRadius: BorderRadius.circular(15),
                  color: colorWhite,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 80,
                        width: MediaQuery.of(context).size.width - 120,
                        child: Lottie.network(
                            'https://assets2.lottiefiles.com/packages/lf20_ibsbm9w2.json'),
                      ),
                      textFieldBold('Update Detail', 22, colorBlack),
                      textFieldRegular('Please enter you to new friends', 12,
                          colorGrey, TextAlign.center),
                      _buildEdit(context),
                    ],
                  )),
            ),
          ),
        );
      });
}

Widget _buildEdit(BuildContext context) {
  return InkClickItem(
      onTap: () {},
      child: RadiusWidget(
        alignment: Alignment.center,
        height: 35,
        color: colorBlack,
        width: (MediaQuery.of(context).size.width - 60) / 2,
        child: textFieldBold('Edit Now', 12, colorWhite),
      ));
}
