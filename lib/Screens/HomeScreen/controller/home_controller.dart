import 'package:get/get.dart';
import 'package:kashif/Screens/HomeScreen/ui/my_friends_screen.dart';
import 'package:kashif/Screens/HomeScreen/ui/notification_screen.dart';

import '../ui/friends_screen.dart';
class HomeController extends GetxController{
  bool isTappedNavigationMyFriends = false;
  bool isTappedNavigationFriends = false;
  bool isTappedNavigationNotification = false;


  navigationMyFriends() {
    isTappedNavigationMyFriends = true;

    update();
    Get.to(()=>MyFriendsScreen());
  }
  navigationFriends() {
    isTappedNavigationFriends = true;

    update();
    Get.to(()=>FriendsScreen());
  }
  navigationNotification() {
    isTappedNavigationNotification = true;

    update();
    Get.to(()=>NotificationScreen());
  }
}