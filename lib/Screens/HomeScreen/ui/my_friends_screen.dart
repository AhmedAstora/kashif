import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Screens/HomeScreen/controller/home_controller.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/completed_missions_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/message_today_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/message_yesterday_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/my_friends_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/new_cities_added_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/see_all_my_friends_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/you_and_friend_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/back_arrow_widget.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/custom_text.dart';
import '../../ProfileScreen/ui/widget/common_achievements.dart';
import '../../ProfileScreen/ui/widget/conquered_cities.dart';

class MyFriendsScreen extends StatelessWidget {
  MyFriendsScreen({super.key});

  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (con) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
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
                          'My Friends',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        Spacer(),
                        Image.asset(Images.search, scale: 4),
                        SizedBox(width: 17.w),
                        GestureDetector(
                          onTap:()=> con.navigationAddFriend(),
                          child: Image.asset(Images.addFriends, scale: 4),
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
                          'Connect with friends, share progress, and keep conquering cities!',
                        ),
                      ),
                      SizedBox(height: 25.h),
                      SizedBox(
                        height: 1000.h,
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.zero,
                          itemCount: 10,
                          separatorBuilder: (_, i) => SizedBox(height: 10.h),
                          itemBuilder: (_, i) => SeeAllMyFriendsWidget(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
