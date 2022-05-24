import 'package:flutter/material.dart';
import 'package:g99socialmedia/src/base/Button/button_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g99socialmedia/src/base/RadiusWidget/radius_widget.dart';
import 'package:g99socialmedia/src/base/TextStyle/TextStyle.dart';
import 'package:g99socialmedia/src/styles/colors.dart';

class ItemBottomSheet extends StatefulWidget {
  const ItemBottomSheet(
      {Key? key, required this.label, required this.icon, required this.active, required this.onPress, required this.index})
      : super(key: key);

  @override
  State<ItemBottomSheet> createState() => _ItemBottomSheet();
  final String label;
  final String icon;
  final bool active;
  final Function(int) onPress;
  final int index;
}

class _ItemBottomSheet extends State<ItemBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return InkClickItem(
        onTap: () {
          widget.onPress(widget.index);
        },
        child: RadiusWidget(
          color: Colors.transparent,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                widget.icon,
                color: widget.active ? colorWhite : colorPrimary,
                height: 20.w,
                width: 20.w,
                fit: BoxFit.contain,
              ),
              textFieldBold(widget.label, 8.sp,
                  widget.active ? colorWhite : colorPrimary)
            ],
          ),
        ));
  }
}
