import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class CompletedMissionsWidget extends StatelessWidget {
  const CompletedMissionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      height: 104.h,
      decoration: BoxDecoration(
        color: Color(0xff8B9EE0).withOpacity(0.4),
      ),
      child: Row(
        children: [
          Transform(transform: Matrix4.rotationZ(-0.7 ), alignment: Alignment.center,
            child: Image.asset(
              Images.airPlan,
              scale: 4,
              color: Color(0xffFC8500),
            ),
          ),
          SizedBox(width: 18.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                'You’ve completed 80% of Cairo!',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 3.h),
              CustomText(
                'Just 4 missions left to completing',
                fontWeight: FontWeight.w500,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    'Cairo and earn ',
                    fontWeight: FontWeight.w500,
                  ),
                  CustomText(
                    '150 ',
                    color: Color(0xffFC8500),
                    fontWeight: FontWeight.w500,
                  ),
                  CustomText(
                    'points',
                    fontWeight: FontWeight.w500,
                  ),
                  Image.asset(Images.daemon,scale: 4,),
                  SizedBox(width: 18.w),
                  CustomText(
                    '8h',
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
