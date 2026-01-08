import 'package:get/get.dart';
import 'package:kashif/Screens/ProfileScreen/ui/missions_shots_screen.dart';
class ProfileController extends GetxController{

  bool isTappedNavigationMissionsShots = false;

  NavigationMissionsShots() {
    isTappedNavigationMissionsShots = true;

    update();
    Get.to(()=>MissionsShotsScreen());
  }
}