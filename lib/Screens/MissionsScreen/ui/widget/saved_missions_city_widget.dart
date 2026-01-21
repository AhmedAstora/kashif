import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/saved_missions_widget.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class SavedMissionsCityWidget extends StatelessWidget {
  const SavedMissionsCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 194.h,
      width: 164.w,
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
        borderRadius: BorderRadius.circular(20.r),
        gradient: AppColor.interestGradient,
        border: Border.all(width: 1.w, color: Color(0xff8B9EE0)),
      ),
      child: Column(
        children: [
          CustomText('Cairo',fontSize: 16.sp,fontWeight: FontWeight.w600,),
          SizedBox(
            height: 3.h,
          ),
          GridView.builder(
            padding: EdgeInsets.symmetric(horizontal: 1.w),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              childAspectRatio: 110.w / 150.h, // العرض / الارتفاع
            ),
            itemCount: 4,
            itemBuilder: (context, index) {
              return SavedMissionsWidget();
            },
          ),
        ],
      ),
    );
  }
}
