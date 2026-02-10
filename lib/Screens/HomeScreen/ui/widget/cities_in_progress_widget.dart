import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kashif/Screens/HomeScreen/ui/widget/flight_slider_widget.dart';
import 'package:kashif/Utilities/CustomWidgets/custom_text.dart';

import '../../../../Utilities/Constants/image_constant.dart';

class CitiesInProgressWidget extends StatelessWidget {
  const CitiesInProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlightSliderWidget(
          imagePath: Images.mosque,
        ),
        CustomText('Alexandria'),
      ],
    );
  }
}
