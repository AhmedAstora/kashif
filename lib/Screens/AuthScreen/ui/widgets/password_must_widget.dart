import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';

class PasswordMustWidget extends StatelessWidget {
  const PasswordMustWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 2.r,
              backgroundColor: Colors.white,
            ),
            SizedBox(
              width: 8.w,
            ),
            CustomText('8 characters',fontSize: 12.sp,)
          ],
        ),

      ],
    );
  }
}
