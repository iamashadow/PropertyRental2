import 'package:flutter/material.dart';
import 'package:property_rental_2/Pages/About_Us_All_Pages/Page2/Team_Details_Page/Our_Team_Details_Page/UI/Desktop/Our_Team_Details_Page_Desktop.dart';
import 'package:property_rental_2/Pages/About_Us_All_Pages/Page2/Team_Details_Page/Our_Team_Details_Page/UI/Mobile/our_team_details_page_mobile.dart';
import 'package:property_rental_2/Universal_Widgets/responsive_layout_builder.dart';

class OurTeamDetailsPage extends StatelessWidget {

  String? profileImage;
  String? position;
  String? bio;
  String? email;
  String? mobileNumber;
  String? name;

  OurTeamDetailsPage({super.key,

    this.profileImage,
    this.mobileNumber,
    this.email,
    this.bio,
    this.name,
    this.position,

  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktop: OurTeamDetailsPageDesktop(
        profileImage: profileImage,
        mobileNumber: mobileNumber,
        email: email,
        bio: bio,
        name: name,
        position: position,
      ),
      mobile: OurTeamDetailsPageMobile(),
    );
  }
}
