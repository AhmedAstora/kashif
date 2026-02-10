import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/add_friend_widget.dart';
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

class AddFriendScreen extends StatelessWidget {
  AddFriendScreen({super.key, this.searchEnabled = true});

  final controller = Get.put(HomeController());
  final bool searchEnabled;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (con) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Container(
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: AppColor.getGradient(stops: [0, 0.7]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  SearchAddFriendWidget(
                    hintText: 'Usernames',
                    controller: controller.searchController,
                  ),
                  SizedBox(height: 37.h),
                  SizedBox(
                    height: 700.h,
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      padding: EdgeInsets.zero,
                      itemCount: 4,
                      separatorBuilder: (_, i) => SizedBox(height: 10.h),
                      itemBuilder: (_, i) => AddFriendWidget(),
                    ),
                  ),
            
                  // Column(
                  //   children: [
                  //     CustomText(
                  //       'Meet Adventurers Like You',
                  //       fontWeight: FontWeight.w500,
                  //       fontSize: 18.sp,
                  //     ),
                  //     CustomText(
                  //       'Add friends, share your victories, and get',
                  //     ),
                  //     CustomText(
                  //       ' inspired to conquer more!',
                  //     ),
                  //     SizedBox(height: 37.h),
                  //     GridView.builder(
                  //       padding:  EdgeInsets.symmetric(horizontal: 24.w),
                  //       shrinkWrap: true,
                  //       physics: const NeverScrollableScrollPhysics(),
                  //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  //         crossAxisCount: 2, // عدد الأعمدة
                  //         mainAxisSpacing: 16,
                  //         crossAxisSpacing: 16,
                  //         childAspectRatio: 1.0, // يتحكم في ارتفاع الكرت
                  //       ),
                  //       itemCount: 4,
                  //       itemBuilder: (context, index) {
                  //         return FriendCard();
                  //       },
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
