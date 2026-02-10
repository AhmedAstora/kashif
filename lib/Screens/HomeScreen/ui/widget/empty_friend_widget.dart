import 'package:flutter/material.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/search_add_friend_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';

class EmptyFriendWidget extends StatelessWidget {
  const EmptyFriendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 150),
          Icon(Icons.people_sharp, size: 90, color: Colors.white),
          SizedBox(height: 10),
          CustomText(
            'No friends yet!',
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          SizedBox(height: 5),
          CustomText(
            'Add friends to see their progress and share  the adventure',
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 34),
          SearchAddFriendWidget(hintText: 'Username', controller: TextEditingController()),
        ],
      ),
    );
  }
}
