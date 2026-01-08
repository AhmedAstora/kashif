import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class NoMissionShotsWidget extends StatelessWidget {
  const NoMissionShotsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          'No mission shots yet!',
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
        ),
        SizedBox(height: 15.h),
        Image.asset(
          Images.camera,
          scale: 4,
        ),
        SizedBox(height: 10.h),
        Container(
          height: 40.h,
          width: 274.w,
          decoration: BoxDecoration(
            color: Color(0x80fe8769),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Images.camerafill,scale: 4,),
              SizedBox(width: 10.w),
              CustomText(
                'Revive your missions with a shot',
                fontWeight: FontWeight.w500,),
            ],
          ),
        ),
      ],
    );
  }
}
