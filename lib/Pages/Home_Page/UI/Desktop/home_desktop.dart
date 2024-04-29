import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../Components/Desktop_Component/BuyOrSell_Desktop/but_or_sell_desktop.dart';
import '../../Components/Desktop_Component/Clients_Testimonial/cllients_testimonial.dart';
import '../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../Components/Desktop_Component/Nav_Bar/nav_bar.dart';
import '../../Components/Desktop_Component/Our_Agents/our_agents_desktop.dart';
import '../../Components/Desktop_Component/Our_Amazing_Services_Desktop/our_amazing_services_desktop.dart';
import '../../Components/Desktop_Component/Our_Partners_Desktop/out_partners_desktop.dart';
import '../../Components/Desktop_Component/Our_Properties_HomePage/our_properties_home_page.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({super.key});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF7F7F7),
      // backgroundColor: Colors.white,
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
        
            Column(
              children: [
                //OurProperties
                Container(
                  width: 1.sw,
                  height: 1.sh*1.5,
                  // color: Colors.green,
                  margin: EdgeInsets.only(left: 20.w, right: 20.w),
                  child: OurProperties(),
                ),
                SizedBox(height: 1.sh*0.1,),


                //Buy or Sell properties
                Container(
                  height: 1.sh*0.5,
                  width: 1.sw,
                  child: BuyOrSellDesktop(),
                ),


                //OurAmazing Services
                Container(
                  width: 1.sw,
                  height: 1.sh*0.6,
                  color: Colors.white,
                  child: OurAmazingServicesDesktop(),
                ),


                //Our Agents
                Container(
                  width: 1.sw*0.7,
                  height: 1.sh*1.8,
                  color: const Color(0xFFF7F7F7),
                  child: OurAgentsDesktop(),
                ),

                //Clients Testimonials
                Container(
                  width: 1.sw,
                  height: 1.sh*0.5,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: ClientsTestimonialDesktop(),
                ),


                //Our Partners
                Container(
                  width: 1.sw,
                  height: 1.sh*0.9,
                  margin: EdgeInsets.all(70),
                  child: OurPartnersDesktop(),
                ),

                //WebFooter Area
                Container(
                  width: 1.sw,
                  height: 1.sh*0.6,
                  color: const Color(0xFF303030),
                  child: FooterAreaDesktop(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
