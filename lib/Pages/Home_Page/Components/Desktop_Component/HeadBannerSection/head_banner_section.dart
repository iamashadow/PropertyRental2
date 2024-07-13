import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../Universal_Widgets/custom_text_form_field.dart';
import '../../../../../controller/our_propertise_controller.dart';
import '../My_Drawer/my_drawer.dart';
import '../Nav_Bar/nav_bar.dart';

class HeadBannerSection extends StatelessWidget {
   HeadBannerSection({super.key});

  final OurPropertiseController controller = Get.find<OurPropertiseController>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        children: [
          Stack(
            children: [
              //HeadBanner Image
              Container(
                height: 1.sh*0.7,
                width: 1.sw,
                decoration: BoxDecoration(
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: Colors.grey.withOpacity(0.5),
                    //     spreadRadius: 5,
                    //     blurRadius: 7,
                    //     offset: Offset(0, 3), // changes position of shadow
                    //   ),
                    // ],
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
                      fontSize: 5.sp,
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
                    controller: controller.searchController,
                    labelText: "Search Property Here",
                    onfieldSubmit: (value){
controller.getSearchPropertise(value);
                    },
                  ),
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
}
