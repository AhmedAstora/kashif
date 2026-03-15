import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kashif/Screens/AchievementsScreen/ui/widget/achievements_widget.dart';
import 'package:kashif/Screens/AchievementsScreen/ui/widget/completed_achievements_widget.dart';
import 'package:kashif/Screens/AchievementsScreen/ui/widget/great_job_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/flight_slider_widget.dart';
import 'package:kashif/Screens/MapCityScreen/ui/widget/city_widget.dart';
import 'package:kashif/Screens/MapCityScreen/ui/widget/completed_city_widget.dart';
import 'package:kashif/Screens/MapCityScreen/ui/widget/user_preference_filters_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/back_arrow_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../ProfileScreen/ui/widget/conquered_cities.dart';

class CityScreen extends StatelessWidget {
  CityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(gradient: AppColor.getGradientMap()),
        child: SingleChildScrollView(
          child: Column(
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
                              Images.daemon,
                              height: 40.h,
                              width: 40.w,
                            ),
                            CustomText(
                              '176',
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
                              '88/111',
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 41.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 26.w),
                        child: CustomText(
                          'Great Work!',
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 26.w, right: 16.w),
                        child: CustomText('You’ve completed these missions.'),
                      ),
                      SizedBox(height: 10.h),
                    ],
                  ),
                  Column(
                    children: [
                      FlightSliderWidget(
                        progress: 0.8,
                        imagePath: Images.cairo,
                        circleRadius: 46.r,
                      ),
                      CustomText(
                        '80%',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffFE8769),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsets.only(right: 25.w, left: 21.w),
                child: Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 100.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          itemCount: 6,
                          separatorBuilder: (_, i) => SizedBox(width: 6.w),
                          itemBuilder: (_, i) => CompletedCityWidget(),
                        ),
                      ),
                    ),
                    SizedBox(width: 15.w),
                    Image.asset(Images.arrowForwardOutline, scale: 4),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.only(left: 26.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      'Friends in Cairo',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(right: 62.w),
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40.h,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.zero,
                                itemCount: 6,
                                separatorBuilder: (_, i) => SizedBox(width: 7.w),
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
                    // Center(
                    //   child: Container(
                    //     height: 46.h,
                    //     width: 213.w,
                    //     child: Center(
                    //       child: CustomText(
                    //         'Invite your friend to Cairo',
                    //         fontWeight: FontWeight.w500,
                    //       ),
                    //     ),
                    //     decoration: BoxDecoration(
                    //       boxShadow: [
                    //         BoxShadow(
                    //           color: Color(0xff023047).withValues(alpha: 0.30),
                    //           blurRadius: 4,
                    //           offset: Offset(
                    //             0,
                    //             4,
                    //           ), // changes position of shadow
                    //         ),
                    //       ],
                    //       color: Color(0x7efe8769),
                    //       borderRadius: BorderRadius.circular(10.r),
                    //     ),
                    //   ),
                    // ),
                    SizedBox(height: 30.h),
                    CustomText(
                      'Just a few steps away from victory',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    SizedBox(height: 5.h),
                    SizedBox(
                      height: 60.h,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.zero,
                        itemCount: 6,
                        separatorBuilder: (_, i) => SizedBox(width: 8.w),
                        itemBuilder: (_, i) =>
                            UserPreferenceFiltersWidget(index: i),
                      ),
                    ),
                    SizedBox(height: 18.h),
                    SizedBox(
                      height: 400.h,
                      child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.zero,
                        itemCount: 2,
                        separatorBuilder: (_, i) => SizedBox(height: 2.w),
                        itemBuilder: (_, i) => CityWidget(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
