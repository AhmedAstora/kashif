import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class MessageTodayWidget extends StatelessWidget {
  const MessageTodayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30.r,
            child: ClipOval(
              child: Image.asset(
                Images.mosque,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 12.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    'Noah joined your clan',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(width: 3.w),
                  Image.asset(Images.notificationMessage,scale: 4,)
                ],
              ),
              CustomText(
                'More clan members means more fun,',
                fontWeight: FontWeight.w500,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  CustomText(
                    'don’t leave him hanging!',
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(width: 12.w),
                  CustomText(
                    '10h',
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
