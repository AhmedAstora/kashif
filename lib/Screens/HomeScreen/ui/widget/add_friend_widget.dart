import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class AddFriendWidget extends StatelessWidget {
  const AddFriendWidget({super.key, this.changeIcon = true});

  final bool changeIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 32.r,
                        backgroundImage: AssetImage(Images.person),
                      ),
                      SizedBox(width: 10.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText('\tNoah', fontSize: 16.sp),
                          CustomText('@nn.oah'),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                Images.daemon,
                                height: 16.h,
                                width: 16.w,
                              ),
                              CustomText('962XP'),
                              SizedBox(width: 11.w),
                              Image.asset(
                                Images.awardBadgePrize,
                                height: 14.h,
                                width: 14.w,
                              ),
                              CustomText('461'),
                              SizedBox(width: 11.w),
                              Image.asset(
                                Images.educationalGameLogo,
                                height: 14.h,
                                width: 14.w,
                              ),
                              CustomText('12'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 90.w,
                      ),
                      GestureDetector(
                        child: changeIcon
                            ? Image.asset(Images.addButtonFriends,height: 36.h,width: 36.w,)
                            : Image.asset(Images.removeFriends,height: 36.h,width: 36.w,),
                      ),
                    ],
                  ),

                  SizedBox(height: 10.h),
                  // Row(
                  //   children: [
                  //     CustomText('You have 2 mutual friends', fontSize: 12.sp),
                  //     SizedBox(width: 5.w,),
                  //     CircleAvatar(
                  //       radius: 10.r,
                  //       backgroundImage: AssetImage(Images.mosque),),
                  //     SizedBox(width: 5.w,),
                  //     CircleAvatar(
                  //       radius: 10.r,
                  //       backgroundImage: AssetImage(Images.mosque),),
                  //   ],
                  // ),
                  SizedBox(height: 10.h),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w),
          child: Container(
            height: 1.3.h,
            color: AppColor.primary.withValues(alpha: .2),
          ),
        ),
      ],
    );
  }
}
