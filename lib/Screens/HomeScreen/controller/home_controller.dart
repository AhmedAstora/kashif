import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/multipart/form_data.dart' as dio;
import 'package:kashif/Screens/HomeScreen/ui/friend_requests_screen.dart';
import 'package:kashif/Screens/HomeScreen/ui/my_friends_screen.dart';
import 'package:kashif/Screens/HomeScreen/ui/notification_screen.dart';
import 'package:kashif/Screens/HomeScreen/ui/add_friend_screen.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/remove_friend_show_dialog_widget.dart';

import '../ui/friends_screen.dart';
class HomeController extends GetxController{
  bool isTappedNavigationMyFriends = false;
  bool isTappedCheckButton = false;
  bool isTappedNavigationFriends = false;
  bool isTappedNavigationNotification = false;
  bool isTappedNavigationFriendRequests = false;
  bool isTappedNavigationAddFriend = false;
  var selectedIndex = 2.obs;


  final TextEditingController searchController = TextEditingController();
  navigationMyFriends() {
    isTappedNavigationMyFriends = true;

    update();
    Get.to(()=>MyFriendsScreen());
  }

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
  navigationAddFriend() {
    isTappedNavigationAddFriend = true;

    update();
    Get.to(()=>AddFriendScreen());
  }
  navigationFriendRequests() {
    isTappedNavigationFriendRequests = true;

    update();
    Get.to(()=>FriendRequestsScreen());
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
  showLogoutDialog() {
    Get.dialog(RemoveFriendShowDialogWidget());
  }
  final RxString query = ''.obs;

  void onSearchChanged(String value) {
    query.value = value.trim();
  }

  void clearSearch() {
    searchController.clear();
    query.value = '';
  }
  onTapCheckButton() {
    isTappedCheckButton = true;
    update();
  }
  @override
  void onClose() {
    searchController.dispose();
    super.onClose();
  }
}