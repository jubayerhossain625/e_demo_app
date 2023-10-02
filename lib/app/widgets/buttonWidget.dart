import 'package:flutter/material.dart';

import 'kText.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
        this.bgColor,
        this.widget,
        this.height,
        this.width,
        this.radius,
        required this.onTap})
      : super(key: key);
  final Color? bgColor;
  final Widget? widget;
  final double? height;
  final double? width;
  final double? radius;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        color: bgColor ?? Colors.blue,
        height: height ?? 45.0,
        minWidth: width ?? 85.0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 4.0)),
        onPressed: onTap,
        child: widget ??  KText(text: 'Title'));
  }
}