import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

import '../../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../../Utils/All_Static_Texts/all_static_text.dart';
import '../../../../../../Contact_Us_Page/contact_us_page.dart';
import '../../../../../Page3/Our_Rental_Service_Page/Components/Desktop/rental_service_list_tile.dart';
import '../../../../../Page4/Our_Service_Rates_Page/our_service_page.dart';

class OurBuyingServiceMiddleContent extends StatelessWidget {
  const OurBuyingServiceMiddleContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50.w, right: 50.w, bottom: 50.h),
      padding: EdgeInsets.all(10.sp),
      color: ColorManager.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          CustomText(
            title: AllStaticText.OurBuyingServicePageTitle,
            fontSize: 5.sp,
            fontWeight: FontWeight.bold,
            fontColor: ColorManager.greenColor,
          ),
          SizedBox(height: 30.h,),

          CustomText(
            title: AllStaticText.OurBuyingServicePageIntro1,
            fontSize: 3.sp,
            fontColor: ColorManager.blackColor,
          ),
          SizedBox(height: 30.h,),

          CustomText(
            title: AllStaticText.OurBuyingServicePageIntro2,
            fontSize: 3.sp,
            fontColor: ColorManager.blackColor,
          ),
          SizedBox(height: 30.h,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: RentalServiceListTile(
                      icon: Icons.people,
                      title: AllStaticText.OurBuyingServicePageR1C1Title,
                      titleColor: ColorManager.blackColor,
                      titleFontSize: 4.sp,
                      titleFontWeight: FontWeight.w700,
                      titleLetterSpacing: 2,
                      subtitle: AllStaticText.OurBuyingServicePageR1C1Description,
                      subtitleColor: ColorManager.blackColor,
                      subtitleFontSize: 3.sp,
                      titletextAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20.h),
                    child: RentalServiceListTile(
                      icon: FontAwesomeIcons.star,
                      title: AllStaticText.OurBuyingServicePageR1C2Title,
                      titleColor: ColorManager.blackColor,
                      titleFontSize: 4.sp,
                      titleFontWeight: FontWeight.w700,
                      titleLetterSpacing: 2,
                      subtitle: AllStaticText.OurBuyingServicePageR1C2Description,
                      subtitleColor: ColorManager.blackColor,
                      subtitleFontSize: 3.sp,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: RentalServiceListTile(
                      icon: FontAwesomeIcons.arrowPointer,
                      title: AllStaticText.OurBuyingServicePageR1C3Title,
                      titleColor: ColorManager.blackColor,
                      titleFontSize: 4.sp,
                      titleFontWeight: FontWeight.w700,
                      titleLetterSpacing: 2,
                      subtitle: AllStaticText.OurBuyingServicePageR1C3Description,
                      subtitleColor: ColorManager.blackColor,
                      subtitleFontSize: 3.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: RentalServiceListTile(
                      icon: FontAwesomeIcons.moneyBill1,
                      title: AllStaticText.OurBuyingServicePageR2C1Title,
                      titleColor: ColorManager.blackColor,
                      titleFontSize: 4.sp,
                      titleFontWeight: FontWeight.w700,
                      titleLetterSpacing: 2,
                      subtitle: AllStaticText.OurBuyingServicePageR2C1Description,
                      subtitleColor: ColorManager.blackColor,
                      subtitleFontSize: 3.sp,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: RentalServiceListTile(
                      icon: FontAwesomeIcons.handshake,
                      title: AllStaticText.OurBuyingServicePageR2C2Title,
                      titleColor: ColorManager.blackColor,
                      titleFontSize: 4.sp,
                      titleFontWeight: FontWeight.w700,
                      titleLetterSpacing: 2,
                      subtitle: AllStaticText.OurBuyingServicePageR2C2Description,
                      subtitleColor: ColorManager.blackColor,
                      subtitleFontSize: 3.sp,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: RentalServiceListTile(
                      icon: FontAwesomeIcons.searchengin,
                      title: AllStaticText.OurBuyingServicePageR2C3Title,
                      titleColor: ColorManager.blackColor,
                      titleFontSize: 4.sp,
                      titleFontWeight: FontWeight.w700,
                      titleLetterSpacing: 2,
                      subtitle: AllStaticText.OurBuyingServicePageR2C3Description,
                      subtitleColor: ColorManager.blackColor,
                      subtitleFontSize: 3.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50.h,),

          CustomButton(
            fontColor: ColorManager.whiteColor,
            fontSize: 3.sp,
            fontWeight: FontWeight.bold,
            buttonWidth: 40.w,
            buttonTitle: AllStaticText.buyingServiceContactUsButton,
            buttonRadius: 2.r,
            buttonHeight: 30.h,
            buttonColor: ColorManager.greenColor.withOpacity(0.7),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContactUsPage()),
              );
            },
          ),
          SizedBox(height: 70.h,),

          CustomText(
            title: AllStaticText.buyingServicePackage,
            fontSize: 5.sp,
            fontWeight: FontWeight.bold,
            fontColor: ColorManager.greenColor,
          ),
          SizedBox(height: 70.h,),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                title: AllStaticText.buyingServiceSupportOnlyPackageTitle,
                fontSize: 3.sp,
                fontWeight: FontWeight.bold,
                fontColor: ColorManager.blackColor,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10.h,),
              CustomText(
                title: AllStaticText.buyingServiceSupportOnlyPackageDescription,
                fontSize: 3.sp,
                fontColor: ColorManager.blackColor,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 20.h,),


              CustomText(
                title: AllStaticText.buyingServiceAssistedNegotiationClosingPackageTitle,
                fontSize: 3.sp,
                fontWeight: FontWeight.bold,
                fontColor: ColorManager.blackColor,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10.h,),
              CustomText(
                title: AllStaticText.buyingServiceAssistedNegotiationClosingPackageDescription,
                fontSize: 3.sp,
                fontColor: ColorManager.blackColor,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 20.h,),

              CustomText(
                title: AllStaticText.buyingServiceFullServicePackagePackageTitle,
                fontSize: 3.sp,
                fontWeight: FontWeight.bold,
                fontColor: ColorManager.blackColor,
                textAlign: TextAlign.start,
              ),
              SizedBox(height: 10.h,),
              CustomText(
                title: AllStaticText.buyingServiceFullServicePackagePackageDescription,
                fontSize: 3.sp,
                fontColor: ColorManager.blackColor,
                textAlign: TextAlign.start,
              ),

            ],
          ),
          SizedBox(height: 20.h,),

          CustomButton(
            fontColor: ColorManager.whiteColor,
            fontSize: 3.sp,
            fontWeight: FontWeight.bold,
            buttonWidth: 30.w,
            buttonTitle: AllStaticText.buyingServiceViewOurRatesButton,
            buttonRadius: 2.r,
            buttonHeight: 30.h,
            buttonColor: ColorManager.greenColor.withOpacity(0.7),
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => OurServiceRatesPage()),
              );
            },
          ),




        ],
      ),
    );
  }
}
