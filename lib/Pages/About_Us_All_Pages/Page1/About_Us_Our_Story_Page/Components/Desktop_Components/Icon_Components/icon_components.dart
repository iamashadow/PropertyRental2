import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Utils/All_Static_Texts/all_static_text.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

import '../../../../../../../Universal_Widgets/custom_text.dart';

class IconComponents extends StatelessWidget {

  IconData? myIcon;
  String? iconDetails;

  IconComponents({super.key,

    this.myIcon,
    this.iconDetails,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(myIcon, size: 80.h, color: ColorManager.kasmiriBlue,),
        SizedBox(height: 1.h*20,),
        CustomText(
          title: iconDetails,
          fontWeight: FontWeight.w500,
          fontSize: 3.sp,
          fontColor: ColorManager.blackColor,
        ),

      ],
    );
  }
}
