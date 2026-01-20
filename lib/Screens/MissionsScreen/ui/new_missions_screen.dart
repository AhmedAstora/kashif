import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/custom_admin_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/interest_home_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/location_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/missions_city_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/missions_now_city_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/custom_new_button.dart';

class NewMissionsScreen extends StatelessWidget {
  NewMissionsScreen({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 61.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(Images.logo, scale: 17),
                    SizedBox(width: 100.w),
                    CustomText(
                      'Missions',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    Spacer(),
                    GestureDetector(
                      child: Icon(
                        Icons.bookmark_border,
                        size: 40.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                TabBar(
                  indicatorColor: Colors.grey.shade400,
                  dividerColor: Colors.grey,
                  dividerHeight: 1.4,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white60,
                  tabs: [
                    Tab(text: 'Solo'),
                    Tab(text: 'Clans'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 15.h),
                          Image.asset(Images.missionsButton, scale: 4),
                          SizedBox(height: 15.h),
                          SizedBox(
                            height: 140.h,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.zero,
                              itemCount: 5,
                              separatorBuilder: (_, i) => SizedBox(width: 12.w),
                              itemBuilder: (_, i) => MissionsCityWidget(),
                            ),
                          ),
                          Container(
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
                          ),

                        ],
                      ),

                      Column(children: [SizedBox(height: 15.h)]),
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
