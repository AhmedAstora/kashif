import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Utilities/Constants/app_color.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class PointXpShowDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 25.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: 270.w,
        padding: EdgeInsets.symmetric(horizontal: 21.w, vertical: 19.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0x67fe8769), Color(0x66293767)],
            stops: [0, 0.7],
          ),
          borderRadius: BorderRadius.circular(20.r),
          boxShadow: [
            BoxShadow(
              blurRadius: 16,
              spreadRadius: 0,
              color: Color(0x39d0d0d0).withValues(alpha: .02),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(Images.daemon, scale: 1.3)),
            Center(
              child: CustomText(
                'How XP works',
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                CircleAvatar(radius: 3.5.r, backgroundColor: Colors.white),
                SizedBox(width: 7.w),
                CustomText('Complete a mission → '),
                CustomText('+2 XP', fontWeight: FontWeight.w600),
              ],
            ),

            SizedBox(height: 10.h),
            Row(
              children: [
                CircleAvatar(radius: 3.5.r, backgroundColor: Colors.white),
                SizedBox(width: 7.w),
                CustomText(
                  'Complete all missions in a city',
                  maxLines: 2,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            CustomText(' → +5 bonus XP', fontWeight: FontWeight.w600),
          ],
        ),
      ),
    );
  }
}
