import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class AboutYouMenuWidget<T> extends StatelessWidget {
  final T? selectedItem;
  final List<DropdownMenuItem<T>>? items;
  final String icon;
  final void Function(T?)? onChange;
  final String displayText;
  final String hint;

  const AboutYouMenuWidget({
    super.key,
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
      padding: EdgeInsets.symmetric(horizontal: 14.w),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 56.h,
            margin: EdgeInsets.only(left: 20.w), // إزاحة لتجنب الأيقونة
            padding: EdgeInsets.symmetric(horizontal: 18.w),
            decoration: BoxDecoration(
              gradient: AppColor.dropDwonMenu,
              borderRadius: BorderRadius.circular(20.r),
              boxShadow: [
                BoxShadow(blurRadius: 16, color: const Color(0x39d0d0d0).withOpacity(.1)),
              ],
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<T>(
                isExpanded: true,
                value: selectedItem,
                items: items,
                onChanged: onChange,
                icon: const Icon(Icons.keyboard_arrow_down_sharp, color: Colors.white),
                // عرض النص المختار أو التلميح
                hint: CustomText(displayText, color: Colors.white.withOpacity(.7)),
                selectedItemBuilder: (context) {
                  return items?.map((item) {
                    return Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 45.w), // دفع النص بعيداً عن الأيقونة الجانبية
                        child: CustomText(displayText, color: Colors.white),
                      ),
                    );
                  }).toList() ?? [];
                },
                dropdownColor: Colors.blueGrey, // عدلها حسب لونك المفضل
              ),
            ),
          ),
          // الأيقونة الجانبية
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(Images.circle, scale: 4),
              Image.asset(icon, scale: 4),
            ],
          ),
        ],
      ),
    );
  }
}