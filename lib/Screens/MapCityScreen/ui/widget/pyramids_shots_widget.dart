import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class PyramidsShotsWidget extends StatelessWidget {
  const PyramidsShotsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        boxShadow: [
          BoxShadow(blurRadius: 26, spreadRadius: 0, color: Color(0x39d0d0d0)),
        ],
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 1],
          colors: [Color(0xff4A5EA3),
            Color(0xff8B9EE0).withOpacity(0.2)
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 61.h,
                    width: 61.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60.r),
                      image: DecorationImage(
                        image: AssetImage(Images.mosque),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 19.w,),
                  Column(
                    children: [
                      CustomText(
                        'Ahmed',
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      CustomText(
                        '@a7med',
                        fontSize: 14.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      CustomText(
                        '8:25 am',
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      CustomText(
                        '29/07/2025',
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 7.h),
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
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }
}
