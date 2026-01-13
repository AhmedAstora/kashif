import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/carousel_slider_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/conquered_cities_lock_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/conquered_citites_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/drop_down_menu_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/make_first_victory_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/missions_shots_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/no_mission_shots_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/one_city_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/slider_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/header_profile_widget.dart';
import 'package:kashif/Screens/SettingsScreen/controller/settings_controller.dart';
import 'package:kashif/Screens/SettingsScreen/ui/widget/container_settings_widget.dart';
import 'package:kashif/Screens/SettingsScreen/ui/widget/log_out_show_dialog_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_new_botton_login.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text_filed_login.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/custom_new_button.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

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
                          'Edit Profile',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 56.h),
                  Center(
                    child: SizedBox(
                      width: 155.r,
                      height: 155.r,
                      child: Stack(
                        children: [
                          SizedBox(
                            width: 137.r,
                            height: 137.r,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                Images.person,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(Images.iconImage, scale: 4),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 90.w),
                    child: CustomText('Your name', color: Colors.grey.shade300),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 34.w),
                    child: CustomTextFieldLogin(
                      controller: TextEditingController(),
                      suffixIcon: Image.asset(Images.editIcon, scale: 4),
                      hintText: '',
                      icon: Images.user,
                    ),
                  ),
                  SizedBox(height: 22.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 90.w),
                    child: CustomText(
                      'Your country',
                      color: Colors.grey.shade300,
                    ),
                  ),
                  DropDownMenuWidget(
                    selectedItem: controller,
                    icon: Images.earth,
                    items: [],
                    onChange: (T) {},
                    displayText: 'Select your country',
                  ),
                  SizedBox(height: 30.h),
                  CustomNewButtonLogin(
                    title: 'Save',
                    onTap: () {},
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
