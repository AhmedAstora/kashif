import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class YourSavedMissionsWidget extends StatelessWidget {
  const YourSavedMissionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.only(top: 7, left: 13, right: 21,),
      height: 126.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(
          width: 1.w,
          color: Color(0xff8B9EE0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Container(
                    height: 112.h,
                    width: 112.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        15.r,
                      ),
                      color: Color(
                        0xff8B9EE0,
                      ).withValues(alpha: .3),
                      image: DecorationImage(
                        image: AssetImage(Images.mosque),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 3,
                    child: Image.asset(
                      Images.savedMissions,
                      scale: 4,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CustomText(
                        'Pyramids',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(width: 5.w),
                      Image.asset(
                        Images.awardBadgePrize,
                        height: 25.h,
                        width: 25.w,
                      ),
                    ],
                  ),
                  CustomText('Cairo', fontSize: 16.sp),
                  SizedBox(height: 5.h),
                  Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        Images.locationBank,
                        height: 22.h,
                        width: 16.w,
                      ),
                      SizedBox(width: 5.w),
                      CustomText('History & Culture'),
                    ],
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    height: 20.h,
                    width: 100.w,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.zero,
                      itemCount: 4,
                      separatorBuilder: (_, i) =>
                          SizedBox(width: 1.w),
                      itemBuilder: (_, i) => CircleAvatar(
                        radius: 11.5.r,
                        backgroundColor: Colors.white,
                        child: ClipOval(
                          child: Image.asset(
                            Images.person,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: 19.sp,
                color: Colors.white,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
