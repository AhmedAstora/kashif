import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/completed_missions_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/message_today_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/message_yesterday_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/my_friends_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/new_cities_added_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/you_and_friend_widget.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/back_arrow_widget.dart';
import '../../../Utilities/CustomWidgets/custom_text.dart';
import '../../ProfileScreen/ui/widget/common_achievements.dart';
import '../../ProfileScreen/ui/widget/conquered_cities.dart';
import '../controller/home_controller.dart';

class FriendsScreen extends StatelessWidget {
  FriendsScreen({super.key});

  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (con) {
        return Scaffold(
          body: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: AppColor.getGradient(stops: [0, 0.7]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 62.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.w),
                  child: Row(
                    children: [
                      BackArrowWidget(),
                      SizedBox(width: 20.w),
                      CustomText(
                        'Friends',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: CustomText(
                        'Journey Together',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24.w),
                      child: CustomText(
                        'See your friends and achievements in common.',
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.w,
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
                        child: Column(
                          children: [
                            Row(
                              children: [
                                CustomText(
                                  'My Friends',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.sp,
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap:
                                    ()=> con.navigationMyFriends(),

                                  child: CustomText(
                                    'see all',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade300,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.h),
                            SizedBox(
                              height: 95.h,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.zero,
                                itemCount: 5,
                                separatorBuilder: (_, i) => SizedBox(width: 20.w),
                                itemBuilder: (_, i) => MyFriendsWidget(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Center(
                      child: CustomText(
                        'Achievements in Common',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    // Center(
                    //   child: CustomText(
                    //     '     Top Match: Ahmed 🎯  Discover what you share!',
                    //   ),
                    // ),
                    Column(
                      children: [
                        Center(
                          child: CustomText(
                            'Invite friends to your current city and discover',
                          ),
                        ),
                          Center(
                            child: CustomText(
                              'what you share',
                            ),
                          ),

                      ],
                    ),
                    SizedBox(height: 8.h),
                    Center(child: Image.asset(Images.search, scale: 4)),
                    SizedBox(height: 26.h),
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 13.w),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 30.w,
                              vertical: 10.h,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                colors: [Color(0x67495da1), Color(0x672a396a)],
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                stops: [0, 1],
                              ),
                            ),
                            child: Column(
                              children: [
                                SizedBox(height: 110.h),
                                // Column(
                                //   children: [
                                //     Row(
                                //       children: [
                                //         Image.asset(
                                //           Images.educationalGameLogo,
                                //           height: 34.h,
                                //           width: 34.w,
                                //         ),
                                //         SizedBox(width: 20.h),
                                //         ConqueredCities(
                                //           title: 'paris',
                                //           image: Images.mosque,
                                //           radius: 25.r,
                                //         ),
                                //         SizedBox(width: 20.h),
                                //         ConqueredCities(
                                //           title: 'Istanbul',
                                //           image: Images.mosque,
                                //           radius: 25.r,
                                //         ),
                                //       ],
                                //     ),
                                //     SizedBox(height: 20.h),
                                //     Row(
                                //       children: [
                                //         Image.asset(Images.awardBadgePrize, scale: 4),
                                //         SizedBox(width: 20.w),
                                //         Expanded(
                                //           child: SizedBox(
                                //             height: 80.h, // ⚠️ مهم جدًا
                                //             child: ListView.separated(
                                //               scrollDirection: Axis.horizontal,
                                //               padding: EdgeInsets.zero,
                                //               itemCount: 5,
                                //               separatorBuilder: (_, i) =>
                                //                   SizedBox(width: 25.w),
                                //               itemBuilder: (_, i) =>
                                //                   CommonAchievements(),
                                //             ),
                                //           ),
                                //         ),
                                //       ],
                                //     ),
                                //   ],
                                // ),
                                Column(
                                  children: [
                                    CustomText(
                                      'No common achievements with Mia yet',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.sp,
                                    ),
                                    SizedBox(height: 8.h),
                                    CustomText(
                                      'Invite her from your current city to',
                                      color: Colors.grey.shade300,
                                    ),
                                    CustomText(
                                      'begin the adventure!',
                                      color: Colors.grey.shade300,
                                    ),
                                    SizedBox(height: 20.h),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        YouAndFriendWidget(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
