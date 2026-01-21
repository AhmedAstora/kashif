import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';
import 'missions_city_widget.dart';

class HistoryAndNatureWidget extends StatelessWidget {
  const HistoryAndNatureWidget({super.key, required this.title });
  final String title ;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 166.w,
          height: 39.h,
          decoration: BoxDecoration(
            color: Color(0xff8B9EE0).withOpacity(.1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.r),
              topRight: Radius.circular(20.r),
            ),
          ),
          child: Center(
            child: CustomText(
              title,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 10.h),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                spreadRadius: 0,
                color: Color(
                  0xff8B9EE0,
                ).withValues(alpha: .02),
              ),
            ],
            borderRadius: BorderRadius.circular(15),
            gradient: AppColor.profileGradient.withOpacity(
              .2,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 13.w,
                ),
                child: SizedBox(
                  height: 130.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    itemCount: 3,
                    separatorBuilder: (_, i) =>
                        SizedBox(width: 16.w),
                    itemBuilder: (_, i) =>
                        MissionsCityWidget(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
