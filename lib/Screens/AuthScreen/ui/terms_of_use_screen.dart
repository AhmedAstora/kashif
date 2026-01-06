import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Screens/AuthScreen/ui/widgets/interest_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_list_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_new_botton_login.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/back_icon_widget.dart';
import '../../../Utilities/CustomWidgets/custom_check_box.dart';
import '../../../Utilities/CustomWidgets/custom_text.dart';
import '../controller/auth_controller.dart';

class TermsOfUseScreen extends StatelessWidget {
  TermsOfUseScreen({super.key});

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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60.h),
                  Column(
                    children: [
                      Image.asset(Images.logo, scale: 8),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          BackIconWidget(),
                          SizedBox(width: 80.w),
                          Column(
                            children: [
                              CustomText(
                                "Terms of Use",
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 28.h),
                      CustomText(
                        'Welcome to Kashif!  These Terms of Use govern your use of app.',
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      SizedBox(height: 22.h),
                      Row(
                        children: [
                          CustomCheckBox(
                            isTapped: con.isTappedCheckBox,
                            onTap: con.onTapCheckBox,
                          ),
                          SizedBox(width: 4.w),
                          CustomText('I Agree and  Continue', fontSize: 18.sp),
                        ],
                      ),
                      SizedBox(height: 23.h),
                      CustomNewButtonLogin(
                        title: "SIGN UP",
                        isTapped: con.isTappedNavigationHomePage,
                        onTap:()=> con.NavigationHomePage(),
                      ),
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
