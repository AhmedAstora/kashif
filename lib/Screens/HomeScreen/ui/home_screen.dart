import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/admin_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/cities_in_progress_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/interest_home_widget.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/nav_bar_painter.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
import '../../../Utilities/Constants/app_color.dart';
import '../../../Utilities/Constants/image_constant.dart';
import '../../AchievementsScreen/ui/achievements_screen.dart';
import '../../MapCityScreen/ui/city_screen.dart';
import '../../MissionsScreen/ui/new_missions_screen.dart';
import '../../ProfileScreen/ui/profile_screen.dart';
import '../controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final con = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // 1. المحتوى الأساسي يملأ الشاشة بالكامل
          Obx(
            () => IndexedStack(
              index: con.selectedIndex.value,
              children: [
                AchievementsScreen(),
                NewMissionsScreen(),
                _buildMainHomeContent(con),
                CityScreen(),
                ProfileScreen(),
              ],
            ),
          ),

          // 2. شريط التنقل السفلي (Overlay)
          // استبدل جزء الـ Positioned بهذا الكود:
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                // 1. القوس السفلي (الخلفية)
                SizedBox(
                  height: 100.h,
                  width: double.infinity,
                  child: CustomPaint(painter: NavBarPainter()),
                ),

                // 2. الأيقونات
                Positioned(
                  bottom: 45.h,
                  left: 0,
                  right: 0,
                  child: Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(5, (index) {
                        bool isSelected = con.selectedIndex.value == index;
                        double rotationAngle = (index - 3) * 0.25;

                        // معادلة لتوزيع الارتفاع بناءً على القوس
                        // الأطراف (0, 4) تأخذ ارتفاعاً أكبر، والمركز (2) يبقى في الأعلى
                        double topPadding;
                        if (index == 0 || index == 4)
                          topPadding = 65.h;
                        else if (index == 1 || index == 3)
                          topPadding = 25.h;
                        else
                          topPadding = 0.h;

                        return GestureDetector(
                          onTap: () => con.changeIndex(index),
                          // تغليف الـ Stack بـ SizedBox ثابت الحجم هو الحل الجذري
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              // 1. إذا كانت الأيقونة مختارة، نعرض صورة الشكل السداسي في الخلف
                              if (isSelected)
                                Transform.rotate(
                                  angle: rotationAngle,
                                  child: Image.asset(Images.buttonNavBar, scale: 4,),
                                ),

                              // 2. عرض أيقونة الصفحة
                              // وضعنا الـ Padding هنا، لكنه الآن محصور داخل الـ SizedBox الثابت
                              Padding(
                                padding: EdgeInsets.only(top: isSelected ? 0 : topPadding),
                                child: Image.asset(
                                  _getImage(index),
                                  scale: 4,
                                  color: isSelected ?Color(0xff4A5EA3):Color(0xff8B9EE0),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainHomeContent(HomeController con) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: AppColor.getGradient(stops: [0, 0.7]),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50.h),
              Row(
                children: [
                  Image.asset(Images.logo, scale: 17),
                  Spacer(),
                  CustomText(
                    'Home',
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => con.navigationFriends(),
                    child: Icon(
                      Icons.people_rounded,
                      size: 27.sp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 18.w),
                  GestureDetector(
                    onTap: () => con.navigationNotification(),
                    child: Icon(
                      Icons.notifications_none,
                      size: 27.sp,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              CustomText(
                'Welcome, Adam!',
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomText(
                      'Turn the world to your playground, Start now!',
                    ),
                  ),
                  SizedBox(width: 5.w),
                  Image.asset(Images.fire, scale: 4),
                ],
              ),
              SizedBox(height: 52.h),
              AdminWidget(),
              SizedBox(height: 26.h),
              Row(
                children: [
                  CustomText(
                    'Cities in Progress',
                    fontWeight: FontWeight.w600,
                    fontSize: 16.sp,
                  ),
                  Spacer(),
                  CustomText(
                    'see all',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
              SizedBox(height: 17.h),
              SizedBox(
                height: 130.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  itemCount: 5,
                  separatorBuilder: (_, i) => SizedBox(width: 12.w),
                  itemBuilder: (_, i) => CitiesInProgressWidget(),
                ),
              ),
              SizedBox(height: 17.h),
              CustomText(
                'Nearby Picks for You',
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
              SizedBox(height: 17.h),
              SizedBox(
                height: 150.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.zero,
                  itemCount: 5,
                  separatorBuilder: (_, i) => SizedBox(width: 10.w),
                  itemBuilder: (_, i) => InterestHomeWidget(),
                ),
              ),
              SizedBox(height: 120.h),
              // مساحة إضافية لتفادي التغطية بواسطة الـ NavBar
            ],
          ),
        ),
      ),
    );
  }

  String _getImage(int index) {
    List<String> images = [
      Images.emojiNavBar,
      Images.trackNavBar,
      Images.homeNavBar,
      Images.locationNavBar,
      Images.personNavBar,
    ];
    return images[index];
  }
}
