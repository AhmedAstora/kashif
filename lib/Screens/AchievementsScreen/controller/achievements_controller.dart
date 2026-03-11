import 'package:get/get.dart';
import 'package:kashif/Screens/AchievementsScreen/ui/widget/point_xp_show_dialog_widget.dart';

class AchievementsController extends GetxController {

  showPointXpDialog() {
    Get.dialog(PointXpShowDialogWidget());
  }

}
