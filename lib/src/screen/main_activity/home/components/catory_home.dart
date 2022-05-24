import 'package:flutter/material.dart';
import 'package:g99socialmedia/src/base/Button/button_item.dart';
import 'package:g99socialmedia/src/base/RadiusWidget/radius_widget.dart';
import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/styles/colors.dart';

class CatoryHome extends StatefulWidget {
  const CatoryHome(
      {Key? key,
      required this.title,
      required this.active,
      required this.index,
      required this.onPress})
      : super(key: key);

  @override
  State<CatoryHome> createState() => _CatoryHome();
  final String title;
  final bool active;
  final int index;
  final Function(int) onPress;
}

class _CatoryHome extends State<CatoryHome> {
  @override
  Widget build(BuildContext context) {
    return InkClickItem(
      onTap: () {
        widget.onPress(widget.index);
      },
      child: Container(
          margin: const EdgeInsets.only(left: 10),
          height: 30,
          width: 75,
          alignment: Alignment.center,
          decoration: widget.active
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: colorBlack,
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: colorWhite,
                  border: Border.all(color: colorGrey, width: 1)),
          child: textFieldBold(widget.title, 12, widget.active?colorWhite:colorBlack)),
    );
  }
}
