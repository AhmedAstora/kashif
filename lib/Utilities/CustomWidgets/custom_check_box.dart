import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Utilities/Constants/image_constant.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';

class CustomCheckBox extends StatelessWidget {
  CustomCheckBox({
    super.key,
    this.isTapped = false,
    this.onTap,
  });

  bool isTapped;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child:  Image.asset(isTapped ? Images.checkBoxClick : Images.checkbox,scale: 4, ),

    );
  }
}
