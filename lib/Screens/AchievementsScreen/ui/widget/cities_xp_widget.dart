import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class CitiesXpWidget extends StatelessWidget {
  const CitiesXpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 31.0, left: 19.0,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(Images.daemon, scale: 4),
              CustomText(
                '+2XP',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(width: 31.w),
              CustomText(
                'Pyramids',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              Spacer(),
              CustomText(
                'Cairo',
                color: Colors.grey.shade300,
              ),
            ],
          ),
          SizedBox(height: 11.h),
          Row(
            children: [
              Image.asset(
                Images.awardBadgePrize,
                height: 22.h,
                width: 22.w,
              ),
              SizedBox(width: 8.w),
              CustomText('Mission Completed',color: Colors.grey.shade300,),

              Spacer(),
              CustomText(
                '19/07/2025',
                color: Colors.grey.shade300,
              ),
            ],
          ),
          SizedBox(height: 11.h),
          Container(
            height: 1.h,
            width: double.infinity,
            color: Color(0xffFE8769).withValues(alpha: 0.16),
          )
        ],
      ),
    );
  }
}
