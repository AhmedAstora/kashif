import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class InterestHomeWidget extends StatelessWidget {
  InterestHomeWidget({super.key,this.onTap,this.title,this.image});
String? title;
String? image;
VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 94.h,
      width: 94.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 94.h,
            width: 94.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            color: Colors.black,),
            child: Image.asset(Images.mosque,),
          ),
          CustomText('The Toledo Zoo',fontSize: 12.sp,),
          CustomText('200m',fontSize: 12.sp,color: Colors.grey.shade400,),
        ],
      ),
    );
  }
}
