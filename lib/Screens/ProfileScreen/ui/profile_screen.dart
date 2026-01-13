import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3d_carousel/flutter_3d_carousel.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/carousel_slider_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/city_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/conquered_cities_lock_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/conquered_citites_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/make_first_victory_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/no_mission_shots_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/one_city_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/slider_widget.dart';
import 'package:kashif/Screens/ProfileScreen/ui/widget/header_profile_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import 'package:overlapped_carousel/overlapped_carousel.dart';

import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../../Utilities/CustomWidgets/custom_new_button.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({
    super.key,
    this.oneCity = true,
    this.manyCities = true,
    this.conqueredCities = false,
  });

  final bool oneCity;
  final bool manyCities;
  final bool conqueredCities;

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
                child: manyCities
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
                        child: oneCity
                            ? ListView.separated(
                                scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.zero,
                                itemCount: 5,
                                separatorBuilder: (_, i) =>
                                    SizedBox(width: 20.w),
                                itemBuilder: (_, i) => CityWidget(
                                  image: Images.mosque,
                                  title: 'New York',
                                  radius: 30.r,
                                ),
                              )
                            : OneCityWidget(),
                      )
                    :false? SliderWidget(): SizedBox(),


              ),
              SizedBox(height: 18.h),
           //   NoMissionShotsWidget(),
              manyCities
                  ? CarouselSliderWidget()
                  : MakeFirstVictoryWidget(),
              SizedBox(height: 18.h),
              conqueredCities
                  ? ConqueredCitiesLockWidget()
                  : ConqueredCititesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
