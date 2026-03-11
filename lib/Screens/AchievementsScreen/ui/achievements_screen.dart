import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kashif/Screens/AchievementsScreen/ui/widget/achievements_widget.dart';
import 'package:kashif/Screens/AchievementsScreen/ui/widget/completed_achievements_widget.dart';
import 'package:kashif/Screens/AchievementsScreen/ui/widget/great_job_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../ProfileScreen/ui/widget/conquered_cities.dart';
import '../controller/achievements_controller.dart';

class AchievementsScreen extends StatelessWidget {
  AchievementsScreen({super.key});
  final controller = Get.put(AchievementsController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AchievementsController>(
      builder: (con) {
        return DefaultTabController(
          length: 2,
          child: Scaffold(
            body: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: AppColor.getGradient(stops: [0, 0.7]),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 13.w),
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
                          'Achievements',
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                        ),
                        Spacer(),
                        GestureDetector(
                          child: Icon(
                            Icons.error_outline,
                            size: 32.sp,
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
                              SizedBox(height: 20.h),
                              AchievementsWidget(),
                              SizedBox(height: 18.h),
                              GreatJobWidget(),
                              SizedBox(height: 20.h),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      CustomText(
                                        'Completed Missions',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp,
                                      ),
                                      Spacer(),
                                      GestureDetector(
                                        child: CustomText(
                                          'see all',
                                          color: Colors.grey.shade300,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  SizedBox(
                                    height: 100.h,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      padding: EdgeInsets.zero,
                                      itemCount: 4,
                                      separatorBuilder: (_, i) => SizedBox(width: 6.w),
                                      itemBuilder: (_, i) => CompletedAchievementsWidget(),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  Row(
                                    children: [
                                      CustomText(
                                        'Conquered Cities',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp,
                                      ),
                                      Spacer(),
                                      GestureDetector(
                                        child: CustomText(
                                          'see all',
                                          color: Colors.grey.shade300,
                                          fontSize: 12.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  SizedBox(
                                    height: 200.h,
                                    width: double.infinity,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      padding: EdgeInsets.zero,
                                      itemCount: 4,
                                      separatorBuilder: (_, i) => SizedBox(width: 20.w),
                                      itemBuilder: (_, i) => ConqueredCities(
                                        image: Images.mosque,
                                        title: 'prise',
                                        radius: 45.r,
                                      ),
                                    ),
                                  ),
                                ],
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
    );
  }
}
