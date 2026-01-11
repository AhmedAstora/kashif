import 'package:get/get.dart';
import 'package:kashif/Screens/ProfileScreen/ui/change_password_screen.dart';

import '../../ProfileScreen/ui/edit_profile_screen.dart';
import '../ui/widget/log_out_show_dialog_widget.dart';
import '../ui/widget/report_problem_bottom_sheet_widget.dart';

class SettingsController extends GetxController {
  bool isTappedNavigationEditProfile = false;
  bool isTappedNavigationChangePassword = false;
  showLogoutDialog() {
    Get.dialog(LogOutShowDialogWidget());
  }
  showReportProblemBottomSheet() {
    Get.bottomSheet(ReportProblemBottomSheetWidget());
  }
  navigationEditProfile() {
    isTappedNavigationEditProfile = true;

    update();
    Get.to(()=>EditProfileScreen());
  }
  navigationChangePassword() {
    isTappedNavigationChangePassword = true;

    update();
    Get.to(()=>ChangePasswordScreen());
  }
}
