import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';
import 'city_widget.dart';

class ConqueredCititesWidget extends StatelessWidget {
  const ConqueredCititesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CustomText(
              'Conquered Cities',
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
            Spacer(),
            CustomText('see all', fontSize: 12.sp),
          ],
        ),
        SizedBox(height: 10.h),
        SizedBox(
          height: 200.h,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemCount: 5,
            separatorBuilder: (_, i) => SizedBox(width: 20.w),
            itemBuilder: (_, i) => CityWidget(
              image: Images.mosque,
              title: 'New York',
              radius: 45.r,
            ),
          ),
        ),
      ],
    );
  }
}
