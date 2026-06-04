import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final int? maxLines;
  final Color? color;
  final double? height;
  final VoidCallback? onTap;
  final TextDecoration? decoration;

  const CustomText(
      this.text, {
        super.key,
        this.fontSize,
        this.letterSpacing,
        this.fontWeight,
        this.textAlign,
        this.maxLines,
        this.color = Colors.white,
        this.height,
        this.onTap,
        this.decoration,
      });

  @override
  Widget build(BuildContext context) {
    final textWidget = Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
        decoration: decoration ?? TextDecoration.none,
        color: color,
        overflow: maxLines == null ? null : TextOverflow.ellipsis,
        decorationColor: color,
        height: height,
        letterSpacing: letterSpacing,
        fontSize: fontSize ?? 14.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
    );

    if (onTap != null) {
      return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: textWidget,
        ),
      );
    }
    return textWidget;
  }
}