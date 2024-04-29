import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Pages/Contact_Us_Page/contact_us_page.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Utils/All_Static_Texts/all_static_text.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

import '../../../../Page4/Our_Service_Rates_Page/our_service_page.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          fontColor: ColorManager.whiteColor,
          fontSize: 3.sp,
          fontWeight: FontWeight.bold,
          buttonWidth: 40.w,
          buttonTitle: AllStaticText.contactUsTodayButton,
          buttonRadius: 2.r,
          buttonHeight: 40.h,
          buttonColor: ColorManager.greenColor,
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContactUsPage()),
            );
          },
        ),
        CustomButton(
          fontColor: ColorManager.whiteColor,
          fontSize: 3.sp,
          fontWeight: FontWeight.bold,
          buttonWidth: 40.w,
          buttonTitle: AllStaticText.viewOurRatesButton,
          buttonRadius: 2.r,
          buttonHeight: 40.h,
          buttonColor: ColorManager.greenColor,
          onTap: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => OurServiceRatesPage(),),
            );
          },
        ),
      ],
    );
  }
}
