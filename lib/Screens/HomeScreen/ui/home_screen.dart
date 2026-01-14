import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/custom_admin_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/interest_home_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/custom_new_button.dart';
import '../controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50.h),
                  Row(
                    children: [
                      Image.asset(Images.logo, scale: 17),
                      SizedBox(width: 120.w),
                      CustomText(
                        'Home',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap:()=> con.navigationFriends(),
                        child: Icon(
                          Icons.people_rounded,
                          size: 27.sp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 18.w),
                      GestureDetector(
                         onTap:()=> con.navigationNotification(),
                        child: Icon(
                          Icons.notifications_none,
                          size: 27.sp,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  CustomText(
                    'Welcome, Adam!',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  Row(
                    children: [
                      CustomText(
                        'Turn the world to your playground, Start now!',
                      ),
                      SizedBox(width: 5.w),
                      Image.asset(Images.iconCarrier, scale: 4),
                    ],
                  ),
                  SizedBox(height: 35.h),
                  CustomAdminWidget(),
                  SizedBox(height: 26.h),
                  Center(
                    child: CustomText(
                      'your city is full of missions,',
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                    ),
                  ),
                  Center(
                    child: CustomText(
                      'pick one and go!',
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                    ),
                  ),
                  SizedBox(height: 15.h),
                  SizedBox(
                    height: 150.h,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.zero,
                      itemCount: 5,
                      separatorBuilder: (_, i) => SizedBox(width: 10.w),
                      itemBuilder: (_, i) => InterestHomeWidget(),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomNewButton(
                    title: "Start from another city",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
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
