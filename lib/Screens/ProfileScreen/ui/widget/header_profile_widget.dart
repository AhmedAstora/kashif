import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class HeaderProfileWidget extends StatelessWidget {
  const HeaderProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Stack(
              alignment: AlignmentGeometry.center,
              children: [
                Image.asset(Images.circle,scale: 4,),
                Image.asset(Images.awardbadgeprize,scale: 4,),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomText('726',
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 60.r,
              child: ClipOval(
                child: Image.asset(
                  Images.person,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomText('@adamtraveler',
              fontSize: 16.sp,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Images.daemon,scale: 4,),
                CustomText('1502',
                  fontSize: 16.sp,
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Stack(
              alignment: AlignmentGeometry.center,
              children: [
                Image.asset(Images.circle,scale: 4,),
                Image.asset(Images.educationalgamelogo,scale: 4,),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomText('10',
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ],
    );
  }
}
