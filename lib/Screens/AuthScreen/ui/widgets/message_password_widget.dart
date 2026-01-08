import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';
import 'password_must_widget.dart';

class MessagePasswordWidget extends StatelessWidget {
  const MessagePasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124.h,
      width: 275.w,
      child: Stack(
        children: [
          Image.asset(Images.passwordlist, scale: 4),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  'Password must',
                  fontWeight: FontWeight.w500,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 7.w),
                  height: 70.h,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    itemCount: 3,
                    separatorBuilder: (_, i) => SizedBox(height: 0.h),
                    itemBuilder: (_, i) => PasswordMustWidget(),
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
