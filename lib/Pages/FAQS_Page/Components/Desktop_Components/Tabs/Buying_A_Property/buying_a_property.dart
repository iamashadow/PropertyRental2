import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';

import '../../../../../../Utils/All_Static_Texts/all_static_text.dart';

class BuyingAProperty extends StatelessWidget {
  const BuyingAProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          // backgroundColor: Color(0xFFF6F7FA),
          collapsedBackgroundColor: Colors.amber[50],
          title: CustomText(title: AllStaticText.question1,fontWeight: FontWeight.bold,),
          children: [
            CustomText(
              title: AllStaticText.q1ansp1,
              fontSize: 3.sp,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              title: AllStaticText.q1ansp2,
              fontSize: 3.sp,
            ),
            CustomText(
              title: AllStaticText.q1ansp3,
              fontSize: 3.sp,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              title: AllStaticText.q1ansp4,
              fontSize: 3.sp,
            ),
            CustomText(
              title: AllStaticText.q1ansp5,
              fontSize: 3.sp,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              title: AllStaticText.q1ansp6,
              fontSize: 3.sp,

            ),
          ],
        ),
        SizedBox(height: 10.h),

        ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          collapsedBackgroundColor: Colors.amber[50],
          title: CustomText(title: AllStaticText.question2,fontWeight: FontWeight.bold,),
          children: [
            CustomText(
              title: AllStaticText.q2ansp1,
              fontSize: 3.sp,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              title: AllStaticText.q2ansp2,
              fontSize: 3.sp,
            ),
            CustomText(
              title: AllStaticText.q2ansp3,
              fontSize: 3.sp,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              title: AllStaticText.q2ansp4,
              fontSize: 3.sp,
            ),
            CustomText(
              title: AllStaticText.q2ansp5,
              fontSize: 3.sp,
              fontWeight: FontWeight.bold,
            ),
            CustomText(
              title: AllStaticText.q2ansp6,
              fontSize: 3.sp,

            ),
            CustomText(
              title: AllStaticText.q2ansp7,
              fontSize: 3.sp,

            ),
            CustomText(
              title: AllStaticText.q2ansp8,
              fontSize: 3.sp,

            ),
          ],
        ),
        SizedBox(height: 10.h),

        ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          collapsedBackgroundColor: Colors.amber[50],
          title: CustomText(title: AllStaticText.question3,fontWeight: FontWeight.bold,),
          children: [
            CustomText(
              title: AllStaticText.q3ansp1,
              fontSize: 3.sp,
            ),
          ],
        ),
        SizedBox(height: 10.h),

        ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          collapsedBackgroundColor: Colors.amber[50],
          title: CustomText(title: AllStaticText.question4,fontWeight: FontWeight.bold,),
          children: [
            CustomText(
              title: AllStaticText.q4ansp1,
              fontSize: 3.sp,
            ),
          ],
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
