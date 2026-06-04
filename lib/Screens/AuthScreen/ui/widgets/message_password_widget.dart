import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Screens/AuthScreen/ui/widgets/password_must_widget.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';
import '../../controller/auth_controller.dart';

class MessagePasswordWidget extends StatelessWidget {
  final AuthController con; // مرر الـ controller هنا

  const MessagePasswordWidget({super.key, required this.con});

  @override
  Widget build(BuildContext context) {
    // قائمة بالشروط لتسهيل العرض
    final List<Map<String, dynamic>> requirements = [
      {"text": "8 characters", "isDone": con.has8Chars},
      {"text": "1 number & 1 uppercase letter", "isDone": con.hasUpperAndNumber},
      {"text": "1 special character", "isDone": con.hasSpecialChar},
    ];

    return Container(
      height: 124.h,
      width: 275.w,
      child: Stack(
        children: [
          Image.asset(Images.passwordList, scale: 4),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                CustomText('Password must', fontWeight: FontWeight.w500),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  height: 70.h,
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    itemCount: requirements.length,
                    separatorBuilder: (_, i) => SizedBox(height: 0.h),
                    itemBuilder: (_, i) {
                      return PasswordMustWidget(
                        text: requirements[i]["text"],
                        isDone: requirements[i]["isDone"], // هنا يتم تغيير اللون
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}