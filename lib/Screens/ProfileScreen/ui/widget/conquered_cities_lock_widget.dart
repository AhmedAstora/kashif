import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Utilities/Constants/app_color.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class ConqueredCitiesLockWidget extends StatelessWidget {
  const ConqueredCitiesLockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomText(
              'Conquered Cities',
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade400,
              fontSize: 16.sp,
            ),
            SizedBox(width: 10.w),
            Image.asset(Images.lockFill, scale: 4),
          ],
        ),
        CustomText(
          'Finish all missions and the city is yours!',
          color: Colors.grey.shade400,
        ),
        SizedBox(height: 10.h),
        Stack(
          alignment: AlignmentGeometry.center,
          children: [
            CircleAvatar(
              radius: 40.r,
              backgroundColor: AppColor.secondary,
              child: ClipOval(
                child: Image.asset(
                  Images.mosque,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            CircleAvatar(
              radius: 40.r,
              backgroundColor: Colors.black.withOpacity(0.4),
            ),
            Image.asset(Images.lockFill, scale: 4),
          ],
        ),
      ],
    );
  }
}
