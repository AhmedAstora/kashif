import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:kashif/Screens/AuthScreen/controller/auth_controller.dart';
import 'package:kashif/Screens/SplashScreen/controller/splash_controller.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_button.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_new_botton_login.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text_field.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text_filed_login.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/back_icon_widget.dart';
import '../../../Utilities/CustomWidgets/custom_new_button.dart';
import '../../../Utilities/CustomWidgets/custom_text.dart';

class SendCodeScreen extends StatelessWidget {
  SendCodeScreen({super.key,this.isFromLoin= false});
  bool isFromLoin ;
  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (con) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: AppColor.getGradient(stops: [0, 0.27]),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 110.h),
                  Row(
                    children: [
                      BackIconWidget(),
                      SizedBox(width: 38.w),
                      Image.asset(Images.sendcodelogo, scale: 4),
                    ],
                  ),
                  SizedBox(height: 10.h),

                  CustomText(
                    "Check your inbox!",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  CustomText(
                    " We sent a 4-digit code to your email",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(height: 37.h),

                  Row(
                    children: [
                      CustomText("Didn’t you receive the code?"),
                      CustomText(" Resend code", color: AppColor.primary),
                      SizedBox(height: 38.h),
                    ],
                  ),
                  CustomNewButtonLogin(
                    title: "confirm",
                    isTapped: con.isTappedConfirm,
                    onTap:()=> con.onTapConfirm(isFromLoin),
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
