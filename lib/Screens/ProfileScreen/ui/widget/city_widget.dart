import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import '../../../../Utilities/Constants/image_constant.dart';
import '../../../../Utilities/CustomWidgets/custom_text.dart';

class CityWidget extends StatelessWidget {
  CityWidget({
    this.isSelected = false,
    this.onTap,
    required this.title,
    required this.image,
    required this.radius,
  });

  bool isSelected;
  double radius;
  String title;
  String image;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            CircleAvatar(
              radius: radius,
              child: ClipOval(child: Image.asset(image, fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 90.r,
              width: 90.r,
              child: SfRadialGauge(
                axes: [
                  RadialAxis(
                    minimum: 0,
                    maximum: 100,
                    startAngle: 0,
                    endAngle: 360,
                    showLabels: false,
                    labelsPosition: ElementsPosition.inside,
                    showTicks: false,
                    radiusFactor: 0.7,
                    interval: 0,
                    showFirstLabel: false,
                    pointers: [
                      RangePointer(
                        value: 10,
                        cornerStyle: CornerStyle.bothCurve,
                        width: 12,
                        sizeUnit: GaugeSizeUnit.logicalPixel,
                        color: Colors.black,
                      ),
                      WidgetPointer(
                        child: Image.asset(
                          Images.airPlan,
                          width: 20.r,
                          height: 20.r,
                        ),
                      ),
                      // MarkerPointer(
                      //   value: 10,
                      //   enableDragging: true,
                      //   onValueChanged: (value) {},
                      //   markerType: MarkerType.image,
                      //   imageUrl: Images.airPlan,
                      //   markerHeight: 20,
                      //   markerWidth: 20,
                      //   borderWidth: 1,
                      //
                      // )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 5.h),
        CustomText(title, fontSize: 10.sp, textAlign: TextAlign.center),
      ],
    );
  }
}
