import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../Utils/All_Static_Texts/all_static_text.dart';

class RentalSearch extends StatelessWidget {
  const RentalSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [

        ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          collapsedBackgroundColor: Colors.amber[50],
          title: CustomText(title: AllStaticText.question5,fontWeight: FontWeight.bold,),
          children: [
            CustomText(
              title: AllStaticText.q5ansp1,
              fontSize: 3.sp,
            ),
            CustomText(
              title: AllStaticText.q5ansp2,
              fontSize: 3.sp,
            ),
            CustomText(
              title: AllStaticText.q5ansp3,
              fontSize: 3.sp,
            ),
            CustomText(
              title: AllStaticText.q5ansp4,
              fontSize: 3.sp,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              title: AllStaticText.q5ansp5,
              fontSize: 3.sp,
            ),
            CustomText(
              title: AllStaticText.q5ansp6,
              fontSize: 3.sp,
              fontWeight: FontWeight.bold,

            ),
            CustomText(
              title: AllStaticText.q5ansp7,
              fontSize: 3.sp,
            ),
            CustomText(
              title: AllStaticText.q5ansp8,
              fontSize: 3.sp,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              title: AllStaticText.q5ansp9,
              fontSize: 3.sp,
            ),
            CustomText(
              title: AllStaticText.q5ansp10,
              fontSize: 3.sp,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              title: AllStaticText.q5ansp11,
              fontSize: 3.sp,
            ),
            CustomText(
              title: AllStaticText.q5ansp12,
              fontSize: 3.sp,
            ),
          ],
        ),
        SizedBox(height: 10.h),

        ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          collapsedBackgroundColor: Colors.amber[50],
          title: CustomText(title: AllStaticText.question6,fontWeight: FontWeight.bold,),
          children: [
            CustomText(
              title: AllStaticText.q6ansp1,
              fontSize: 3.sp,
            ),

          ],
        ),
        SizedBox(height: 10.h),

        ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          collapsedBackgroundColor: Colors.amber[50],
          title: CustomText(title: AllStaticText.question7,fontWeight: FontWeight.bold,),
          children: [
            CustomText(
              title: AllStaticText.q7ansp1,
              fontSize: 3.sp,
            ),

          ],
        ),
        SizedBox(height: 10.h),

        ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          collapsedBackgroundColor: Colors.amber[50],
          title: CustomText(title: AllStaticText.question8,fontWeight: FontWeight.bold,),
          children: [
            CustomText(
              title: AllStaticText.q8ansp1,
              fontSize: 3.sp,
            ),

          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
