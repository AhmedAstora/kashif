import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/completed_missions_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/message_today_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/message_yesterday_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/new_cities_added_widget.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/back_arrow_widget.dart';
import '../../../Utilities/CustomWidgets/custom_text.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key, this.notificationEmpty = true});

  final bool notificationEmpty;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          gradient: AppColor.getGradient(stops: [0, 0.7]),
        ),
        child: Column(
          children: [
            SizedBox(height: 62.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Row(
                children: [
                  BackArrowWidget(),
                  SizedBox(width: 20.w),
                  CustomText(
                    'Notification',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.h),
            notificationEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: CustomText(
                          'Today',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      CompletedMissionsWidget(),
                      SizedBox(height: 20.h),
                      MessageTodayWidget(),
                      SizedBox(height: 36.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24.w),
                        child: CustomText(
                          'Yesterday',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      NewCitiesAddedWidget(),
                      SizedBox(height: 32.h),
                      SizedBox(
                        height: 320.h,
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          padding: EdgeInsets.zero,
                          itemCount: 3,
                          separatorBuilder: (_, i) => SizedBox(height: 20.h),
                          itemBuilder: (_, i) => MessageYesterdayWidget(),
                        ),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 223.h),
                       Image.asset(
                          Images.notificationsOffOutlined,
                          scale: 4,
                        ),

                      SizedBox(height: 20.h),
                      CustomText(
                        'No new Notification',
                        fontWeight: FontWeight.w600,
                        fontSize: 18.sp,
                      ),
                      SizedBox(height: 10.h),
                      CustomText(
                        'You haven’t triggered any new missions yet. Head out, explore cities and make progress to',
                      ),
                      Center(child: CustomText('receive exciting updates!')),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
