import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class SavedMissionsWidget extends StatelessWidget {
  const SavedMissionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 56.h,
              width: 56.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Color(0xff8B9EE0).withValues(alpha: .3),
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
                scale: 8,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 85.w,
          child: CustomText(
            'Pyramids',
            fontSize: 12.sp,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
