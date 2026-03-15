import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class CityWidget extends StatelessWidget {
  const CityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 126.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 119.h,
                width: 138.w,
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
              SizedBox(width: 17.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    'Khan Al-Khalili',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade300,
                  ),
                  CustomText('A famous traditional bazaar. it\n dates bac...', fontSize: 12.sp,color: Colors.grey,),
                  SizedBox(height: 5.h),
                  SizedBox(
                    height: 30.h,
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
                  CustomText('5km',color: Colors.grey.shade300,),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
