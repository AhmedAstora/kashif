import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class CommonAchievements extends StatelessWidget {
  const CommonAchievements({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 67.h,
          width: 55.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(Images.mosque),
              Image.asset(Images.awardBadgePrize, scale: 6),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  alignment: Alignment.center,
                  height: 20.h,
                  width: 62.w,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 0,
                        color: Color(0x3f8b9ee0),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff8B9EE0).withValues(alpha: .6),
                        Color(0xff4C567A).withValues(alpha: .6),
                      ],
                      stops: [0.53, 1],
                    ),
                  ),
                  child: CustomText(
                    'Cairo',
                    fontWeight: FontWeight.w500,
                    fontSize: 9.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomText('Pyramids', fontSize: 9.sp),
      ],
    );
  }
}
