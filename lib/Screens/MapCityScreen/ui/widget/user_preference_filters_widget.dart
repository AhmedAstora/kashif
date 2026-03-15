import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class UserPreferenceFiltersWidget extends StatelessWidget {
  final int index;

  UserPreferenceFiltersWidget({super.key, required this.index});

  final List<Map<String, String>> cities = [
    {'name': 'Shopping  3', 'image': Images.locationShop},
    {'name': 'Nature  2', 'image': Images.locationTrees},
    {'name': 'History  5', 'image': Images.locationBank},
    {'name': 'Food & Drinks  3', 'image': Images.locationRestaurant},
    {'name': 'Entertainment  8', 'image': Images.locationFilm},
    {'name': 'Relation  2', 'image': Images.locationMarker},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      height: 41.h,
      margin: EdgeInsets.only(top: 10.h),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.25),
              blurRadius: 4,
              offset: Offset(0, 4), // changes position of shadow
            ),
          ],
          color: Color(0x984a5ea3),
          borderRadius: BorderRadius.circular(20.r)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(cities[index]['image']!, height: 31.h, width: 23.w),
          SizedBox(
            width: 5.w,
          ),
          CustomText(
              cities[index]['name']!,

          ),
        ],
      ),
    );
  }
}
