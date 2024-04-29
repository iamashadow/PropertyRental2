import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

class ServiceTagsAndLogos extends StatelessWidget {

  String? title;
  Color? fontColor;
  double? fontSize;
  FontWeight? fontWeight;


  ServiceTagsAndLogos({super.key,


    this.title,
    this.fontWeight,
    this.fontColor,
    this.fontSize,


  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.check_circle_outline, color: ColorManager.greenColor,),
        SizedBox(width: 1.w*2,),
        Expanded(
          child: CustomText(
            title: title,
            fontColor: fontColor,
            fontSize: fontSize,
            fontWeight: fontWeight,
          ),
        ),
      ],
    );
  }
}
