import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../../Universal_Widgets/custom_button.dart';
import '../../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../../Universal_Widgets/service_items.dart';
import '../../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../../../Contact_Us_Page/contact_us_page.dart';

class RentalSerivicePremimum extends StatelessWidget {
  const RentalSerivicePremimum({super.key});

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
              color: ColorManager.greenColor,
              padding: EdgeInsets.all(4.sp),
              alignment: Alignment.center,
              child: CustomText(
                fontWeight: FontWeight.bold,
                fontSize: 5.sp,
                fontColor: ColorManager.whiteColor,
                title: "Rental Service Premium",
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
                  title: "One of the best in the market.",
                ),
                CustomText(
                  fontWeight: FontWeight.bold,
                  fontSize: 5.sp,
                  fontColor: Colors.blueGrey,
                  title: "€ 1,200",
                ),

                CustomText(
                  fontWeight: FontWeight.bold,
                  fontSize: 5.sp,
                  fontColor: Colors.blueGrey,
                  title: "excl. VAT Minimum",
                ),
              ],
            ),

            ServiceItems(title: "Standard fee = 2/3 of 1 month's rental excl. VAT (minimum of €1200 excl.",),
            ServiceItems(title: "Search Assistance",),
            ServiceItems(title: "Expert advice and guidance",),
            ServiceItems(title: "Viewing coordination",),
            ServiceItems(title: "Personalised guided tours",),
            ServiceItems(title: "Virtual viewings",),
            ServiceItems(title: "Application support",),
            ServiceItems(title: "Rental offer submission",),
            ServiceItems(title: "Lease review",),
            ServiceItems(title: "Incheck Inspection",),
            ServiceItems(title: "Exit inspection support",),


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
