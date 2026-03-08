import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';
import '../../../HomeScreen/ui/widget/flight_slider_widget.dart';

class CitiesInProgressWidget extends StatelessWidget {
  const CitiesInProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 25.w,
        vertical: 5.h,
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
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          FlightSliderWidget(
            imagePath: Images.person,
            circleRadius: 46.r,
            planeSize: 45.r,
          ),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 8.h),
              CustomText('\tCairo', fontSize: 16.sp),
              SizedBox(height: 5.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText('Progress: '),
                  CustomText('80%'),
                ],
              ),
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
                  CustomText('88/111'),
                ],
              ),
              SizedBox(height: 5.h),
              SizedBox(
                height: 31.h,
                width: 170.w,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    itemCount: 5,
                    separatorBuilder: (_, i) => SizedBox(width: 2.w),
                    itemBuilder: (_, i) => Container(
                      height: 31.h,
                      width: 31.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Image.asset(Images.mosque, fit: BoxFit.cover),
                    )

                ),),
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
