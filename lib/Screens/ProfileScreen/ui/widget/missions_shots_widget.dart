import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class MissionsShotsWidget extends StatelessWidget {
  const MissionsShotsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        boxShadow: [
          BoxShadow(
            blurRadius: 26,
            spreadRadius: 0,
            color: Color(0x39d0d0d0),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white.withOpacity(0.3),
            Colors.white.withOpacity(0.2),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    CustomText('Paris', color: Colors.black),
                    CustomText(
                      'Eiffel Tower',
                      fontSize: 18.sp,
                      color: Colors.black,
                    ),


                  ],
                ),
                SizedBox(
                  width: 110.w,
                ),
                Image.asset(Images.blueLock,scale: 4,),
              ],
            ),
            SizedBox(height: 10.h),
            Container(
              height: 230.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                  image: AssetImage(Images.mosque),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height:5.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 10.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    '29/07/2025',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  Spacer(),
                  CustomText(
                    '8:25 am',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
