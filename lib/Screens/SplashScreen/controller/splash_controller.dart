
import 'dart:developer';

import 'package:get/get.dart';
import 'package:kashif/Screens/AuthScreen/ui/add_name_screen.dart';
import 'package:kashif/Screens/AuthScreen/ui/login_screen.dart';
import 'package:kashif/Screens/AuthScreen/ui/sign_up_screen.dart';
import 'package:kashif/Screens/SplashScreen/ui/welcome_screen.dart';

import '../../../Helper/SharedPreferance/shared_preferance.dart';




class SplashController extends GetxController {
  bool isTappedLogin = false;
  bool isTappedSignUp = false;

  onTapLogin() {
    isTappedLogin = true;
    isTappedSignUp = false;

    update();
    Get.to(()=>LoginScreen());
  }
  onTapSignUp() {
    isTappedSignUp = true;
    isTappedLogin = false;
    update();
     Get.to(()=>SignUpScreen());
  }




  navigationFunction() async {
    await Future.delayed(const Duration(milliseconds: 2000));

    if (SpHelper.spHelper.getIsLoginFirstTime()) {
      Get.off(() => const WelcomeScreen());
    } else {
      // Get.off(() => MainNavigationScreen());
    }
    // Get.off(() => MainScreen());
  }
}
