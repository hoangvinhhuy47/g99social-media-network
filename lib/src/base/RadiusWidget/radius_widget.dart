import 'package:flutter/cupertino.dart';
import 'package:g99socialmedia/src/styles/colors.dart';
import 'package:g99socialmedia/src/styles/textStyle.dart';

class RadiusWidget extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets? margin;
  final Color color;
  final double radius;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;
  final Alignment? alignment;

  const RadiusWidget(
      {Key? key,
        required this.child,
        this.color = colorPrimary,
        this.radius = 200,
        this.width,
        this.borderRadius,
        this.height,
        this.padding = const EdgeInsets.symmetric(
            horizontal: MyStyles.horizontalMargin, vertical: 8),
        this.alignment,  this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      alignment: alignment,
      margin: margin,
      decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius ?? BorderRadius.circular(radius)),
      child: child,
    );
  }
}
