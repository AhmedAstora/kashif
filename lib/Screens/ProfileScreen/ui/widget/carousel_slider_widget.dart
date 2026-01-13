import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // CustomText(
        //   'Every shot is a victory',
        //   fontWeight: FontWeight.w600,
        //   fontSize: 16.sp,
        // ),
        CustomText(
          'Shots of Sarah’s Journey',
          fontWeight: FontWeight.w600,
          fontSize: 16.sp,
        ),
        Container(
          height: 120.h,
          child: CarouselSlider(
            items: List.generate(20, (index) {
              return Transform.translate(
                offset: Offset(index == 2 ? 10 : -40, 10),
                // مقدار التداخل
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Stack(
                    children: [
                      Image.asset(
                        Images.mosque,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
              );
            }),
            options: CarouselOptions(
              height: double.infinity,
              viewportFraction: 0.55,
              // مهم للتداخل
              enlargeCenterPage: true,
              enlargeFactor: 0.25,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(
                milliseconds: 800,
              ),
              autoPlayCurve: Curves.fastOutSlowIn,
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none, // مهم جدًا
            ),
          ),
        ),
      ],
    );
  }
}
