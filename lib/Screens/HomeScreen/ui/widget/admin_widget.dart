import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class AdminWidget extends StatelessWidget {
  const AdminWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 120.h,
          padding: EdgeInsets.only(top: 45.h),
          decoration: BoxDecoration(
            gradient: AppColor.getBlueGradient(stops: [0.5, 1]),
            borderRadius: BorderRadius.circular(18.r),
            boxShadow: [
              BoxShadow(
                blurRadius: 26,
                color: const Color(0xff023047).withOpacity(.3),
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 4.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        Images.locationMap,
                        height: 32.h,
                        width: 32.w,
                      ),
                      CustomText(
                        'Cairo',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          CustomText(
                            'Adam',
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                          SizedBox(width: 6.w),
                          Image.asset(Images.america, scale: 4),
                        ],
                      ),
                      CustomText(
                        '@adamtraveler',
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset(Images.daemon, height: 32.h, width: 32.w),
                      CustomText(
                        '1500',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: -40.h,
          child: CircleAvatar(
            radius: 43.5.r,
            backgroundColor: Colors.orange,
            child: CircleAvatar(
              radius: 42.5.r,
              backgroundImage: AssetImage(Images.person),
            ),
          ),
        ),
      ],
    );
  }
}
