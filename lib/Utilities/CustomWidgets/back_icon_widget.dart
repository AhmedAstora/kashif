import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../Constants/app_color.dart';
import '../Constants/image_constant.dart';

class BackIconWidget extends StatelessWidget {
  const BackIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.back(),
      child:   Image.asset(Images.leftArrowBack, scale: 4),
    );
  }
}
