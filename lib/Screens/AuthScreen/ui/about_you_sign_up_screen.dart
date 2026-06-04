import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Screens/AuthScreen/ui/widgets/about_you_menu_widget.dart';
import 'package:kashif/Screens/AuthScreen/ui/widgets/interest_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_new_botton_login.dart';
import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/back_icon_widget.dart';
import '../../../Utilities/CustomWidgets/custom_text.dart';
import '../controller/auth_controller.dart';

class AboutYouSignUpScreen extends StatelessWidget {
  const AboutYouSignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (con) {
        return Scaffold(
          body: Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: AppColor.getGradient(stops: [0, 0.27]),
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60.h),

                  Column(
                    children: [
                      Image.asset(Images.logo, scale: 8),

                      SizedBox(height: 6.h),

                      Row(
                        children: [
                          const BackIconWidget(),
                          SizedBox(width: 80.w),

                          Column(
                            children: [
                              CustomText(
                                "About you",
                                fontSize: 22.sp,
                                fontWeight: FontWeight.w600,
                              ),
                              CustomText(
                                "Tell us more about you",
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBox(height: 30.h),

                      // اختيار الدولة
                      AboutYouMenuWidget<String>(
                        icon: Images.earth,
                        // نقوم بتحويل مفاتيح الـ Map إلى قائمة من DropdownMenuItem
                        items: con.countryCityMap.keys.map((String country) {
                          return DropdownMenuItem<String>(
                            value: country,
                            child: Text(country),
                          );
                        }).toList(),
                        onChange: (value) => con.onCountryChanged(value),
                        displayText: con.selectedCountry ?? 'Select your country',
                        hint: 'Select your country',
                        selectedItem: con.selectedCountry,
                      ),

                      SizedBox(height: 15.h),

                      // اختيار المدينة
                      AboutYouMenuWidget<String>(
                        icon: Images.cityBuildings,
                        items: (con.selectedCountry != null)
                            ? con.countryCityMap[con.selectedCountry]!.map((city) =>
                            DropdownMenuItem(value: city, child: Text(city))
                        ).toList()
                            : [],
                        onChange: (value) => con.onCityChanged(value),
                        displayText: con.selectedCity ?? 'Choose your city',
                        hint: '',
                        selectedItem: con.selectedCity,
                      ),

                      SizedBox(height: 30.h),
                    ],
                  ),

                  CustomText(
                    'Interests',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                  ),

                  CustomText(
                    'Tap the spots you enjoy\nwe’ll match your vibe!',
                  ),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.zero,
                      itemCount: 3,
                      separatorBuilder: (_, i) => SizedBox(width: 10.w),
                      itemBuilder: (_, i) {
                        return  InterestWidget(
                          isSelected: false,
                        );
                      },
                    ),
                  ),

                  SizedBox(height: 30.h),

                  CustomNewButtonLogin(
                    title: "Next",
                    isTapped: con.isTappedNavigationTermsOfUse,
                    onTap: () => con.navigationTermsOfUse(),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}