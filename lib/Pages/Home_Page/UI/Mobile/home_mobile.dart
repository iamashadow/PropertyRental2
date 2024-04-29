import 'package:flutter/material.dart';
import 'package:property_rental_2/Pages/Our_Properties_Details_Page_Desktop/Desktop_Components/property_video.dart';

import '../../../../Universal_Widgets/custom_text.dart';
import '../../../../Universal_Widgets/custom_text_form_field.dart';
import '../../Components/Desktop_Component/Our_Properties_HomePage/our_properties_home_page.dart';
import '../../Components/Mobile_Component/Drawer_Components/drawar_components.dart';
import '../../Components/Mobile_Component/HeadBannerMobile/head_banner_mobile.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          title: "PropertyRental",
          fontColor: Colors.blue,
          fontWeight: FontWeight.bold,
          fontSize: 25,
        ),
      ),
      drawer: DrawerComponents(),

      body: Column(
        children: [
          Stack(
            children: [
              HeadBannerMobile(),
              CustomTextFormField(
                labelText: "Search Property Here",
              ),
            ],
          ),

          OurProperties(),
          PropertyVideo(),
        ],
      ),

    );
  }
}
