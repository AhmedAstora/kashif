import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/complete_all_cairo_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/history_and_nature_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/location_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/missions_city_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/missions_now_city_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';

class MissionsNewUserScreen extends StatelessWidget {
  MissionsNewUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            gradient: AppColor.getGradient(stops: [0, 0.7]),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 19.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 61.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(Images.logo, scale: 17),
                    SizedBox(width: 100.w),
                    CustomText(
                      'Missions',
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                    Spacer(),
                    GestureDetector(
                      child: Icon(
                        Icons.bookmark_border,
                        size: 40.sp,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                TabBar(
                  indicatorColor: Colors.grey.shade400,
                  dividerColor: Colors.grey,
                  dividerHeight: 1.4,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white60,
                  tabs: [
                    Tab(text: 'Solo'),
                    Tab(text: 'Clans'),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 22.h),
                          CustomText(
                            'Let’s begin your journey!',
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                          SizedBox(height: 5.h),
                          CustomText(
                            'Complete missions in cities around the world to \nearn XP and conquer cities.',
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 15.h),
                          HistoryAndNatureWidget(
                            title: 'History & Culture',
                          ),
                          SizedBox(height: 23.h),
                          HistoryAndNatureWidget(
                            title: 'Nature & Parks',
                          ),
                        ],
                      ),

                      Column(children: [SizedBox(height: 15.h)]),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
