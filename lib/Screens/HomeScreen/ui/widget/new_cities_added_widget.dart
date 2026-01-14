import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class NewCitiesAddedWidget extends StatelessWidget {
  const NewCitiesAddedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(Images.iconNew, scale: 4),
          SizedBox(width: 12.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                'New cities added',
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    'Go and explore Istanbul & Rome',
                    fontWeight: FontWeight.w500,
                  ),
                  SizedBox(width: 20.w),
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
