import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:kashif/Screens/AuthScreen/ui/new_password_screen.dart';
import 'package:kashif/Screens/HomeScreen/ui/home_screen.dart';
import 'package:kashif/Screens/ProfileScreen/ui/friends_profile_screen.dart';
import 'package:kashif/Screens/ProfileScreen/ui/missions_shots_screen.dart';
import 'Helper/SharedPreferance/shared_preferance.dart';
import 'Screens/AuthScreen/ui/about_you_sign_up_screen.dart';
import 'Screens/HomeScreen/ui/friends_screen.dart';
import 'Screens/HomeScreen/ui/notification_screen.dart';
import 'Screens/ProfileScreen/ui/profile_screen.dart';
import 'Screens/SettingsScreen/ui/settings_screen.dart';
import 'Screens/SplashScreen/ui/splash_screen.dart';
import 'Utilities/MainData/MainData.dart';
import 'Utilities/Transalation/Translation.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await SpHelper.spHelper.initSharedPrefrences();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(MediaQuery.of(context).size.width,
          MediaQuery.of(context).size.height),
      minTextAdapt: true,
      ensureScreenSize: true,
      builder: (context, widget) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: MainData.defaultThem,
        title: "Waiter App",
        translations: Messages(),
        // supportedLocales: const [Locale('en', 'US'), Locale('ar', 'SA')],
        // locale: Locale(SpHelper.spHelper.getLanguage()! == "ar" ? "ar" : "en"),
        home: MissionsShotsScreen(),
      ),
    );
  }
}