import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class GreatJobWidget extends StatelessWidget {
  const GreatJobWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 0,
            color: Color(0x39d0d0d0).withValues(alpha: .02),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: AppColor.profileGradient.withOpacity(.2),
      ),
      child: Column(
        children: [
          CustomText(
            'Great job!  You’re so close to conquering these cities!',
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.only(right: 13.w, left: 19.w),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 65.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.zero,
                      itemCount: 4,
                      separatorBuilder: (_, i) => SizedBox(width: 26.w),
                      itemBuilder: (_, i) => Column(
                        children: [
                          CircleAvatar(
                            radius: 24.r,
                            backgroundImage: AssetImage(Images.mosque),
                          ),
                          CustomText('Cairo', fontSize: 10.sp),
                        ],
                      ),
                    ),
                  ),
                ),
                Image.asset(Images.arrowForwardOutline, scale: 4),
              ],
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
