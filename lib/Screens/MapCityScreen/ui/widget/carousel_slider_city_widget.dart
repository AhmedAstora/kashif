import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';
// استبدل المسار بالمسار الصحيح لديك
// import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';

class CarouselSliderCityWidget extends StatefulWidget {
  const CarouselSliderCityWidget({super.key});

  @override
  State<CarouselSliderCityWidget> createState() => _CarouselSliderCityWidgetState();
}

class _CarouselSliderCityWidgetState extends State<CarouselSliderCityWidget> {
  late PageController _pageController;
  double _currentPage = 2.0;
  int? _blurredIndex;

  final List<String> images = [
    'assets/images/mosque.png',
    'assets/images/mosque.png',
    'assets/images/mosque.png',
    'assets/images/mosque.png',
    'assets/images/mosque.png',
  ];

  final List<String> titles = [
    "Ahl Masr Walkway",
    "Ahl Masr Walkway",
    "Ahl Masr Walkway",
    "Ahl Masr Walkway",
    "Ahl Masr Walkway",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 2, viewportFraction: 0.5);
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!;
        _blurredIndex = null; // إلغاء الضباب فور بدء السحب
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // لا يتفعل الضغط إلا للعنصر الذي في المنتصف تقريباً
                  if ((index - _currentPage).abs() < 0.2) {
                    setState(() {
                      _blurredIndex = (_blurredIndex == index) ? null : index;
                    });
                  }
                },
                child: Container(color: Colors.transparent), // مساحة التقاط اللمس
              );
            },
          ),

          // طبقة العرض البصري: نستخدم IgnorePointer لكي تمر اللمسات للأسفل
          IgnorePointer(
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: _buildOrderedStack(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildOrderedStack() {
    List<int> drawOrder = [];
    int roundedPage = _currentPage.round();

    for (int i = 0; i < images.length; i++) {
      if ((i - roundedPage).abs() > 1) drawOrder.add(i);
    }
    for (int i = 0; i < images.length; i++) {
      if ((i - roundedPage).abs() == 1) drawOrder.add(i);
    }
    if (roundedPage >= 0 && roundedPage < images.length) {
      drawOrder.add(roundedPage);
    }

    return drawOrder.map((index) => _buildAnimatedItem(index)).toList();
  }

  Widget _buildAnimatedItem(int index) {
    double relativePos = index - _currentPage;
    double absDiff = relativePos.abs();

    double scale = (1.0 - (absDiff * 0.20)).clamp(0.6, 1.0);
    double opacity = (1.0 - (absDiff * 0.15)).clamp(0.0, 1.0);
    double xOffset = relativePos * 60.0;

    return Transform.translate(
      offset: Offset(xOffset, 0),
      child: Transform.scale(
        scale: scale,
        child: Opacity(
          opacity: opacity,
          child: _buildItemContent(index, absDiff),
        ),
      ),
    );
  }

  Widget _buildItemContent(int index, double absDiff) {
    double textOpacity = (1.0 - (absDiff * 2.5)).clamp(0.0, 1.0);
    bool isSelected = absDiff < 0.1;
    bool showBlur = _blurredIndex == index && isSelected;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            // كارد الصورة الأساسي
            Container(
              width: 200,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(absDiff < 0.5 ? 0.25 : 0.05),
                    blurRadius: 15,
                    offset: const Offset(0, 8),
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage(images[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // تأثير الضباب والنص عند التفعيل
            if (showBlur)
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                  child: Container(
                    width: 200,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.35),
                    ),
                    alignment: Alignment.center,
                    child: CustomText(
                      "more shots",
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
          ],
        ),
        Opacity(
          opacity: textOpacity,
          child: CustomText(
            titles[index],
            fontSize: 12,
            color: Colors.grey.shade200,
          ),
        ),
      ],
    );
  }
}