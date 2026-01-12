import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/carousel_slider_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/conquered_cities_lock_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/conquered_citites_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/make_first_victory_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/missions_shots_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/no_mission_shots_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/one_city_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/slider_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/header_profile_widget.dart';
import 'package:kashif/Screens/SettingsScreen/controller/settings_controller.dart';
import 'package:kashif/Screens/SettingsScreen/ui/widget/container_settings_widget.dart';
import 'package:kashif/Screens/SettingsScreen/ui/widget/log_out_show_dialog_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/custom_new_button.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  final controller = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SettingsController>(
      builder: (con) {
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
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Icon(
                            Icons.arrow_back,
                            size: 30.r,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 20.w),
                        CustomText(
                          'Settings',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 27.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: CustomText(
                      'Account &  Privacy',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ContainerSettingsWidget(
                    title: 'Edit Profile',
                    image: Images.userprofile,
                    haveArrow: false,
                    onTap: () => con.navigationEditProfile(),
                  ),
                  SizedBox(height: 7.h),
                  ContainerSettingsWidget(
                    title: 'Change Password',
                    image: Images.passwordChange,
                    haveArrow: false,
                    onTap: () => con.navigationChangePassword(),
                  ),
                  SizedBox(height: 7.h),
                  ContainerSettingsWidget(
                    title: 'Account Info',
                    image: Images.passport,
                    haveArrow: false,
                  ),
                  SizedBox(height: 7.h),
                  ContainerSettingsWidget(
                    title: 'Privacy Settings',
                    image: Images.privacy,
                    haveArrow: false,
                  ),
                  SizedBox(height: 32.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: CustomText(
                      'Support',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ContainerSettingsWidget(
                    title: 'Report a Problem',
                    image: Images.problem,
                    onTap: () => con.showReportProblemBottomSheet(),
                  ),
                  SizedBox(height: 7.h),
                  ContainerSettingsWidget(
                    title: 'Contact Us',
                    image: Images.headphone,
                  ),
                  SizedBox(height: 32.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: CustomText(
                      'Legal',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ContainerSettingsWidget(
                    title: 'Terms of Use',
                    image: Images.terms,
                  ),
                  SizedBox(height: 7.h),
                  ContainerSettingsWidget(
                    title: 'privacy Policy',
                    image: Images.privacyPolicy,
                  ),
                  SizedBox(height: 32.h),
                  GestureDetector(
                    onTap: () => con.showLogoutDialog(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Row(
                        children: [
                          CustomText(
                            'Logout',
                            color: Color(0xffD92828),
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                          ),
                          SizedBox(width: 13.w),
                          Image.asset(Images.logout, scale: 4),
                        ],
                      ),
                    ),
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
