import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

class ServicePoints extends StatelessWidget {

  String? title;

  ServicePoints({super.key,

    this.title,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.circleCheck, color: ColorManager.greenColor,),
        SizedBox(width: 3.w,),

        Expanded(
          child: CustomText(
            textAlign: TextAlign.start,
            title: title,
            fontWeight: FontWeight.w500,
            fontSize: 3.sp,
            fontColor: Colors.black,

          ),
        )
      ],
    );
  }
}
