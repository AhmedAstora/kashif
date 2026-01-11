import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Utilities/Constants/app_color.dart';

import '../../../../Utilities/CustomWidgets/custom_text.dart';

class LogOutShowDialogWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 25.w),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 19.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomCenter,
            colors: [Color(0xff8B9EE0), Color(0xff293767)],
            stops: [0, 1],
          ),
          borderRadius: BorderRadius.circular(12),
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
          children: [
            CustomText(
              'Are you leaving Kashif now?',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
            SizedBox(height: 10.h),
            CustomText('Come back anytime, your progress is saved'),
            SizedBox(height: 34.h),
            CustomText('Cancel', fontSize: 16.sp, onTap: () => Get.back()),
            SizedBox(height: 13.h),
            Container(
              height: 0.5.h,
              color: Color(0xffFFFFFF).withValues(alpha: 0.1),
            ),
            SizedBox(height: 13.h),
            CustomText(
              'Leave',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Color(0xffD92828),
            ),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }
}
