import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/custom_stacked_carousel.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          'Every shot is a victory',
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
        ),
        // CustomText(
        //   'Shots of Sarah’s Journey',
        //   fontWeight: FontWeight.w600,
        //   fontSize: 16.sp,
        // ),
        SizedBox(
          height: 5.h,
        ),
        StackedOverlapCarousel(

      ),
    ]
    );
  }
}
