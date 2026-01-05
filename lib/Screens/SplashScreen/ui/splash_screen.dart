import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Utilities/Constants/image_constant.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/CustomWidgets/custom_text.dart';
import '../controller/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  final controller = Get.put(SplashController());

  @override
  void initState() {
    super.initState();
    controller.navigationFunction();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(gradient: AppColor.getGradient()),
        child: Column(
          children: [
            SizedBox(height: 473.h),
            Image.asset(Images.logo, scale: 4),
            SizedBox(height: 20.h),
            CustomText(
              "KASHIF".toUpperCase(),
              color: AppColor.white,
              fontSize: 32.sp,
              fontWeight: FontWeight.w800,
            ),
            CustomText(
              " Explore cities like a game",
              color: AppColor.white,
              fontSize: 16.sp,
            ),
          ],
        ),
      ),
    );
  }
}
