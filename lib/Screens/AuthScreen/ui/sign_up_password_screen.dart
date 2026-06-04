import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Screens/AuthScreen/ui/widgets/message_password_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_check_box.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_new_botton_login.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text_field.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text_filed_login.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/back_icon_widget.dart';
import '../../../Utilities/CustomWidgets/custom_text.dart';
import '../controller/auth_controller.dart';

class SignUpPasswordScreen extends StatelessWidget {
  SignUpPasswordScreen({super.key});

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
                            SizedBox(width: 70.w),
                            Column(
                              children: [
                                CustomText(
                                  "Password",
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                                CustomText("Secure your Adventure"),
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
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // 1. حقل كلمة المرور الجديد
                        CustomTextFieldLogin(
                          icon: Images.lock,
                          hintText: "New Password",
                          isPassword: true,
                          borderColor: Color(0xff293767),
                          onChange:  (val) {
                            con.update();
                          },
                          // الربط مع الكنترولر الموجود في AuthController
                          controller: con.passwordController,
                          // الربط مع الـ FocusNode للتحكم بظهور الرسالة
                          focusNode: con.passwordFocusNode,
                          borderWidth: 0,
                          hintColor: Colors.white,
                          fontSize: 12.sp,
                        ),

                        // 2. إظهار رسالة المتطلبات فقط عند التركيز
                        if (con.isPasswordFocused)
                          MessagePasswordWidget(con: con,),

                        SizedBox(height: 15.h),

                        // 3. حقل تأكيد كلمة المرور
                        CustomTextFieldLogin(
                          icon: Images.confirmLock,
                          isPassword: true,
                          hintText: "Confirm Password",
                          borderColor: Color(0xff293767),
                          controller: con.confirmPasswordController,
                          borderWidth: 0,
                          hintColor: Colors.white,
                          fontSize: 12.sp,
                        ),

                        // 4. رسالة التطابق (تظهر فقط عند التطابق)
                        if (con.passwordsMatch)
                          Padding(
                            padding: EdgeInsets.only(right: 15.h),
                            child: CustomText(
                                "Passwords match",
                                color: Colors.green,
                                fontSize: 12.sp
                            ),
                          ),
                        SizedBox(height: 40.h),
                      ],
                    ),
                  ),
                  CustomNewButtonLogin(
                    title: "Next",
                    isTapped: con.isTappedNewPassword,
                    onTap: () => con.passwordsMatch ? con.onTapNewPassword() : null,
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
