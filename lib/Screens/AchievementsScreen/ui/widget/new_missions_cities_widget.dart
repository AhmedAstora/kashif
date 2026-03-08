import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class NewMissionsCitiesWidget extends StatelessWidget {
  const NewMissionsCitiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 143.w,
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
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
      child: Column(
        children: [
          Image.asset(
            Images.newMissions,
          ),
          SizedBox(
            height: 5.h,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 35.r,
                child: ClipOval(child: Image.asset(Images.mosque, fit: BoxFit.cover)),
              ),
              Image.asset(Images.educationalGameLogo,scale: 3.5,),
            ],
          ),
          CustomText(
            'Paris',
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: SizedBox(
                  height: 30.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    itemCount: 3,
                    separatorBuilder: (_, i) => SizedBox(width: 4.w),
                    itemBuilder: (_, i) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 24.h,
                          width: 24.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.asset(Images.mosque, fit: BoxFit.cover),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Image.asset(Images.arrowForwardOutline, scale: 8),
            ],
          ),
        ],
      ),
    );
  }
}
