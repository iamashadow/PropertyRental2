import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Utils/All_Static_Texts/all_static_text.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

import '../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../Components/Desktop_Components/Buying_Service/buying_negotiation_packge.dart';
import '../../Components/Desktop_Components/Buying_Service/buying_service_full_package.dart';
import '../../Components/Desktop_Components/Buying_Service/buying_service_support_only.dart';
import '../../Components/Desktop_Components/Buying_Service/rental_service_for_landlords.dart';
import '../../Components/Desktop_Components/Buying_Service/rental_service_permimum.dart';
import '../../Components/Desktop_Components/Buying_Service/selling_service_full_package.dart';
import '../../Components/Desktop_Components/Buying_Service/single_service_only.dart';

class OurServiceDesktopPage extends StatelessWidget {
  const OurServiceDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.webBackgroundColor,

      body: SingleChildScrollView(
        child: Column(
          children: [
            //HeadBanner
            Container(
              height: 1.sh*0.8,
              width: 1.sw,
              child: HeadBannerSection(),
            ),
            SizedBox(height: 1.sh*0.1,),


            Container(
              color: Colors.white,
              margin: EdgeInsets.only(left: 50.w, right: 50.w, bottom: 50.h),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  children: [

                    SizedBox(height: 50.h,),
                    CustomText(
                      fontWeight: FontWeight.bold,
                      fontSize: 5.sp,
                      fontColor: ColorManager.greenColor,
                      title: "Our Service Rates",
                    ),
                    SizedBox(height: 50.h,),

                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              BuyingServiceFullPackage(),
                              BuyingNegotiation(),
                              BuyingServiceOnly(),
                              RentalServiceForLandLords(),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SellingService(),
                            SizedBox(height: 20.h,),
                            RentalSerivicePremimum(),
                          ],
                        ),
                        ),
                      ],
                    ),
                    const SingleSeriviceOnly(),

                    SizedBox(height: 25.h,),
                    Divider(
                      thickness: 1.sp,
                      color: Colors.indigoAccent,
                    ),
                    SizedBox(height: 25.h,),

                    CustomText(
                      fontWeight: FontWeight.bold,
                      fontSize: 5.sp,
                      fontColor: ColorManager.greenColor,
                      title: AllStaticText.recapRates,
                    ),
                    SizedBox(height: 15.h,),
                    CustomText(
                      fontWeight: FontWeight.bold,
                      fontSize: 3.sp,
                      fontColor: Colors.black,
                      title: AllStaticText.title1,
                    ),
                    SizedBox(height: 15.h,),
                    CustomText(
                      fontWeight: FontWeight.bold,
                      fontSize: 3.sp,
                      fontColor: Colors.black,
                      title: AllStaticText.title2,
                    ),
                    SizedBox(height: 15.h,),


                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          fontWeight: FontWeight.bold,
                          fontSize: 4.sp,
                          fontColor: Colors.black,
                          title: AllStaticText.BuyingServicesTitle,
                        ),
                        SizedBox(height: 10.h,),
                        CustomText(
                          fontSize: 3.sp,
                          fontColor: Colors.black,
                          title: AllStaticText.BuyingServicesDetails,
                        ),
                        SizedBox(height: 25.h,),

                        CustomText(
                          fontWeight: FontWeight.bold,
                          fontSize: 4.sp,
                          fontColor: Colors.black,
                          title: AllStaticText.SellingServiceTitle,
                        ),
                        SizedBox(height: 10.h,),
                        CustomText(
                          fontSize: 3.sp,
                          fontColor: Colors.black,
                          title: AllStaticText.SellingServiceDetails,
                        ),
                        SizedBox(height: 25.h,),

                        CustomText(
                          fontWeight: FontWeight.bold,
                          fontSize: 4.sp,
                          fontColor: Colors.black,
                          title: AllStaticText.RentalServicesTitle,
                        ),
                        SizedBox(height: 10.h,),
                        CustomText(
                          fontSize: 3.sp,
                          fontColor: Colors.black,
                          title: AllStaticText.RentalServicesDetails,
                        ),
                        SizedBox(height: 25.h,),

                        CustomText(
                          fontWeight: FontWeight.bold,
                          fontSize: 4.sp,
                          fontColor: Colors.black,
                          title: AllStaticText.RentalServicesForLandLordsTitle,
                        ),
                        SizedBox(height: 10.h,),
                        CustomText(
                          fontSize: 3.sp,
                          fontColor: Colors.black,
                          title: AllStaticText.RentalServicesForLandLordsDetails,
                        ),
                        SizedBox(height: 25.h,),

                        CustomText(
                          fontWeight: FontWeight.bold,
                          fontSize: 4.sp,
                          fontColor: Colors.black,
                          title: AllStaticText.SingleServiceTitle,
                        ),
                        SizedBox(height: 10.h,),
                        CustomText(
                          fontSize: 3.sp,
                          fontColor: Colors.black,
                          title: AllStaticText.SingleServiceDetails,
                        ),
                        SizedBox(height: 25.h,),
                      ],
                    )


                  ],
                ),
              ),
            ),
            SizedBox(height: 35.h,),

            

            //WebFooter Area
            Container(
              width: 1.sw,
              height: 1.sh*0.6,
              color: const Color(0xFF303030),
              child: FooterAreaDesktop(),
            ),

          ],
        ),
      ),
    );
  }
}
