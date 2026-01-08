import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Screens/AuthScreen/ui/widgets/message_password_widget.dart';
import 'package:kashif/Screens/AuthScreen/ui/widgets/password_must_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_check_box.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_new_botton_login.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text_field.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text_filed_login.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/back_icon_widget.dart';
import '../../../Utilities/CustomWidgets/custom_text.dart';
import '../../ProfileScreen/ui/widget/list_city_widget.dart';
import '../controller/auth_controller.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({super.key});

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

                      Row(
                        children: [
                          BackIconWidget(),
                          SizedBox(width: 30.w),
                          Column(
                            children: [
                              SizedBox(height: 15.h),
                              CustomText(
                                "Create New Password",
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              CustomText("Choose a strong password you can"),
                              CustomText("remember."),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 39.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomTextFieldLogin(
                        icon: Images.lock,
                        hintText: "New Password",
                        borderColor: Color(0xff293767),
                        controller: TextEditingController(),
                        borderWidth: 0,
                        hintColor: Colors.white,
                        fontSize: 12.sp,
                      ),
                      //MessagePasswordWidget(),
                      SizedBox(height: 15.h),
                      CustomTextFieldLogin(
                        icon: Images.confirmlock,
                        hintText: "Confirm Password",
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
                  title: "Update Password",
                  isTapped: con.isTappedUpdatePassword,
                  onTap: () => con.onTapUpdatePassword(),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
