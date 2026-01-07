import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/header_profile_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/list_city_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key, this.isSelected = false});

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          gradient: AppColor.getGradient(stops: [0, 0.7]),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50.h),
              Row(
                children: [
                  Image.asset(Images.logo, scale: 17),
                  SizedBox(width: 120.w),
                  CustomText(
                    'Admin',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  Spacer(),
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [Color(0xff293767), Color(0xff8B9EE0)],
                        stops: [0.4, 1],
                        begin: Alignment.bottomRight,
                        end: Alignment.topLeft,
                      ).createShader(bounds);
                    },
                    child: Icon(
                      Icons.settings,
                      size: 35.r,
                      color: Colors.white, // يجب أن يكون اللون أبيض
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              HeaderProfileWidget(),
              SizedBox(height: 10.h),
              Container(
                child: isSelected
                    ? Container(
                        height: 100.h,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.w,
                          vertical: 10.h,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 0,
                              color: Color(0x39d0d0d0).withValues(alpha: .02),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          gradient: AppColor.profileGradient.withOpacity(.2),
                        ),
                        child: isSelected
                            ? ListView.separated(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.zero,
                                itemCount: 5,
                                separatorBuilder: (_, i) =>
                                    SizedBox(width: 20.w),
                                itemBuilder: (_, i) => ListCityWidget(
                                  image: Images.mosque,
                                  title: 'New York',
                                  radius: 30.r,
                                ),
                              )
                            : Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30.r,
                                    child: ClipOval(
                                      child: Image.asset(
                                        Images.mosque,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20.w),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomText('Paris', fontSize: 16.sp),
                                      CustomText(
                                        'Paris has many more secrets,  keep going!',
                                        fontSize: 12.sp,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                      )
                    : Container(
                        height: 57.h,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          horizontal: 30.w,
                          vertical: 10.h,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              spreadRadius: 0,
                              color: Color(0x39d0d0d0).withValues(alpha: .02),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(15),
                          gradient: AppColor.profileGradient.withOpacity(.2),
                        ),
                        child: Center(
                          child: Slider(

                            value: 10,
                            max: 100,
                            onChanged: (value) {},
                          ),
                        ),
                      ),
              ),
              SizedBox(height: 18.h),
              CustomText(
                'Every shot is a victory',
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
              SizedBox(height: 10.h),
              Container(
                height: 130.h,
                child: CarouselSlider(
                  items: List.generate(50, (index) {
                    return Transform.translate(
                      offset: Offset(index == 2 ? 10 : -40, 10),
                      // مقدار التداخل
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Stack(
                          children: [
                            Image.asset(
                              Images.mosque,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                  options: CarouselOptions(
                    height: double.infinity,
                    viewportFraction: 0.55,
                    // مهم للتداخل
                    enlargeCenterPage: true,
                    enlargeFactor: 0.25,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlayAnimationDuration: const Duration(
                      milliseconds: 800,
                    ),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none, // مهم جدًا
                  ),
                ),
              ),

              SizedBox(height: 18.h),
              Row(
                children: [
                  CustomText(
                    'Conquered Cities',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                  Spacer(),
                  CustomText('see all', fontSize: 12.sp),
                ],
              ),
              SizedBox(height: 10.h),
              SizedBox(
                height: 200.h,
                width: double.infinity,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  itemCount: 5,
                  separatorBuilder: (_, i) => SizedBox(width: 20.w),
                  itemBuilder: (_, i) => ListCityWidget(
                    image: Images.mosque,
                    title: 'New York',
                    radius: 45.r,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
