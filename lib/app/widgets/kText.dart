
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KText extends GetView {
  final String? text;
  final Color? color;
  final double? fontSize;

  final String? fontFamily;
  final int? maxLines;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final double? wordSpacing;
  final double? letterSpacing;

  final TextDirection? textDirection;
  final TextDecoration? decoration;
  TextOverflow? overflow;
  bool? isHeadTitle;
  Paint? foreground;
  FontStyle? fontStyle;
  KText({
    required this.text,
    this.color,
    this.fontSize,
    this.fontFamily,
    this.maxLines,
    this.fontWeight,
    this.textAlign,
    this.textDirection,
    this.wordSpacing,
    this.letterSpacing,
    this.decoration,
    this.overflow,
    this.isHeadTitle,
    this.foreground,
    this.fontStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text'.tr,
      style: TextStyle(
          decoration: decoration,
          fontSize: isHeadTitle == true
              ? 16
              : fontSize != null
              ? fontSize
              : 14,
          fontWeight: isHeadTitle == true
              ? FontWeight.bold
              : fontWeight != null
              ? fontWeight
              : FontWeight.w500,
          color: color != null ? color : Colors.black,
          wordSpacing: wordSpacing,
          letterSpacing: letterSpacing,
          foreground: foreground,
          fontStyle: fontStyle,
          overflow: TextOverflow.ellipsis
      ),
      maxLines: maxLines,
      textAlign: textAlign,
      textDirection: textDirection,
    );
  }
}