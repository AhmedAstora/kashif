import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class MissionsShotsWidget extends StatelessWidget {
  const MissionsShotsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 319,
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
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                CustomText('Paris', color: Colors.black),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      'Eiffel Tower',
                      fontSize: 18.sp,
                      color: Colors.black,
                    ),
                    Image.asset(Images.blueLock,scale: 4,)
                  ],
                ),

              ],
            ),
            SizedBox(height: 10.h),
            Container(
              width: double.infinity,
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                image: DecorationImage(
                  image: AssetImage(Images.person),
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
