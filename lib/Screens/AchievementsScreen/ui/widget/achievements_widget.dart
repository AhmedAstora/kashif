import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class AchievementsWidget extends StatelessWidget {
  const AchievementsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 78.h,
          width: 93.w,
          decoration: BoxDecoration(
            color: Color(
              0xffFE8769,
            ).withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Images.educationalGameLogo,
                height: 32.h,
                width: 32.w,
              ),
              SizedBox(height: 5.h),
              CustomText(
                '5',
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        Container(
          height: 92.h,
          width: 105.w,
          decoration: BoxDecoration(
            color: Color(
              0xffFE8769,
            ).withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Images.awardBadgePrize,
                height: 40.h,
                width: 40.w,
              ),
              SizedBox(height: 5.h),
              CustomText(
                '356',
                fontSize: 20.sp,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
        Container(
          height: 78.h,
          width: 93.w,
          decoration: BoxDecoration(
            color: Color(
              0xffFE8769,
            ).withValues(alpha: 0.4),
            borderRadius: BorderRadius.circular(20.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Images.daemon,
                height: 30.h,
                width: 30.w,
              ),
              CustomText(
                '737',
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
