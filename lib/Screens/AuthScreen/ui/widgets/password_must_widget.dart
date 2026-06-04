import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PasswordMustWidget extends StatelessWidget {
  final String text;
  final bool isDone;

  const PasswordMustWidget({super.key, required this.text, required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.circle, size: 8.w, color: isDone ? Colors.green : Colors.white),
        SizedBox(width: 8.w),
        Text(
          text,
          style: TextStyle(
            color: isDone ? Colors.green : Colors.white, // تغيير اللون للأخضر عند التحقق
            fontSize: 10.sp,
          ),
        ),
      ],
    );
  }
}