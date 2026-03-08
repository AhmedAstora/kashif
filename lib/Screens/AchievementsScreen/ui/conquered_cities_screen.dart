import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Screens/AchievementsScreen/ui/widget/cities_in_progress_widget.dart';
import 'package:kashif/Screens/AchievementsScreen/ui/widget/conquered_cities_widget.dart';
import 'package:kashif/Screens/AchievementsScreen/ui/widget/new_missions_cities_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/flight_slider_widget.dart';
import 'package:kashif/Screens/ProfileScreen/controller/profile_controller.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/carousel_slider_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/conquered_cities_lock_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/conquered_citites_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/make_first_victory_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/missions_shots_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/no_mission_shots_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/one_city_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/search_missions_shots_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/slider_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/header_profile_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/back_arrow_widget.dart';
import '../../../Utilities/CustomWidgets/custom_new_button.dart';

class ConqueredCitiesScreen extends StatelessWidget {
  ConqueredCitiesScreen({super.key});

  final controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        builder: (con) {
          return Scaffold(
            body: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: AppColor.getGradient(stops: [0, 0.7]),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 62.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 7.w),
                        child: Row(
                          children: [
                            BackArrowWidget(),
                            SizedBox(width: 15.w),
                            CustomText(
                              'Conquered Cities',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            Spacer(),
                            Image.asset(Images.search, scale: 4),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      SizedBox(
                        height: 190.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          padding: EdgeInsets.zero,
                          itemCount: 3,
                          separatorBuilder: (_, i) => SizedBox(width: 11.w),
                          itemBuilder: (_, i) =>NewMissionsCitiesWidget()
                        ),
                      ),
                      // Center(
                      //   child: Container(
                      //     height: 78.h,
                      //     width: 93.w,
                      //     decoration: BoxDecoration(
                      //       color: Color(
                      //         0xffFE8769,
                      //       ).withValues(alpha: 0.66),
                      //       borderRadius: BorderRadius.circular(20.r),
                      //       boxShadow: [
                      //         BoxShadow(
                      //           color: Colors.black.withOpacity(0.25),
                      //           blurRadius: 4,
                      //         ),
                      //       ],
                      //     ),
                      //     child: Column(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         Image.asset(
                      //           Images.educationalGameLogo,
                      //           height: 32.h,
                      //           width: 32.w,
                      //         ),
                      //         SizedBox(height: 5.h),
                      //         CustomText(
                      //           '5',
                      //           fontSize: 18.sp,
                      //           fontWeight: FontWeight.w500,
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 18.h,
                      ),
                      CustomText('Victory! ',
                          fontSize: 18.sp, fontWeight: FontWeight.w500),
                      CustomText('These are the cities you’ve conquered'),
                      SizedBox(
                        height: 19.h,
                      ),
                      SizedBox(
                        height: 1000.h,
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.zero,
                          itemCount: 4,
                          separatorBuilder: (_, i) => SizedBox(height: 15.w),
                          itemBuilder: (_, i) => ConqueredCitiesWidget(),
                        ),),

                    ],
                  ),
                ),
              ),
            ),
          );
        }
    );
  }
}
