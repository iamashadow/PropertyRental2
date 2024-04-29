import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../../Universal_Widgets/custom_button.dart';
import '../../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../../Universal_Widgets/service_items.dart';
import '../../../../../../../Universal_Widgets/service_tag.dart';
import '../../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../../../Contact_Us_Page/contact_us_page.dart';

class SellingService extends StatelessWidget {
  const SellingService({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //Package Introduction
            Container(
              height: 1.h*90,
              color: ColorManager.kasmiriBlue,
              padding: EdgeInsets.all(4.sp),
              alignment: Alignment.center,
              child: CustomText(
                fontWeight: FontWeight.bold,
                fontSize: 5.sp,
                fontColor: ColorManager.whiteColor,
                title: "Selling Service",
              ),
            ),

            //Price Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  fontWeight: FontWeight.bold,
                  fontSize: 5.sp,
                  fontColor: Colors.blueGrey,
                  title: "1% + Marketing Costs",
                ),

                CustomText(
                  fontWeight: FontWeight.bold,
                  fontSize: 5.sp,
                  fontColor: Colors.blueGrey,
                  title: "incl. VAT",
                ),
              ],
            ),

            ServiceItems(title: "Whatever your wishes, we tailor make a service to suit you.",),
            ServiceItems(title: "Personal Consultation at Your Home",),
            ServiceItems(title: "Professional Visual Showcase",),
            ServiceItems(title: "Premium Funda Listing",),
            ServiceItems(title: "Strategic Social Media Marketing",),
            ServiceItems(title: "Exclusive VBO Early Release Marketing",),
            ServiceItems(title: "Open House Events",),
            ServiceItems(title: "Staging and Renovation Guidance",),
            ServiceItems(title: "Dedicated Sales Consultants",),
            ServiceItems(title: "Eye-Catching Signage",),
            ServiceItems(title: "Administrative Support",),
            ServiceItems(title: "Transparent Communication",),
            ServiceItems(title: "Competitive Fee",),


            SizedBox(height: 15.h,),
            Center(
              child: CustomButton(
                onTap: (){
                  Get.to(ContactUsPage());
                },
                fontWeight: FontWeight.bold,
                fontSize: 3.sp,
                fontColor: ColorManager.whiteColor,
                buttonColor: Colors.brown,
                buttonHeight: 40.h,
                buttonRadius: 10.r,
                buttonTitle: "Click Here",
                buttonWidth: 20.w,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
