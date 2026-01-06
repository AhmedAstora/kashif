import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Utilities/Constants/image_constant.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';

class CustomNewButton extends StatelessWidget {

  double? fontSize;
  FontWeight? fontWeight;
  CustomNewButton({
    this.fontSize,
    this.fontWeight,
    super.key,
    required this.title,
    this.isTapped = false,
    this.onTap,
  });

  String title;
  bool isTapped;


  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(isTapped ? Images.btnClick : Images.btn, scale: 4),
          CustomText(
            title,
            fontWeight: fontWeight ?? FontWeight.w700,
            fontSize: fontSize ?? 20.sp,
          ),
        ],
      ),
    );
  }
}
