import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../Universal_Widgets/our_amazing_service_button_circle.dart';
import '../../../../../Universal_Widgets/our_amazing_service_button_retangle.dart';

class OurAmazingServicesDesktop extends StatelessWidget {
  const OurAmazingServicesDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Text : Our Amazing
        CustomText(
          title: "Our Amazing",
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontColor: Colors.deepPurpleAccent,
        ),

        //Text : Service Offering
        CustomText(
          title: "Service Offering",
          fontSize: 30,
          fontWeight: FontWeight.bold,
          fontColor: Colors.black,
          letterSpacing: 1,
        ),
        SizedBox(height: 1.sh*0.050,),

        //Button : Buy, Sell, Renting Button
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Button : Buying
            SizedBox(width: 1.sw*0.120,),
            OurAmazingServicesButtonCircle(
              width: 100,
              height: 100,
              buttonColor: Colors.green,
              icon: FontAwesomeIcons.house,
              titleColor: Colors.black,
              iconSize: 40,
              iconColor: Colors.white,
              title: "Buying",
            ),
            SizedBox(width: 1.sw*0.120,),

            //Button : Selling
            OurAmazingServicesButtonCircle(
              width: 100,
              height: 100,
              buttonColor: Colors.green,
              icon: FontAwesomeIcons.key,
              titleColor: Colors.black,
              iconSize: 40,
              iconColor: Colors.white,
              title: "Selling",
            ),
            SizedBox(width: 1.sw*0.120,),

            //Button : Renting
            OurAmazingServicesButtonCircle(
              width: 100,
              height: 100,
              buttonColor: Colors.green,
              icon: FontAwesomeIcons.searchengin,
              titleColor: Colors.black,
              iconSize: 40,
              iconColor: Colors.white,
              title: "Renting",
            ),
            SizedBox(width: 1.sw*0.120,),

          ],
        ),
        SizedBox(height: 1.sh*0.050,),

        //Button : More About Our Services
        OurAmazingServiceButtonRetangle(
          height: 1.sh*0.050,
          width: 1.sw*0.2,
          titleColor: Colors.white,
          buttonColor: const Color(0xFF4B5EA3),
          buttonTitle: "More About Our Services",
          titleSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
