import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';


class AboutYouMenuWidget<T> extends StatelessWidget {
  final bool isLoading;
  final T? selectedItem;
  final List<DropdownMenuItem<T>>? items;
  String icon;
  final void Function(T?)? onChange;
  String displayText;
  String hint;
  bool isNotString ;

  AboutYouMenuWidget({
    super.key,
    this.isLoading = true,
    this.isNotString = true,
    required this.selectedItem,
    required this.hint,
    required this.items,
    required this.icon,
    required this.onChange,
    required this.displayText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 14.w),
      child: Stack(
        children: [
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 5.h,horizontal: 3.w),
            child: Container(
              height: 56.h,
              padding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 10.h),
              decoration: BoxDecoration(
                gradient: AppColor.dropDwonMenu,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 16,
                    spreadRadius: 0,
                    color: Color(0x39d0d0d0).withValues(alpha: .1,)
                  ),
                ],
              ),
              child: DropdownButton<T>(
                          underline: Container(),
                          icon: ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [Color(0xffE7D6C9), Color(0xffFE8769)],
                      stops: [0, 1],
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                    ).createShader(bounds);
                  },
                  child: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    size: 35.r,
                    color: Colors.white, // يجب أن يكون اللون أبيض
                  ),
                          ),
                          isExpanded: true,
                          hint: Row(
                            children: [
                              SizedBox(
                                width: 60.w,
                              ),
                              CustomText(
                                                '$hint',
                                                color: Colors.white.withOpacity(.7),
                              ),
                            ],
                          ),
                          value: selectedItem,
                          items: items,
                          dropdownColor: Colors.white.withOpacity(.6),
                          onChanged: onChange,
                        ),

            ),
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(Images.circle,scale: 4,),
              Image.asset(icon,scale: 4,)
            ],
          ),
        ],
      ),
    );
  }
}
