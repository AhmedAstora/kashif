import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Utilities/Constants/image_constant.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';

class ButtonConqueredCity extends StatelessWidget {

  double? fontSize;
  FontWeight? fontWeight;
  ButtonConqueredCity({
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
          Image.asset(Images.buttonConqueredCity,scale: 4),
          CustomText(
            title,
            fontWeight: fontWeight ?? FontWeight.w600,
            fontSize: fontSize ?? 18.sp,
          ),
        ],
      ),
    );
  }
}
