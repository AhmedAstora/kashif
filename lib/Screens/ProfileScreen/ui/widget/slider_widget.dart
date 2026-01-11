import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Utilities/Constants/image_constant.dart';

import '../../../../Utilities/Constants/app_color.dart';
import '../../../../Utilities/CustomWidgets/image_slider_thumb.dart';

class SliderWidget extends StatefulWidget {
  SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  @override
  void initState() {
    super.initState();
    loadImage(Images.airPlan).then((img) {
      setState(() {
        thumbImage = img;
      });
    });
  }

  ui.Image? thumbImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 57.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 10.h),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            spreadRadius: 0,
            color: Color(0x39d0d0d0).withValues(alpha: .02),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        gradient: AppColor.profileGradient.withOpacity(.2),
      ),
      child: Center(
        child: thumbImage == null
            ? const SizedBox()
            : SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbShape: ImageSliderThumb(image: thumbImage!, size: 32),
                  overlayShape: SliderComponentShape.noOverlay,
                ),
                child: Slider(
                  value: 50,
                  max: 100,
                  inactiveColor: Color(0xffE7D6C9).withValues(alpha: .2),

                  onChanged: (value) {},
                ),
              ),
      ),
    );
  }

  Future<ui.Image> loadImage(String asset) async {
    final data = await rootBundle.load(asset);
    final bytes = data.buffer.asUint8List();
    final codec = await ui.instantiateImageCodec(bytes);
    final frame = await codec.getNextFrame();
    return frame.image;
  }
}
