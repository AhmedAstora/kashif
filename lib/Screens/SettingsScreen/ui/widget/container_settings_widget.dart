import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class ContainerSettingsWidget extends StatelessWidget {
  ContainerSettingsWidget
      ({

    super.key

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 0,
            color: Color(0x3f8b9ee0),
          ),
        ],
        color: Color(0x4d8b9ee0),
        borderRadius: BorderRadius.circular(10),
        gradient: AppColor.interestGradient,
        border: Border.all(
          width: 1.w,
          color: Color(0xff8B9EE0),
        ),
      ),
      child: Row(
        children: [
          Image.asset(Images.userprofile, scale: 4),
          SizedBox(width: 20.w),
          CustomText(
            'Edit Profile',
          ),
        ],
      ),
    );
  }
}
