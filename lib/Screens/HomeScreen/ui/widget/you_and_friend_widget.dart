import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class YouAndFriendWidget extends StatelessWidget {
  const YouAndFriendWidget({super.key, this.circleAvatar = true});

  final bool circleAvatar;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 10.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xe5495da1), Color(0xe52a396a)],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          stops: [0, 1],
        ),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 26.r,
                child: ClipOval(
                  child: Image.asset(Images.mosque, fit: BoxFit.cover),
                ),
              ),
              CustomText('You'),
            ],
          ),
          SizedBox(width: 53.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Images.educationalGameLogo, scale: 5),
              SizedBox(height: 3.h),
              CustomText('2'),
            ],
          ),
          SizedBox(width: 25.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(Images.awardBadgePrize, scale: 5),
              SizedBox(height: 3.h),
              CustomText('83'),
            ],
          ),
          SizedBox(width: 53.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              circleAvatar
                  ? CircleAvatar(
                      radius: 25.r,
                      child: ClipOval(
                        child: Image.asset(Images.person, fit: BoxFit.cover),
                      ),
                    )
                  : CircleAvatar(
                      radius: 25.r,
                      backgroundColor: Color(0x802a396a),
                      child: Image.asset(Images.lockFill, scale: 4),
                    ),
              CustomText('Ahmed'),
            ],
          ),
        ],
      ),
    );
  }
}
