import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

// import '../../../../Utilities/Constants/image_constant.dart';

class FlightSliderWidget extends StatefulWidget {
  final double circleRadius; // حجم الدائرة (الصورة)
  final double planeSize;    // حجم الطائرة
  final String imagePath;   // مسار الصورة
    double progress ;    // تقدم الطائرة (0.0 إلى 1.0)

   FlightSliderWidget({
    Key? key,
    this.circleRadius = 47.0, // القيمة الافتراضية كما في كودك
    this.planeSize = 40.0,    // القيمة الافتراضية كما في كودك
    this.progress = 0.2,     // القيمة الافتراضية كما في كودك
    required this.imagePath,
  }) : super(key: key);

  @override
  _FlightSliderWidgetState createState() => _FlightSliderWidgetState();
}

class _FlightSliderWidgetState extends State<FlightSliderWidget> {
   // تقدم الطائرة (0.0 إلى 1.0)

  double get _angle => (widget.progress * 2 * math.pi) - (math.pi / 2);

  void _updateProgress(Offset localPosition, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double angle = math.atan2(localPosition.dy - center.dy, localPosition.dx - center.dx);

    double normalizedAngle = angle + (math.pi / 2);
    if (normalizedAngle < 0) normalizedAngle += 2 * math.pi;

    setState(() {
     widget.progress = (normalizedAngle / (2 * math.pi)).clamp(0.0, 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    // حساب حجم الـ CustomPaint ليتناسب مع نصف قطر الدائرة المختار
    double paintSize = (widget.circleRadius * 2) + 6.r;

    return GestureDetector(
      onPanUpdate: (details) {
        RenderBox renderBox = context.findRenderObject() as RenderBox;
        _updateProgress(renderBox.globalToLocal(details.globalPosition), renderBox.size);
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            radius: widget.circleRadius.r,
            backgroundColor: Colors.grey[200],
            backgroundImage: AssetImage(widget.imagePath),
          ),
          CustomPaint(
            size: Size(paintSize.r, paintSize.r),
            painter: PlaneSliderPainter(
              angle: _angle,
              progress: widget.progress,
              planeSize: widget.planeSize, // تمرير حجم الطائرة للرسام
            ),
          ),
        ],
      ),
    );
  }
}

class PlaneSliderPainter extends CustomPainter {
  final double angle;
  final double progress;
  final double planeSize; // حجم الطائرة

  PlaneSliderPainter({
    required this.angle,
    required this.progress,
    required this.planeSize,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = size.width / 2.1;
    Rect rect = Rect.fromCircle(center: center, radius: radius);

    final gradient = LinearGradient(
      colors: [Color(0xffE7D6C9), Color(0xffFE8769)],
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
    );
    final gradient1 = LinearGradient(
      colors: [Color(0xffE7D6C9), Color(0xffFE8769)],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      stops: [0, 1],
    );

    Paint trackPaint = Paint()
      ..color = Colors.orange.withOpacity(0.1)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.5;
    canvas.drawCircle(center, radius, trackPaint);

    Paint progressPaint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.5;

    canvas.drawArc(rect, -math.pi / 2, progress * 2 * math.pi, false, progressPaint);

    double planeX = center.dx + radius * math.cos(angle);
    double planeY = center.dy + radius * math.sin(angle);

    TextPainter textPainter = TextPainter(textDirection: TextDirection.ltr);
    textPainter.text = TextSpan(
      text: String.fromCharCode(Icons.airplanemode_active.codePoint),
      style: TextStyle(
        fontSize: planeSize.r, // استخدام الحجم الممرر
        fontFamily: Icons.airplanemode_active.fontFamily,
        foreground: Paint()
          ..shader = gradient1.createShader(
            Rect.fromLTWH(0, 0, planeSize.r, planeSize.r),
          ),
      ),
    );
    textPainter.layout();

    canvas.save();
    canvas.translate(planeX, planeY);
    canvas.rotate(angle + (math.pi / 1)); // حافظنا على إعدادك للتدوير
    textPainter.paint(canvas, Offset(-textPainter.width / 2, -textPainter.height / 2));
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}