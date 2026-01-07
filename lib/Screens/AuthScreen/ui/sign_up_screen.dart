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

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        builder: (con) {
          return Scaffold(
            body: Container(
              height: MediaQuery.of(context).size.height,
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: AppColor.getGradient(stops: [0, 0.27]),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    SizedBox(height: 90.h),
                    Image.asset(Images.logo, scale: 8),
                    SizedBox(height: 10.h),
                    Row(
                      children: [
                        BackIconWidget(),
                        SizedBox(width: 35.w,),
                        Column(
                          children: [
                            CustomText(
                              "Step Into Kashif",
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            CustomText("Let’s get started with your email"),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 60.h),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
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
                          SizedBox(height: 30.h),
                          CustomNewButtonLogin(
                            title: "Next",
                            isTapped: con.isTappedSendCode,
                            onTap:()=> con.onTapSendCode(),
                          ),
                          SizedBox(height: 20.h),
                          CustomText('or sign up with ',),
                          SizedBox(height: 15.h),
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

                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}
