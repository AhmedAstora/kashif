import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Screens/SplashScreen/controller/splash_controller.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/custom_new_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      builder: (con) {
        return Scaffold(
          body: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(gradient: AppColor.getGradient()),
            child: Column(
              children: [
                SizedBox(height: 232.h),
                Image.asset(Images.logo, scale: 4),
                CustomText(
                  "Every City is a Game",
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w700,
                ),
                CustomText(
                  "Travel, play and conquer one city at a time",
                  fontSize: 16.sp,
                ),
                SizedBox(height: 47.h),
                CustomNewButton(
                  title: "Login",
                  isTapped: con.isTappedLogin,
                  onTap: () => con.onTapLogin(),
                ),
                SizedBox(height: 10.h),
                CustomNewButton(
                  title: "Sign Up",
                  isTapped: con.isTappedSignUp,
                  onTap: () => con.onTapSignUp(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
