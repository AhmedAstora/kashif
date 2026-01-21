import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';
import 'location_widget.dart';
import 'missions_now_city_widget.dart';

class CompleteAllCairoWidget extends StatelessWidget {
  const CompleteAllCairoWidget({super.key});

  @override
  Widget build(BuildContext context) {
     return  Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 0,
            color: Color(
              0x39d0d0d0,
            ).withValues(alpha: .02),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: AppColor.profileGradient.withOpacity(
          .2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 12.w),
            child: CustomText(
              'You’re about to complete all Cairo\n missions!',
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 19.w),
            alignment: Alignment.bottomCenter,
            height: 75.h,
            child: Row(
              children: [
                SizedBox(
                  height: 60.h,
                  width: 220.w,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    itemCount: 6,
                    separatorBuilder: (_, i) =>
                        SizedBox(width: 15.w),
                    itemBuilder: (_, i) =>
                        LocationWidget(index: i),
                  ),
                ),
                Spacer(),
                Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    radius: 31.r,
                    backgroundColor: Colors.white,
                    child: ClipOval(
                      child: Image.asset(
                        Images.mosque,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: CustomText(
              'So close! Complete these missions now!',
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 6.w),
            child: SizedBox(
              height: 140.h,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                itemCount: 6,
                separatorBuilder: (_, i) =>
                    SizedBox(width: 9.w),
                itemBuilder: (_, i) =>
                    MissionsNowCityWidget(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
