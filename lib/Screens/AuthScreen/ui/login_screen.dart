import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_check_box.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_new_botton_login.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text_field.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text_filed_login.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/back_icon_widget.dart';
import '../../../Utilities/CustomWidgets/custom_text.dart';
import '../controller/auth_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (con) {
        return Scaffold(
          body: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: AppColor.getGradient(stops: [0, 0.27]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),

                  child: Column(
                    children: [
                      SizedBox(height: 60.h),
                      Image.asset(Images.logo, scale: 8),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          BackIconWidget(),
                          SizedBox(width: 60.w),
                          Column(
                            children: [
                              CustomText(
                                "Welcome Back!",
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              CustomText("Your next mission awaits"),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomTextFieldLogin(
                        icon: Images.user,
                        hintText: "Email",
                        borderColor: Color(0xff293767),
                        controller: TextEditingController(),
                        borderWidth: 0,
                        hintColor: Colors.white,
                        fontSize: 12.sp,
                      ),
                      SizedBox(height: 15.h),
                      CustomTextFieldLogin(
                        icon: Images.lock,
                        hintText: "Password",
                        borderColor: Color(0xff293767),
                        controller: TextEditingController(),
                        borderWidth: 0,
                        hintColor: Colors.white,
                        fontSize: 12.sp,
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          CustomCheckBox(
                            isTapped: con.isTappedCheckBox,
                            onTap: con.onTapCheckBox,
                          ),
                          SizedBox(width: 10.w),
                          CustomText("Remember Me", color: Colors.white),
                          SizedBox(width: 60.w),
                          InkWell(
                            onTap:()=> con.NavigationForgotPassword(),
                            child: CustomText(
                              "Forgot Password?",
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
                CustomNewButtonLogin(
                  title: "Login".toUpperCase(),
                  isTapped: con.isTappedForgotPassword,
                  onTap:()=> con.onTapForgotPassword(),
                ),
                CustomText('or', fontSize: 16.sp, fontWeight: FontWeight.w600),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(Images.circleapple, scale: 4),
                    Image.asset(Images.circlegoogle, scale: 4),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
