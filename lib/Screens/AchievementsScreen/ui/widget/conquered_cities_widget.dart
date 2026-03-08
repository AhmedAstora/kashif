import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';
import '../../../HomeScreen/ui/widget/flight_slider_widget.dart';

class ConqueredCitiesWidget extends StatelessWidget {
  const ConqueredCitiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.w,
        vertical: 5.h,
      ),
      decoration: BoxDecoration(
        color: Color(0xff4A5EA3).withOpacity(.5),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 0,
            color: Color(0x39d0d0d0).withValues(alpha: .02),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(
                radius: 45.r,
                  child: ClipOval(child: Image.asset(Images.mosque, fit: BoxFit.cover)),
              ),
              Image.asset(Images.educationalGameLogo,scale: 3,),
            ],
          ),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.h),
              CustomText('\tParis', fontSize: 16.sp),
              SizedBox(height: 5.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Images.locationMap,
                    height: 23.h,
                    width: 23.w,
                  ),
                  SizedBox(width: 5.w),
                  CustomText('100'),
                  SizedBox(
                    width: 30.w,
                  ),
                  Image.asset(
                    Images.daemon,
                    height: 23.h,
                    width: 23.w,
                  ),
                  SizedBox(width: 5.w),
                  CustomText('205'),
                ],
              ),

              SizedBox(
                height: 31.h,
                width: 120.w,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    itemCount: 3,
                    separatorBuilder: (_, i) => SizedBox(width: 2.w),
                    itemBuilder: (_, i) => CircleAvatar(
                      radius: 12.r,
                      backgroundColor: AppColor.grey,
                      child: ClipOval(
                        child: Image.asset(Images.mosque, fit: BoxFit.cover),
                      ),
                    )

                ),),

              SizedBox(height: 5.h),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText('19/07/2025',color: Colors.grey.shade300,),
                  SizedBox(
                    width: 48.w,
                  ),
                  CustomText('3:25pm',color: Colors.grey.shade300,),
                ],
              ),
              SizedBox(height: 5.h),
              SizedBox(height: 8.h),
            ],
          ),
          Spacer(),
          Image.asset(Images.arrowForwardOutline, scale: 4),
        ],
      ),
    );
  }
}
