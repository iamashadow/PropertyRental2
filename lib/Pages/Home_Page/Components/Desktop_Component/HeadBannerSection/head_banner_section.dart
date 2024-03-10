import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../Universal_Widgets/custom_text_form_field.dart';
import '../Nav_Bar/nav_bar.dart';

class HeadBannerSection extends StatelessWidget {
  const HeadBannerSection({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Column(
      children: [
        Stack(
          children: [
            //HeadBanner Image
            Container(
              height: 1.sh*0.8,
              width: 1.sw,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/HeadBanner/headBanner1.png")
                  )
              ),
            ),

            //Nav Bar
            Positioned(
              top: 1.sh*0.040,
              child: NavBar(),
            ),

            //Two Line Text
            Positioned(
              right: 1.sw*0.4,
              top: 1.sh*0.2,
              child: Column(
                children: [
                  CustomText(
                    title: "Your Expat Property Brokers",
                    fontColor: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                  CustomText(
                    title: "Looking for Your Ideal Property?",
                    fontColor: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontSize: 15,
                  ),
                ],
              ),
            ),

            //Search Bar
            Positioned(
              top: 1.sh*0.3,
                right: 1.sw*0.3,
                child: SizedBox(
                  height: 1.sh*0.050,
                  width: 1.sw*0.4,
                  child: CustomTextFormField(
                    labelText: "Search Property Here",
                  ),
                ),
            ),


          ],
        ),
      ],
    );
  }
}
