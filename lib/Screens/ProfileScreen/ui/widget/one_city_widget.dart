import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class OneCityWidget extends StatelessWidget {
  const OneCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30.r,
          child: ClipOval(
            child: Image.asset(
              Images.mosque,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment:
          CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText('Paris', fontSize: 16.sp),
            CustomText(
              'Paris has many more secrets,  keep going!',
              fontSize: 12.sp,
            ),
          ],
        ),
      ],
    );
  }
}
