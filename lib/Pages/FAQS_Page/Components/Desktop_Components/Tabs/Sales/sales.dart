import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../Utils/All_Static_Texts/all_static_text.dart';

class Sales extends StatelessWidget {
  const Sales({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          collapsedBackgroundColor: Colors.amber[50],
          title: CustomText(title: AllStaticText.question9,fontWeight: FontWeight.bold,),
          children: [
            CustomText(
              title: AllStaticText.q9ansp1,
              fontSize: 3.sp,
            ),

          ],
        ),
        SizedBox(height: 10.h),

        ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          collapsedBackgroundColor: Colors.amber[50],
          title: CustomText(title: AllStaticText.question10,fontWeight: FontWeight.bold,),
          children: [
            CustomText(
              title: AllStaticText.q10ansp1,
              fontSize: 3.sp,
            ),

          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
