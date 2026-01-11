import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/app_color.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 30.w,
        vertical: 10.h,
      ),
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
      child: Center(
        child: Slider(

          value: 10,
          max: 100,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
