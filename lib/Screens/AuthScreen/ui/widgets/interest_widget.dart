import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class InterestWidget extends StatelessWidget {
   InterestWidget({super.key,this.isSelected =false,this.onTap,this.title,this.image});
bool isSelected ;
String? title;
String? image;
VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 120.h,
      width: 115.w,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 105.h,
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(blurRadius: 26,
                    spreadRadius: 0,
                    color: Color(0xff023047).withValues(alpha: .3))],
                borderRadius: BorderRadius.circular(15),
                gradient: isSelected ? null : AppColor
                    .interestGradient,
                border: isSelected ? null : Border.all(
                    color: Color(0xff8B9EE0).withValues(alpha: .1)),
              ),
              child: Column(
                children: [
                  Image.asset(Images.bank, scale: 4),
                  SizedBox(height: 5.h),
                  CustomText(
                    "Culture & History",
                    fontSize: 11.sp,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),

          Align(
            alignment: AlignmentGeometry.topRight,
            child: Image.asset(
            isSelected ?Images.checkbox : Images.addButton,
              width: 48.r,
              height: 48.r,
            ),
          ),
        ],
      ),
    );
  }
}
