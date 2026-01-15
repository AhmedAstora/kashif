import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';
import '../../controller/home_controller.dart';

class SeeAllMyFriendsWidget extends StatelessWidget {
   SeeAllMyFriendsWidget({super.key});

  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (con) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.w),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 5.h,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  spreadRadius: 0,
                  color: Color(0x39d0d0d0).withValues(alpha: .02),
                ),
              ],
              borderRadius: BorderRadius.circular(15),
              gradient: AppColor.profileGradient.withOpacity(.2),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 32.r,
                      backgroundImage: AssetImage(Images.person),
                    ),
                    CustomText('@hannah_k', fontSize: 10.sp),
                  ],
                ),
                SizedBox(width: 15.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText('\tHannah', fontSize: 16.sp),
                    SizedBox(height: 5.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Images.daemon,
                          height: 16.h,
                          width: 16.w,
                        ),
                        SizedBox(width: 5.w),
                        CustomText('200XP'),
                        SizedBox(width: 21.w),
                        Image.asset(
                          Images.awardBadgePrize,
                          height: 14.h,
                          width: 14.w,
                        ),
                        SizedBox(width: 7.w),
                        CustomText('54'),
                        SizedBox(width: 21.w),
                        Image.asset(
                          Images.educationalGameLogo,
                          height: 14.h,
                          width: 14.w,
                        ),
                        SizedBox(width: 7.w),
                        CustomText('2'),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Images.locationMap,
                          height: 16.h,
                          width: 16.w,
                        ),
                        SizedBox(width: 5.w),
                        CustomText('Currently exploring Cairo'),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          Images.awardBadgePrize,
                          height: 14.h,
                          width: 14.w,
                        ),
                        SizedBox(width: 5.w),
                        CustomText('Last mission: Pyramids'),
                      ],
                    ),
                    SizedBox(height: 8.h),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap:()=>  con.showLogoutDialog(),
                  child: Image.asset(
                    Images.removeUser,
                    height: 23.h,
                    width: 22.w,
                    color: Color(0xff8B9EE0),
                  ),
                ),
              ],
            ),
          ),
        );
      }
    );
  }
}
