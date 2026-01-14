import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class MessageYesterdayWidget extends StatelessWidget {
  const MessageYesterdayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30.r,
            child: ClipOval(
              child: Image.asset(Images.person, fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 12.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                'Sara just completed phuket!',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              CustomText(
                'Now it’s your turn! only 5  missions left',
                fontWeight: FontWeight.w500,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    'to catch up!',
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(width: 12.w),
                  CustomText(
                    '1d',
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
