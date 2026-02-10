import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';

class FriendCard extends StatelessWidget {
  FriendCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 157.h,
      width: 163.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 0,
            color: Color(0x39d0d0d0).withValues(alpha: .02),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: AppColor.profileGradient.withOpacity(.2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 90.h,
            width: 80.w,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CircleAvatar(
                  radius: 33,
                  backgroundImage: AssetImage(Images.person),
                ),
                Positioned(
                  bottom: -10,
                  child: Image.asset(Images.addButton, scale: 7),
                ),
              ],
            ),
          ),
          CustomText('ahmed'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(Images.locationMap, height: 20.h, width: 20.w),
              CustomText('Cairo'),
              SizedBox(width: 16),
              Image.asset(Images.daemon, height: 25.h, width: 25.w),
              CustomText('982XP'),
            ],
          ),
        ],
      ),
    );
  }
}
