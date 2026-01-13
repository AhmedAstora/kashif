import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class CompletedMissions extends StatelessWidget {
  const CompletedMissions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 71.h,
          width: 80.w,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r)),
          child: Stack(
            children: [
              Align(child: Image.asset(Images.mosque),alignment: Alignment.centerRight,),
              Align(
                child: Image.asset(Images.awardBadgePrize, scale: 4),
                alignment: Alignment.topLeft,
              ),
            ],
          ),
        ),
        CustomText('Pyramids', fontSize: 9.sp),
      ],
    );
  }
}
