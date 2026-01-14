import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class CustomAdminWidget extends StatelessWidget {
  const CustomAdminWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 110.h,
            width: 202.w,
            padding: EdgeInsets.only(left: 55.w),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  blurRadius: 26,
                  spreadRadius: 0,
                  color:  Color(
                    0xff023047,
                  ).withValues(alpha: .3),
                ),
              ],
              borderRadius: BorderRadius.circular(15),
              gradient: AppColor.getBlueGradient(stops: [0.5, 1]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomText(
                      'Adam',
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                    ),
                    SizedBox(width: 5.w),
                    Image.asset(Images.america, scale: 4),
                  ],
                ),
                CustomText(
                  '@adamtraveler',
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade400,
                ),
              ],
            ),
          ),
          Positioned(
            left: -35.w,
            top: 15.h,
            child: CircleAvatar(
              radius: 40.r,
              child: Image.asset(Images.addPhoto),
            ),
          ),
        ],
      ),
    );
  }
}
