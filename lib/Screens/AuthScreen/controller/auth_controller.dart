import 'package:get/get.dart';
import 'package:kashif/Screens/AuthScreen/ui/about_you_sign_up_screen.dart';
import 'package:kashif/Screens/AuthScreen/ui/add_name_screen.dart';
import 'package:kashif/Screens/AuthScreen/ui/forgot_password_screen.dart';
import 'package:kashif/Screens/AuthScreen/ui/photo_sign_up_screen.dart';
import 'package:kashif/Screens/AuthScreen/ui/sign_up_password_screen.dart';
import 'package:kashif/Screens/AuthScreen/ui/sign_up_screen.dart';
import 'package:kashif/Screens/AuthScreen/ui/terms_of_use_screen.dart';

import '../../HomeScreen/ui/home_screen.dart';
import '../ui/new_password_screen.dart';
import '../ui/send_code_screen.dart';

class AuthController extends GetxController{
  bool isTappedForgotPassword = false;
  bool NavigtionForgotPassword = false;
  bool isTappedCheckBox = false;
  bool isTappedSendCode = false;
  bool isTappedConfirm = false;
  bool isTappedUpdatePassword = false;
  bool isTappedNavigationAddName = false;
  bool isTappedNavigationPhotoSignUp = false;
  bool isTappedNavigationAboutYouSignUp = false;
  bool isTappedNavigationTermsOfUse = false;
  bool isTappedNavigationHomePage = false;

  onTapForgotPassword() {
    isTappedForgotPassword = true;

    update();

  }
  onTapSendCode() {
    isTappedSendCode = true;

    update();
    Get.to(()=>SendCodeScreen());
  }
  onTapNavigationAddName() {
    isTappedNavigationAddName = true;

    update();
    Get.to(()=>AddNameScreen());
  }
  onTapConfirm(bool isFromLogin) {
    if(isFromLogin){

    }else {

    }
    isTappedConfirm = true;

    update();
    Get.to(()=>SignUpPasswordScreen());
  }
  onTapUpdatePassword() {
    isTappedUpdatePassword = true;

    update();
  }
  NavigationForgotPassword() {
    NavigtionForgotPassword = true;

    update();
    Get.to(()=>ForgotPasswordScreen());
  }
  NavigationPhotoSignUp() {
    isTappedNavigationPhotoSignUp = true;

    update();
    Get.to(()=>PhotoSignUpScreen());
  }
  NavigationAboutYouSignUp() {
    isTappedNavigationAboutYouSignUp = true;

    update();
    Get.to(()=>AboutYouSignUpScreen());
  }
  NavigationTermsOfUse() {
    isTappedNavigationTermsOfUse = true;

    update();
    Get.to(()=>TermsOfUseScreen());
  }
  NavigationHomePage() {
    isTappedNavigationHomePage = true;

    update();
    Get.to(()=>HomeScreen());
  }
  onTapCheckBox() {
    isTappedCheckBox = true;
    update();
  }
}