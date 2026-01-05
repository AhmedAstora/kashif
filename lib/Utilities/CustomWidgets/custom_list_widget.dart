import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Constants/app_color.dart';
import '../Constants/image_constant.dart';

class CustomListWidget extends StatefulWidget {

  String icon;


  CustomListWidget({

    required this.icon,

  });

  @override
  State<CustomListWidget> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomListWidget> {



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(Images.circle, scale: 4),
            Image.asset(widget.icon, scale: 4),
          ],
        ),
        Image.asset(Images.unionorange, scale: 4),
        Container(
          alignment: AlignmentGeometry.centerRight,
          height: 70.h,
          width: 300.w,
          child: Image.asset(Images.downarrow, scale: 4),
        ),
      ],
    );
  }
}
