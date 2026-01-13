import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Screens/AuthScreen/ui/widgets/message_password_widget.dart';
import 'package:kashif/Screens/ProfileScreen/controller/profile_controller.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_check_box.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_new_botton_login.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text_field.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text_filed_login.dart';
import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/back_icon_widget.dart';
import '../../../Utilities/CustomWidgets/custom_text.dart';

class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({super.key});

  final controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (con) {
        return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: AppColor.getGradient(stops: [0, 0.27]),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.w),
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
                            'Change Password',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    CustomText('Change your password anytime', fontSize: 16.sp),
                    SizedBox(height: 55.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextFieldLogin(
                            icon: Images.confirmLock,
                            hintText: "Current Password",
                            borderColor: Color(0xff293767),
                            controller: TextEditingController(),
                            borderWidth: 0,
                            hintColor: Colors.white,
                            fontSize: 12.sp,
                          ),
                          // Padding(
                          //   padding: EdgeInsets.symmetric(horizontal: 30.w),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.end,
                          //     children: [
                          //       CustomText(
                          //         'Incorrect current password',
                          //         color: Color(0xffFF4D4D),
                          //         fontSize: 12.sp,
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          SizedBox(height: 15.h),
                          CustomTextFieldLogin(
                            icon: Images.lock,
                            hintText: "New Password",
                            borderColor: Color(0xff293767),
                            controller: TextEditingController(),
                            borderWidth: 0,
                            hintColor: Colors.white,
                            fontSize: 12.sp,
                          ),
                          // Center(child: MessagePasswordWidget()),
                          SizedBox(height: 15.h),
                          CustomTextFieldLogin(
                            icon: Images.confirmLock,
                            hintText: "Confirm Password",
                            borderColor: Color(0xff293767),
                            controller: TextEditingController(),
                            borderWidth: 0,
                            hintColor: Colors.white,
                            fontSize: 12.sp,
                          ),
                          SizedBox(height: 25.h),
                          CustomText(
                            'Forgot password?',
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(height: 35.h),
                        ],
                      ),
                    ),
                    CustomNewButtonLogin(title: "change"),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
