import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // 1. تعريف التدرج اللوني (من الأعلى للأسفل)
    final Gradient gradient = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      stops: [0,0.46],
      colors: [
        const Color(0x6EE7D6C9), // اللون الأول
        const Color(0xFF5E7BDE), // اللون الثاني
      ],
    );

    // 2. إنشاء الـ Paint وتعيين الـ Shader له
    Paint paint = Paint()
      ..shader = gradient.createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.fill;

    // 3. رسم المسار (Path)
    Path path = Path();
    path.moveTo(0, 50.h);
    path.quadraticBezierTo(size.width * 0.5, -40.h, size.width, 55.h);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    // 4. رسم الظل (اختياري)
    canvas.drawShadow(path, Colors.black, 10, true);

    // 5. رسم المسار باللون المتدرج
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}