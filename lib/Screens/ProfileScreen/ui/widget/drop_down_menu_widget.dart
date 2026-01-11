import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';


class DropDownMenuWidget<T> extends StatelessWidget {
  final bool isLoading;
  final T? selectedItem;
  final List<DropdownMenuItem<T>>? items;

  final void Function(T?)? onChange;
  String displayText;
  bool isNotString ;

  DropDownMenuWidget({
    super.key,
    this.isLoading = false,
    this.isNotString = true,
    required this.selectedItem,
    required this.items,
    required this.onChange,
    required this.displayText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        height: 60.h,
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        decoration: BoxDecoration(
          gradient: AppColor.dropDwonMenu,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: AppColor.secondary, width: 0.8),
        ),
        child: isLoading
            ? Row(
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 10.h,),
              child: CircularProgressIndicator(
                strokeWidth: 2,
                color: AppColor.secondary,
              ),
            ),
          ],
        )
            : DropdownButton<T>(

                    underline: Container(),
                    icon: ShaderMask(
            shaderCallback: (Rect bounds) {
              return LinearGradient(
                colors: [Color(0xffE7D6C9), Color(0xffFE8769)],
                stops: [0.4, 1],
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
                    hint: CustomText(
            '',
            color: Colors.grey,
                    ),
                    value: selectedItem,
                    items: items,
                    onChanged: onChange,
                  ),
      ),
    );
  }
}
