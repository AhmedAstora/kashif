import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_drop_down_menu.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_new_botton_login.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text_field.dart';

import '../../../../Utilities/Constants/app_color.dart';

class ReportProblemBottomSheetWidget extends StatelessWidget {
  const ReportProblemBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.h,
      padding: EdgeInsets.symmetric(horizontal: 19.w),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
          colors: [Color(0xff8B9EE0), Color(0xff293767)],
          stops: [0, 1],
        ),
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            blurRadius: 16,
            spreadRadius: 0,
            color: Color(0xff8B9EE0).withValues(alpha: .8),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            Center(
              child: CustomText(
                'Report a Problem',
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 25.h),
            CustomText('Tell us what went wrong', fontSize: 16.sp),
            SizedBox(height: 10.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 14.w),
              child: CustomDropDownMenu(
                selectedItem: (),
                items: [],
                displayText: 'Select an issue',
                onChange: (T) {},
              ),
            ),
            SizedBox(height: 20.h),
            CustomText('Describe the problem', fontSize: 16.sp),
            SizedBox(height: 14.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 14.w),
              child: Container(
                height: 150.h,
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 0,
                      color: Color(0x108b9ee0),
                    ),
                  ],
                  color: Color(0x1b8b9ee0),
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0x1a8b9ee0), Color(0x1ae7d6c9)],
                    stops: [0, 1],
                  ),
                  border: Border.all(width: 1.w, color: Color(0xff8B9EE0)),
                ),
                child: CustomTextField(
                  hintText: 'Tell us more...',
                  controller: null,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            CustomNewButtonLogin(title: 'Submit', onTap: () {}),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
