import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class CompletedCityWidget extends StatelessWidget {
  CompletedCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 99.w,
      height: 95.h,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.2),
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(
          color: Color(0xff4A5EA3),
          width: 1.w,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xff4A5EA3),
            blurRadius: 5,
            offset: Offset(1, 0),
          ),
        ],
      ),
      child: Stack(
        children: [
          SizedBox(height: 5.h),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 58.h,
              width: 58.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  15.r,
                ),
                image: DecorationImage(
                  image: AssetImage(Images.mosque),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 10.h,
            left: 8.w,
            child: Image.asset(
              Images.awardBadgePrize,
              height: 32.h,
              width: 32.w,

            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.h),
              child: CustomText(
                'Pyramids',
                fontSize: 11.sp,
                textAlign: TextAlign.center,
                maxLines: 2,

              ),
            ),
          ),
        ],
      ),
    );
  }
}