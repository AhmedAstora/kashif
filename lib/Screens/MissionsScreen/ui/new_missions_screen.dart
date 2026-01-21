import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/custom_admin_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/interest_home_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/complete_all_cairo_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/history_lover_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/location_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/missions_city_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/missions_now_city_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/custom_new_button.dart';

class NewMissionsScreen extends StatelessWidget {
  NewMissionsScreen({super.key});

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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 15.h),
                          Center(
                            child: Image.asset(Images.missionsButton, scale: 4),
                          ),
                          SizedBox(height: 15.h),
                          Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 5.w),
                            child: SizedBox(
                              height: 140.h,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.zero,
                                itemCount: 5,
                                separatorBuilder: (_, i) => SizedBox(width: 12.w),
                                itemBuilder: (_, i) => MissionsCityWidget(),
                              ),
                            ),
                          ),
                          // Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     CustomText(
                          //       'History lover!',
                          //       fontSize: 16.sp,
                          //       fontWeight: FontWeight.w600,
                          //     ),
                          //     CustomText(
                          //       'hese missions are calling you',
                          //       fontSize: 16.sp,
                          //       fontWeight: FontWeight.w600,
                          //     ),
                          //     SizedBox(
                          //       height: 13.h,
                          //     ),
                          //     GridView.builder(
                          //       padding: EdgeInsets.symmetric(horizontal: 1.w),
                          //       shrinkWrap: true,
                          //       physics: const NeverScrollableScrollPhysics(),
                          //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          //         crossAxisCount: 3,
                          //         mainAxisSpacing: 10,
                          //         crossAxisSpacing: 10,
                          //         childAspectRatio: 110.w / 125.h, // العرض / الارتفاع
                          //       ),
                          //       itemCount: 6,
                          //       itemBuilder: (context, index) {
                          //         return HistoryLoverWidget();
                          //       },
                          //     )
                          //
                          //   ],
                          // ),

                          CompleteAllCairoWidget(),
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
