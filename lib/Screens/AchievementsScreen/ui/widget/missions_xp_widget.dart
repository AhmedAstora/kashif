import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class MissionsXpWidget extends StatelessWidget {
  const MissionsXpWidget({super.key});

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
                '+5XP',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(width: 31.w),
              CustomText(
                'Luxor',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          SizedBox(height: 11.h),
          Row(
            children: [
              Image.asset(
                Images.educationalGameLogo,
                height: 20.h,
                width: 20.w,
              ),
              SizedBox(width: 8.w),
              CustomText('City Conquered',color: Colors.grey.shade300,),

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
