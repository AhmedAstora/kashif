import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class MissionsCityWidget extends StatelessWidget {
  const MissionsCityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(
          height: 96.h,
          width: 99.w,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 85.h,
                width: 99.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  image: DecorationImage(
                    image: AssetImage(Images.mosque),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                top: 1.h,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  height: 20.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: const [
                      BoxShadow(
                        blurRadius: 10,
                        color: Color(0x3f8b9ee0),
                      ),
                    ],
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff8B9EE0).withOpacity(.4),
                        Color(0xff4C567A).withOpacity(.4),
                      ],
                    ),
                  ),
                  child: CustomText(
                    'Barcelona',
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 85.w,
          child: CustomText(
            'Catacombs of Paris',
            fontSize: 12.sp,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
      ],
    );

  }
}
