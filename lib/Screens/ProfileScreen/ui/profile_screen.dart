import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/custom_admin_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/interest_home_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/header_profile_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/custom_new_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                    'Admin',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  Spacer(),
                  Icon(Icons.settings, size: 27.sp, color: Color(0xff293767)),
                ],
              ),
              SizedBox(height: 20.h),
              HeaderProfileWidget(),
              SizedBox(height: 10.h),
              Stack(
                children: [
                  Container(
                    height: 105.h,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    decoration: BoxDecoration(
                      boxShadow: [BoxShadow(blurRadius: 4,
                          spreadRadius: 0,
                          color: Color(0x39d0d0d0).withValues(alpha: .2))],
                      borderRadius: BorderRadius.circular(15),
                      gradient: AppColor.profileGradient.withOpacity(.2)
                    ),
                    child: Column(
                      children: [
                        Image.asset(Images.bank, scale: 4),
                        SizedBox(height: 5.h),
                        CustomText(
                          "Culture & History",
                          fontSize: 11.sp,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
