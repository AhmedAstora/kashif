import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/add_friend_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/friend_requests_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/my_friends_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/search_add_friend_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/search_friends_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/you_and_friend_widget.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/back_arrow_widget.dart';
import '../../../Utilities/CustomWidgets/custom_text.dart';
import '../controller/home_controller.dart';
import 'widget/friends_cards_widget.dart';

class FriendRequestsScreen extends StatelessWidget {
  FriendRequestsScreen({super.key, this.searchEnabled = true});

  final controller = Get.put(HomeController());
  final bool searchEnabled;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (con) {
        return Scaffold(
          body: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: AppColor.getGradient(stops: [0, 0.7]),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 62.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.w),
                  child: Row(
                    children: [
                      BackArrowWidget(),
                      SizedBox(width: 20.w),
                      CustomText(
                        'Add Friend',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 27.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 26.w),
                  child: CustomText(
                    'See who wants to join your journey',
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 27.h),
                SizedBox(
                  height: 700.h,
                  child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.zero,
                    itemCount: 3,
                    separatorBuilder: (_, i) => SizedBox(height: 10.h),
                    itemBuilder: (_, i) => FriendRequestsWidget(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
