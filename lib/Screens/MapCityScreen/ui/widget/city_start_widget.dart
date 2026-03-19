import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Screens/MapCityScreen/ui/widget/discover_city_widget.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/back_arrow_widget.dart';
import '../../../../Utilities/CustomWidgets/custom_new_button.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';
import '../../../HomeScreen/ui/widget/flight_slider_widget.dart';
import '../../../MissionsScreen/ui/widget/location_widget.dart';
import '../../../MissionsScreen/ui/widget/missions_now_city_widget.dart';

class CityStartWidget extends StatelessWidget {
   CityStartWidget({super.key,this.cityNoFriends=false,});

  bool cityNoFriends ;
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 47.h,
                  width: 227.w,
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
                      colors: [
                        Color(0xff293767),
                        Color(0xff4A5EA3),
                      ],
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
                        Images.daemon,
                        height: 40.h,
                        width: 40.w,
                      ),
                      CustomText(
                        '0',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(width: 10.w),
                      Image.asset(
                        Images.locationMapGreen,
                        height: 40.h,
                        width: 40.w,
                      ),
                      CustomText(
                        '0/111',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 23.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.w),
                  child: CustomText(
                    'Let’s begin your Cairo\n journey!',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(width: 30.w),
            Column(
              children: [
                FlightSliderWidget(
                  progress: 0.0,
                  imagePath: Images.cairo,
                  circleRadius: 46.r,
                ),
                CustomText(
                  '0%',
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffFE8769),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 40.h),
        SizedBox(
          height: 60.h,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 102.w),
            itemCount: 6,
            separatorBuilder: (_, i) => SizedBox(width: 7.w),
            itemBuilder: (_, i) => LocationWidget(index: i),
          ),
        ),
        SizedBox(height: 30.h),
        Padding(
          padding: EdgeInsets.only(left: 26.w, right: 26.w),
          child: cityNoFriends?Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                'Your friends have already explored Cairo, join them!"',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.only(right: 20.w),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 40.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.only(left: 20.w),
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
                    SizedBox(width: 20.w),
                    CustomText(
                      'see all',
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 33.h),
              CustomText(
                'Here are the nearest missions waiting for you.',
              ),
              SizedBox(height: 5.h),
              SizedBox(
                height: 140.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  itemCount: 6,
                  separatorBuilder: (_, i) => SizedBox(width: 9.w),
                  itemBuilder: (_, i) => MissionsNowCityWidget(),
                ),
              ),
              SizedBox(height: 48.h),
              CustomNewButton(
                title: 'Start your first mission',
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
              ),
            ],
          ):Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CustomText(
                  'Be the first among your friends to \nconquer Cairo!',
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 33.h),
              CustomText(
                'Discover Cairo’s most iconic missions.',
              ),
              SizedBox(height: 5.h),
              SizedBox(
                height: 115.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  itemCount: 6,
                  separatorBuilder: (_, i) => SizedBox(width: 9.w),
                  itemBuilder: (_, i) => DiscoverCityWidget(),
                ),
              ),
              SizedBox(height: 53.h),
              CustomNewButton(
                title: 'Start your first mission',
                fontWeight: FontWeight.w500,
                fontSize: 16.sp,
              ),
            ],
        ),
        ),
      ],
    );
  }
}
