import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:kashif/Screens/AuthScreen/ui/about_you_sign_up_screen.dart';
import 'package:kashif/Screens/AuthScreen/ui/add_name_screen.dart';
import 'package:kashif/Screens/AuthScreen/ui/forgot_password_screen.dart';
import 'package:kashif/Screens/AuthScreen/ui/photo_sign_up_screen.dart';
import 'package:kashif/Screens/AuthScreen/ui/sign_up_password_screen.dart';
import 'package:kashif/Screens/AuthScreen/ui/terms_of_use_screen.dart';

import '../../HomeScreen/ui/home_screen.dart';
import '../ui/send_code_screen.dart';

class AuthController extends GetxController {
  // Controllers
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
  TextEditingController();
  final TextEditingController pinPutController = TextEditingController();

  // Focus Nodes
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode pinPutFocusNode = FocusNode();

  // State Variables
  bool isPasswordFocused = false;
  String? errorMessage;
  bool forceError = false;
  bool wrongCode = false;
  bool isExpire = false;

  DateTime endTime = DateTime.now().add(
    const Duration(seconds: 60),
  );

  // Password Validation
  bool get has8Chars =>
      passwordController.text.length >= 8;

  bool get hasUpperAndNumber =>
      RegExp(r'^(?=.*[A-Z])(?=.*\d)')
          .hasMatch(passwordController.text);

  bool get hasSpecialChar =>
      RegExp(r'[!@#$%^&*(),.?":{}|<>]')
          .hasMatch(passwordController.text);

  bool get passwordsMatch =>
      confirmPasswordController.text.isNotEmpty &&
          passwordController.text ==
              confirmPasswordController.text;

  // Countries & Cities
  final Map<String, List<String>> countryCityMap = {
    "Spain": [
      "Madrid",
      "Barcelona",
      "Valencia",
    ],
    "Egypt": [
      "Cairo",
      "Alexandria",
      "Giza",
    ],
  };

  String? selectedCountry;
  String? selectedCity;

  // Navigation States
  bool isTappedForgotPassword = false;
  bool isTappedNavigationForgotPassword = false;
  bool isTappedCheckBox = false;
  bool isTappedSendCode = false;
  bool isTappedConfirm = false;
  bool isTappedUpdatePassword = false;
  bool isTappedNewPassword = false;
  bool isTappedNavigationPhotoSignUp = false;
  bool isTappedNavigationAboutYouSignUp = false;
  bool isTappedNavigationTermsOfUse = false;
  bool isTappedNavigationHomePage = false;

  @override
  void onInit() {
    super.onInit();

    passwordFocusNode.addListener(() {
      isPasswordFocused =
          passwordFocusNode.hasFocus;
      update();
    });
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    pinPutController.dispose();

    passwordFocusNode.dispose();
    pinPutFocusNode.dispose();

    super.onClose();
  }

  // Country Selection
  void onCountryChanged(dynamic country) {
    selectedCountry = country.toString();
    selectedCity = null;
    update();
  }

  // City Selection
  void onCityChanged(dynamic city) {
    selectedCity = city.toString();
    update();
  }

  // Validation
  String? codeValidation(String? value) {
    if (value == null || value.isEmpty) {
      return "Pin is incorrect".tr;
    }

    if (value.length != 4) {
      forceError = true;
      update();
      return "Pin is incorrect".tr;
    }

    final RegExp regexEmoji = RegExp(
      r'(\u00a9|\u00ae|[\u2000-\u3300]|\ud83c[\ud000-\udfff]|\ud83d[\ud000-\udfff]|\ud83e[\ud000-\udfff])',
    );

    if (regexEmoji.hasMatch(value)) {
      return 'mobile number Contain Emoji'.tr;
    }

    return null;
  }

  // Send Code
  void onTapSendCode() {
    String email = emailController.text.trim();

    if (email.isEmpty || !email.contains('@')) {
      errorMessage =
      "Please enter a valid email address";
    } else if (email == "error@test.com") {
      errorMessage =
      "We couldn't find an account with this email";
    } else {
      errorMessage = null;
      isTappedSendCode = true;

      Get.to(
            () => SendCodeScreen(),
      );
    }

    update();
  }

  // Update Password
  void onTapUpdatePassword() {
    Get.snackbar(
      "Success",
      "Password Updated successfully",
      backgroundColor:
      Colors.green.withOpacity(0.2),
      colorText: Colors.green,
      snackPosition: SnackPosition.TOP,
      icon: const Icon(
        Icons.check_circle,
        color: Colors.green,
      ),
      margin: const EdgeInsets.all(20),
      borderRadius: 15,
    );

    Future.delayed(
      const Duration(seconds: 2),
          () {
        Get.offAll(
              () => HomeScreen(),
        );
      },
    );

    isTappedUpdatePassword = true;
    update();
  }

  // Navigation
  void navigationTermsOfUse() {
    isTappedNavigationTermsOfUse = true;
    update();

    Get.to(
          () => TermsOfUseScreen(),
    );
  }

  void onTapForgotPassword() {
    isTappedForgotPassword = true;
    update();
  }

  void navigationForgotPassword() {
    isTappedNavigationForgotPassword = true;
    update();

    Get.to(
          () => ForgotPasswordScreen(),
    );
  }

  void navigationPhotoSignUp() {
    isTappedNavigationPhotoSignUp = true;
    update();

    Get.to(
          () => PhotoSignUpScreen(),
    );
  }

  void navigationAboutYouSignUp() {
    isTappedNavigationAboutYouSignUp = true;
    update();

    Get.to(
          () => AboutYouSignUpScreen(),
    );
  }

  void navigationHomePage() {
    isTappedNavigationHomePage = true;
    update();

    Get.to(
          () => HomeScreen(),
    );
  }

  void onTapCheckBox() {
    isTappedCheckBox = true;
    update();
  }

  void onTapNewPassword() {
    Future.delayed(
      const Duration(seconds: 2),
          () {
        Get.offAll(
              () => AddNameScreen(),
        );
      },
    );

    isTappedNewPassword = true;
    update();
  }

  void onTapConfirm(bool isFromLogin) {
    isTappedConfirm = true;
    update();

    Get.to(
          () => SignUpPasswordScreen(),
    );
  }
}