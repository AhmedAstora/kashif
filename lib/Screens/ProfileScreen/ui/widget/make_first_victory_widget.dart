import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kashif/Screens/ProfileScreen/controller/profile_controller.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_new_button.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class MakeFirstVictoryWidget extends StatelessWidget {
   MakeFirstVictoryWidget({super.key});

  final controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (con) {
        return Column(
          children: [
            CustomText(
              'No progress so far!',
            ),
            CustomText(
              'Make Toledo your first victory',
              fontWeight: FontWeight.w600,
              fontSize: 16.sp,
            ),
            SizedBox(height: 10.h),
            CircleAvatar(
              radius: 50.r,
              child: ClipOval(
                child: Image.asset(
                  Images.mosque,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            CustomNewButton(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
              title: "Start your first mission",
              isTapped: con.isTappedNavigationMissionsShots,
              onTap:()=> con.NavigationMissionsShots(),
            ),
          ],
        );
      }
    );
  }
}
