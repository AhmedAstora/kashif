import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/carousel_slider_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/conquered_cities_lock_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/conquered_citites_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/make_first_victory_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/missions_shots_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/no_mission_shots_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/one_city_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/slider_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/header_profile_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/list_city_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/custom_new_button.dart';

class MissionsShotsScreen extends StatelessWidget {
  MissionsShotsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          gradient: AppColor.getGradient(stops: [0, 0.7]),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 62.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7.w),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back, size: 30.r, color: Colors.white),
                    SizedBox(width: 20.w),
                    CustomText(
                      'Missions Shots',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    Spacer(),
                    Image.asset(Images.search, scale: 4),
                    SizedBox(width: 15.w),
                    Image.asset(Images.change, scale: 4),
                  ],
                ),
              ),
              SizedBox(height: 27.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.w),
                child: CustomText(
                  'Every photo marks a step in your journey.',
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 27.h),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.zero,
                  itemCount: 2,
                  separatorBuilder: (_, i) =>
                      SizedBox(height: 20.h),
                  itemBuilder: (_, i) => MissionsShotsWidget(),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
