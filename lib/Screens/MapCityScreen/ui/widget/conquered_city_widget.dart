import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/back_arrow_widget.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';
import 'button_conquered_city.dart';
import 'carousel_slider_city_widget.dart';
import 'completed_city_widget.dart';

class ConqueredCityWidget extends StatelessWidget {
  const ConqueredCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 61.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.w),
          child: Row(
            children: [
              BackArrowWidget(),
              SizedBox(width: 114.w),
              CustomText(
                'Cairo',
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
        SizedBox(height: 13.h),
        Center(
          child: ButtonConqueredCity(
            title: 'Conquered City',
            onTap: () {},
          ),
        ),
        SizedBox(height: 14.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomText('Conquered on Sep 2025'),
            Icon(Icons.keyboard_arrow_down, color: Colors.white),
          ],
        ),
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 47.h,
              width: 113.w,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.25),
                    blurRadius: 4,
                    offset: Offset(
                      0,
                      4,
                    ), // changes position of shadow
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xff293767), Color(0xff4A5EA3)],
                  stops: [0.0, 1],
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50.r),
                  bottomRight: Radius.circular(10.r),
                ),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20.w),
                  Image.asset(
                    Images.locationMapGreen,
                    height: 33.h,
                    width: 33.w,
                  ),
                  CustomText(
                    '111',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            SizedBox(width: 3.w),
            Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 71.r,
                  backgroundImage: AssetImage(Images.cairo),
                ),
                Image.asset(
                  Images.educationalGameLogo,
                  height: 81.h,
                  width: 81.w,
                ),
              ],
            ),
            SizedBox(width: 3.w),
            Container(
              height: 47.h,
              width: 113.w,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.25),
                    blurRadius: 4,
                    offset: Offset(
                      0,
                      4,
                    ), // changes position of shadow
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xff293767), Color(0xff4A5EA3)],
                  stops: [0.0, 1],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.r),
                  bottomLeft: Radius.circular(10.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomText(
                    '272',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  Image.asset(
                    Images.daemon,
                    height: 33.h,
                    width: 33.w,
                  ),

                  SizedBox(width: 15.w),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 21.h),
        Center(
          child: CustomText(
            'Your mission shots in Cairo',
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 5.h),
        CarouselSliderCityWidget(),
        SizedBox(height: 20.h),
        Padding(
          padding:  EdgeInsets.only(left: 25.w,right: 21.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                'Friends in Cairo',
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
              SizedBox(height: 12.h),
              Padding(
                padding: EdgeInsets.only(right: 45.w),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 40.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          itemCount: 6,
                          separatorBuilder: (_, i) =>
                              SizedBox(width: 7.w),
                          itemBuilder: (_, i) => CircleAvatar(
                            radius: 17.r,
                            backgroundColor: Colors.white,
                            child: ClipOval(
                              child: Image.asset(
                                Images.person,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    CustomText(
                      'see all',
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 35.h),
              CustomText(
                'Amazing! All missions in Cairo are complete',
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 100.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        itemCount: 6,
                        separatorBuilder: (_, i) =>
                            SizedBox(width: 6.w),
                        itemBuilder: (_, i) => CompletedCityWidget(),
                      ),
                    ),
                  ),
                  SizedBox(width: 15.w),
                  Image.asset(Images.arrowForwardOutline, scale: 4),
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}
