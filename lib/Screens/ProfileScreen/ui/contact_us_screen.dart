import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:kashif/Screens/AuthScreen/controller/auth_controller.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_check_box.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text_filed_login.dart';
import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/back_arrow_widget.dart';
import '../../../Utilities/CustomWidgets/custom_new_botton_login.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({super.key, this.isTappedButton = false});

  final bool isTappedButton;
  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (con) {
        return Scaffold(
          body: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: AppColor.getGradient(stops: [0, 0.7]),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 64.h),
                  Row(
                    children: [
                      BackArrowWidget(),
                      SizedBox(width: 20.w),
                      CustomText(
                        'Friends',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  SizedBox(height: 30.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: CustomText(
                      "Your email is used for login and account recovery",
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Image.asset(
                    Images.email,
                    width: 123.w,
                    height: 123.h,
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: CustomTextFieldLogin(
                      icon: Images.user,
                      suffixIcon: Image.asset(Images.editIcon, scale: 4),
                      hintText: "",
                      borderColor: Color(0xff293767),
                      controller: TextEditingController(),
                      borderWidth: 0,
                      hintColor: Colors.white,
                      fontSize: 12.sp,
                    ),
                  ),
                  SizedBox(height: 46.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
                        CustomCheckBox(
                          isTapped: con.isTappedCheckBox,
                          onTap: () => con.onTapCheckBox(),
                        ),
                        SizedBox(width: 8.w),
                        CustomText('Receive account updates by email'),
                      ],
                    ),
                  ),
                  SizedBox(height: 63.h),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: CustomNewButtonLogin(
                      title: 'Save',
                      // isTapped: con.isTappedCheckButton,
                      // onTap: () => con.onTapCheckButton(isTappedButton),
                    ),
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
