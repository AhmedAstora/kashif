import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class LocationWidget extends StatelessWidget {
  final int index;

  LocationWidget({super.key, required this.index});

  final List<Map<String, String>> cities = [
    {'num': '3', 'image': Images.locationShop},
    {'num': '2', 'image': Images.locationTrees},
    {'num': '5', 'image': Images.locationBank},
    {'num': '3', 'image': Images.locationRestaurant},
    {'num': '8', 'image': Images.locationFilm},
    {'num': '2', 'image': Images.locationMarker},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          cities[index]['image']!,
          scale: 4,
        ),
        SizedBox(height: 4.h),
        CustomText(
          cities[index]['num']!,
        ),
      ],
    );
  }
}
