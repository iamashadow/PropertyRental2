import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../Universal_Widgets/service_points.dart';
import '../../../../../../Utils/All_Static_Texts/all_static_text.dart';
import '../../../../../../Utils/Color_Manager/colo_manager.dart';

class OurRentalServiceInclude extends StatelessWidget {
  const OurRentalServiceInclude({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          title: AllStaticText.rentalServiceInclude,
          fontSize: 3.sp,
          fontWeight: FontWeight.bold,
          fontColor: ColorManager.blackColor,
        ),
        SizedBox(height: 10.h,),

        ServicePoints(title: AllStaticText.rentalServiceP1,),
        SizedBox(height: 5.h,),

        ServicePoints(title: AllStaticText.rentalServiceP2,),
        SizedBox(height: 5.h,),

        ServicePoints(title: AllStaticText.rentalServiceP3,),
        SizedBox(height: 5.h,),

        ServicePoints(title: AllStaticText.rentalServiceP4,),
        SizedBox(height: 5.h,),

        ServicePoints(title: AllStaticText.rentalServiceP5,),
        SizedBox(height: 5.h,),

        ServicePoints(title: AllStaticText.rentalServiceP6,),
        SizedBox(height: 5.h,),

        ServicePoints(title: AllStaticText.rentalServiceP7,),
        SizedBox(height: 5.h,),

        ServicePoints(title: AllStaticText.rentalServiceP8,),
        SizedBox(height: 5.h,),

        ServicePoints(title: AllStaticText.rentalServiceP9,),
        SizedBox(height: 5.h,),

      ],
    );
  }
}
