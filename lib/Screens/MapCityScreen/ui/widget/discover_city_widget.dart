import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class DiscoverCityWidget extends StatelessWidget {
  const DiscoverCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 111.w,
      decoration: BoxDecoration(
        color: Color(0x328b9ee0).withOpacity(.1),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Container(
            height: 85.h,
            width: 99.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              image: DecorationImage(
                image: AssetImage(Images.mosque),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 85.w,
            child: CustomText(
              'Al-Azhar Park',
              fontSize: 12.sp,
              textAlign: TextAlign.center,
              maxLines: 2,
            ),
          ),

        ],
      ),
    );
  }
}
