import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';

import '../../../../../../../Utils/Color_Manager/colo_manager.dart';

class SalesServicePackagePoints extends StatelessWidget {

  String? title;
  String? description;

  SalesServicePackagePoints({super.key, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(FontAwesomeIcons.solidCircleDot, color: ColorManager.blackColor, size: 2.sp,),
        SizedBox(width: 2.w,),

        CustomText(
          textAlign: TextAlign.start,
          title: title,
          fontWeight: FontWeight.bold,
          fontSize: 3.sp,
          fontColor: Colors.black,

        ),
        SizedBox(width: 2.w,),
        Expanded(
          child: CustomText(
            textAlign: TextAlign.start,
            title: description,
            fontSize: 3.sp,
            fontColor: Colors.black,
          
          ),
        )
      ],
    );
  }
}
