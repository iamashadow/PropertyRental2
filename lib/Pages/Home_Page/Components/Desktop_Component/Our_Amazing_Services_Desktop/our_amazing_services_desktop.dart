import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_rental_2/Pages/Contact_Us_Page/contact_us_page.dart';
import '../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../Universal_Widgets/our_amazing_service_button_circle.dart';
import '../../../../../Universal_Widgets/our_amazing_service_button_retangle.dart';
import '../../../../LandLord_Sector/Page2/Land_Lord_Properties/land_lord_properties.dart';
import '../../../../Properties_All_Page/Page2/For_Rent_Page/for_rent_page.dart';

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
            InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LandLordProperties()),
                );
              },
              child: OurAmazingServicesButtonCircle(
                width: 100,
                height: 100,
                buttonColor: Colors.green,
                icon: FontAwesomeIcons.house,
                titleColor: Colors.black,
                iconSize: 40,
                iconColor: Colors.white,
                title: "Property proprietor",
              ),
            ),
            SizedBox(width: 1.sw*0.120,),



            //Button : Renting
            InkWell(
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ForRentPage()),
                );
              },
              child: OurAmazingServicesButtonCircle(
                width: 100,
                height: 100,
                buttonColor: Colors.green,
                icon: FontAwesomeIcons.searchengin,
                titleColor: Colors.black,
                iconSize: 40,
                iconColor: Colors.white,
                title: "Renting",
              ),
            ),
            SizedBox(width: 1.sw*0.120,),

          ],
        ),
        SizedBox(height: 1.sh*0.050,),

        //Button : More About Our Services
        InkWell(
          onTap: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => ContactUsPage()),
            );
          },
          child: OurAmazingServiceButtonRetangle(
            height: 1.sh*0.050,
            width: 1.sw*0.2,
            titleColor: Colors.white,
            buttonColor: const Color(0xFF4B5EA3),
            buttonTitle: "More About Our Services",
            titleSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
