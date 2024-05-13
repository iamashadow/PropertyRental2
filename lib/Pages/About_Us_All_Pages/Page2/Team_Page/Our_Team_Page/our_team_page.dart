import 'package:flutter/material.dart';
import 'package:property_rental_2/Pages/About_Us_All_Pages/Page2/Team_Page/Our_Team_Page/UI/Desktop/our_team_page_desktop.dart';
import 'package:property_rental_2/Pages/About_Us_All_Pages/Page2/Team_Page/Our_Team_Page/UI/Mobile/our_team_page_mobile.dart';
import 'package:property_rental_2/Universal_Widgets/responsive_layout_builder.dart';

class OurTeamPage extends StatelessWidget {
  const OurTeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: OurTeamPageDesktop(),
      mobile: OurTeamPageMobile(),
    );
  }
}
