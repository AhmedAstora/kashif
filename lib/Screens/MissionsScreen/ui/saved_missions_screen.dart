import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/complete_all_cairo_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/history_and_nature_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/history_lover_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/location_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/missions_city_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/missions_now_city_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/saved_missions_city_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/saved_missions_widget.dart';
import 'package:kashif/Screens/MissionsScreen/ui/widget/your_saved_missions_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/back_arrow_widget.dart';
import '../../ProfileScreen/controller/profile_controller.dart';
import '../../ProfileScreen/ui/widget/search_missions_shots_widget.dart';

class SavedMissionsScreen extends StatelessWidget {
  SavedMissionsScreen({super.key});
  final controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      builder: (context) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              gradient: AppColor.getGradient(stops: [0, 0.7]),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 61.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.w),
                      child: Row(
                        children: [
                          BackArrowWidget(),
                          SizedBox(width: 20.w),
                          CustomText(
                            'Saved Missions',
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          Spacer(),
                          Image.asset(Images.search, scale: 4),
                          // SearchMissionsShotsWidget(
                          //   hintText: 'search',
                          //   controller:controller.searchController,
                          // ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 36.h),
                        CustomText(
                          'Your saved missions in Cairo',
                          fontWeight: FontWeight.w600,
                          textAlign: TextAlign.center,
                          fontSize: 18.sp,
                        ),
                        SizedBox(height: 34.h),
                        SizedBox(
                          height: 670,
                          child: ListView.separated(
                            scrollDirection: Axis.vertical,
                            padding: EdgeInsets.zero,
                            itemCount: 3,
                            separatorBuilder: (_, i) =>
                                SizedBox(height: 11.h),
                            itemBuilder: (_, i) => YourSavedMissionsWidget(),
                        ),
                        ),
                      ],
                    ),
                
                    // Column(
                    //   children: [
                    //     Padding(
                    //       padding: EdgeInsets.symmetric(horizontal: 20.w),
                    //       child: CustomText(
                    //         'Your saved adventures, ready anytime',
                    //         fontWeight: FontWeight.w600,
                    //         textAlign: TextAlign.center,
                    //         fontSize: 18.sp,
                    //       ),
                    //     ),
                    //     SizedBox(height: 42.h),
                    //     GridView.builder(
                    //       padding: EdgeInsets.symmetric(horizontal: 5.w),
                    //       shrinkWrap: true,
                    //       physics: const NeverScrollableScrollPhysics(),
                    //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //         crossAxisCount: 2,
                    //         crossAxisSpacing: 15,
                    //         mainAxisSpacing: 22,
                    //         childAspectRatio: 110.w / 130.h, // العرض / الارتفاع
                    //       ),
                    //       itemCount: 3,
                    //       itemBuilder: (context, index) {
                    //         return SavedMissionsCityWidget();
                    //       },
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
