import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/carousel_slider_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/city_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/common_achievements.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/completed_missions.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/conquered_cities.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/conquered_cities_lock_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/conquered_citites_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/make_first_victory_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/no_mission_shots_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/one_city_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/slider_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/header_profile_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/custom_new_button.dart';

class FriendsProfileScreen extends StatelessWidget {
  FriendsProfileScreen({
    super.key,
    this.oneCity = true,
    this.manyCities = true,
    this.conqueredCities = true,
    this.iconAppbar = true,
  });

  final bool oneCity;
  final bool iconAppbar;
  final bool manyCities;
  final bool conqueredCities;
  late final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            gradient: AppColor.getGradient(stops: [0, 0.7]),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 64.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.arrow_back, size: 30.r, color: Colors.white),
                    SizedBox(width: 120.w),
                    CustomText(
                      'Sarah',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    Spacer(),
                    iconAppbar
                        ? Image.asset(Images.removeUser, scale: 4)
                        : Image.asset(Images.addButton, scale: 7),
                  ],
                ),
                SizedBox(height: 15.h),
                HeaderProfileWidget(),
                SizedBox(height: 10.h),
                // Column(
                //   children: [
                //     SizedBox(
                //       height: 30.h,
                //     ),
                //     CustomText(
                //       'Sarah hasn’t started their journey yet.',
                //       fontSize: 16.sp,
                //       fontWeight: FontWeight.w600,
                //     ),
                //     SizedBox(
                //       height: 10.h,
                //     ),
                //     CustomText(
                //       'Go to the city you’re exploring now',
                //     ),
                //     CustomText(
                //       'and send Sarah an invite to start',
                //     ),
                //     CustomText(
                //       'her journey too.',
                //     ),
                //   ],
                // ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                      horizontal: 19.w, vertical: 10.h),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        'Common Achievements',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ConqueredCities(
                            title: 'paris',
                            image: Images.mosque,
                            radius: 25.r,
                          ),
                          SizedBox(width: 10.h),
                          ConqueredCities(
                            title: 'Istanbul',
                            image: Images.mosque,
                            radius: 25.r,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        height: 80.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          itemCount: 5,
                          separatorBuilder: (_, i) => SizedBox(width: 25.w),
                          itemBuilder: (_, i) => CommonAchievements(),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                CarouselSliderWidget(),
                SizedBox(
                  height: 10.h,
                ),
                TabBar(
                  indicatorColor: Colors.grey.shade400,
                  dividerColor: Colors.grey,
                  dividerHeight: 1.4,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white60,
                  tabs: [
                    Tab(text: 'Conquered Cities'),
                    Tab(text: 'Completed Missions'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 10.h,
                          ),
                          // Column(
                          //   children: [
                          //     Image.asset(Images.lockFill,scale: 4,),
                          //     SizedBox(
                          //       height: 10.h,
                          //     ),
                          //     CustomText('Sarah chose to keep their conquered',fontSize: 16.sp,color: Colors.grey.shade300,),
                          //     CustomText('cities hidden.',fontSize: 16.sp,color: Colors.grey.shade300,)
                          //   ],
                          // ),

                          SizedBox(
                            height: 100.h,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.zero,
                              itemCount: 5,
                              separatorBuilder: (_, i) => SizedBox(width: 25.w),
                              itemBuilder: (_, i) =>
                                  ConqueredCities(
                                      title: 'Paris' , image: Images.mosque, radius: 38.r,),
                            ),
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          SizedBox(
                            height: 15.h,
                          ),
                          SizedBox(
                            height: 100.h,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.zero,
                              itemCount: 3,
                              separatorBuilder: (_, i) => SizedBox(width: 20.w),
                              itemBuilder: (_, i) => CompletedMissions(),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
