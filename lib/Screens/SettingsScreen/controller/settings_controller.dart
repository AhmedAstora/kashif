import 'package:get/get.dart';

import '../../ProfileScreen/ui/edit_profile_screen.dart';
import '../ui/widget/log_out_show_dialog_widget.dart';
import '../ui/widget/report_problem_bottom_sheet_widget.dart';

class SettingsController extends GetxController {
  bool isTappedNavigationEditProfile = false;
  showLogoutDialog() {
    Get.dialog(LogOutShowDialogWidget());
  }
  showReportProblemBottomSheet() {
    Get.bottomSheet(ReportProblemBottomSheetWidget());
  }
  NavigationEditProfile() {
    isTappedNavigationEditProfile = true;

    update();
    Get.to(()=>EditProfileScreen());
  }
}
