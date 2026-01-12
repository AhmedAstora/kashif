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

class PhotoSignUpScreen extends StatelessWidget {
  PhotoSignUpScreen({super.key});

  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (con) {
        return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: AppColor.getGradient(stops: [0, 0.27]),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 60.h),
                  Image.asset(Images.logo, scale: 8),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
              
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            BackIconWidget(),
                            SizedBox(width: 80.w),
                            Column(
                              children: [
                                CustomText(
                                  "Your Identity",
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: CustomText(
                            "let others see the face behind the\n journey",
                            fontSize: 16.sp,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Center(
                          child: SizedBox(
                            height: 185.h,
                            width: 170.w,
                            child: Stack(
                              children: [
                                Image.asset(Images.addPhoto, scale: 4),
                                Positioned(
                                  bottom: 1,
                                  right: 1,
                                  child: Image.asset(Images.addButton, scale: 4),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Image.asset(Images.union, scale: 4),
                              Column(
                                children: [
                                  CustomText(
                                    "Pick your photo now or skip",
                                    fontSize: 16.sp,
                                  ),
                                  CustomText(
                                    " and add it later",
                                    fontSize: 16.sp,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 30.h),
                      ],
                    ),
                  ),
                  CustomNewButtonLogin(
                    title: "Next",
                    isTapped: con.isTappedNavigationAboutYouSignUp,
                    onTap:()=> con.navigationAboutYouSignUp(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomText(
                        "SKIP",
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 5.w),
                      Image.asset(Images.rightArrowBack, scale: 4),
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
