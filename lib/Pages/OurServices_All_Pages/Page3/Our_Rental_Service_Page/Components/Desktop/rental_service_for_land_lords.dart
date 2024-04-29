import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_rental_2/Pages/Contact_Us_Page/contact_us_page.dart';
import 'package:property_rental_2/Pages/OurServices_All_Pages/Page3/Our_Rental_Service_Page/Components/Desktop/rental_service_list_tile.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';

import '../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../Utils/All_Static_Texts/all_static_text.dart';
import '../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../Page4/Our_Service_Rates_Page/our_service_page.dart';

class RentalServiceForLandLordsPoints extends StatelessWidget {
  const RentalServiceForLandLordsPoints({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(
          title: AllStaticText.rentalServiceForLandlords,
          fontSize: 5.sp,
          fontWeight: FontWeight.bold,
          fontColor: ColorManager.greenColor,
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
                    icon: FontAwesomeIcons.personCircleCheck,
                    title: AllStaticText.rentalServiceLandLordsP1Title,
                    titleColor: ColorManager.blackColor,
                    titleFontSize: 4.sp,
                    titleFontWeight: FontWeight.w700,
                    titleLetterSpacing: 2,
                    subtitle: AllStaticText.rentalServiceLandLordsP1subTitle,
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
                    icon: FontAwesomeIcons.binoculars,
                    title: AllStaticText.rentalServiceLandLordsP2Title,
                    titleColor: ColorManager.blackColor,
                    titleFontSize: 4.sp,
                    titleFontWeight: FontWeight.w700,
                    titleLetterSpacing: 2,
                    subtitle: AllStaticText.rentalServiceLandLordsP2subsubTitle,
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
                    icon: FontAwesomeIcons.personRays,
                    title: AllStaticText.rentalServiceLandLordsP3Title,
                    titleColor: ColorManager.blackColor,
                    titleFontSize: 4.sp,
                    titleFontWeight: FontWeight.w700,
                    titleLetterSpacing: 2,
                    subtitle: AllStaticText.rentalServiceLandLordsP3subTitle,
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
          onTap: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => ContactUsPage(),),
            );
          },
          buttonColor: Colors.green.shade400,
          buttonHeight: 40.h,
          buttonRadius: 5.r,
          buttonTitle: AllStaticText.lookingToRentOutYourProperty,
          buttonWidth: 90.w,
          fontWeight: FontWeight.w500,
          fontSize: 3.sp,
          fontColor: ColorManager.whiteColor,
        ),
        SizedBox(height: 10.h,),

        CustomButton(
          onTap: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => OurServiceRatesPage(),),
            );
          },
          buttonColor: Colors.green.shade400,
          buttonHeight: 40.h,
          buttonRadius: 5.r,
          buttonTitle: AllStaticText.viewOurRatesButton,
          buttonWidth: 40.w,
          fontWeight: FontWeight.w500,
          fontSize: 3.sp,
          fontColor: ColorManager.whiteColor,
        ),

      ],
    );
  }
}
