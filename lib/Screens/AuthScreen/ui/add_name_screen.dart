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

class AddNameScreen extends StatelessWidget {
  AddNameScreen({super.key});

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
                      ],
                    ),
                  ),
                  SizedBox(height: 37.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 36.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          "What should we call you?",
                          fontSize: 16.sp,
                        ),
                        SizedBox(height: 10.h),
                        CustomTextFieldLogin(
                          icon: Images.user,
                          hintText: "Name",
                          borderColor: Color(0xff293767),
                          controller: TextEditingController(),
                          borderWidth: 0,
                          hintColor: Colors.white,
                          fontSize: 12.sp,
                        ),
                        SizedBox(height: 15.h),
                        CustomText(
                          "Claim your Kashif tag",
                          fontSize: 16.sp,
                        ),
                        SizedBox(height: 10.h),
                        CustomTextFieldLogin(
                          icon: Images.username,
                          hintText: "Username",
                          borderColor: Color(0xff293767),
                          controller: TextEditingController(),
                          borderWidth: 0,
                          hintColor: Colors.white,
                          fontSize: 12.sp,
                        ),
                        SizedBox(height: 40.h),
                      ],
                    ),
                  ),
                  CustomNewButtonLogin(
                    title: "Next",
                    isTapped: con.isTappedNavigationPhotoSignUp,
                    onTap: ()=>con.NavigationPhotoSignUp(),
              
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
