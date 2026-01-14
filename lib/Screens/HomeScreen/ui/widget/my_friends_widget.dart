import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class MyFriendsWidget extends StatelessWidget {
  const MyFriendsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 26.r,
          child: ClipOval(
            child: Image.asset(
              Images.mosque,
              fit: BoxFit.cover,
            ),
          ),
        ),
        CustomText('Hannah'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Images.daemon,scale: 7,),
            CustomText('200XP',fontSize: 10.sp,)
          ],
        ),
      ],
    );
  }
}
