import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class ConqueredCities extends StatelessWidget {
  ConqueredCities({
    this.isSelected = false,
    this.onTap,
    required this.title,
    required this.image,
    required this.radius,
  });

  bool isSelected;
  double radius;
  String title;
  String image;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: radius,
              child: ClipOval(child: Image.asset(image, fit: BoxFit.cover)),
            ),
            Image.asset(Images.educationalGameLogo,scale: 4,),
          ],
        ),
        SizedBox(height: 5.h),
        CustomText(title, fontSize: 10.sp, textAlign: TextAlign.center),
      ],
    );
  }
}
